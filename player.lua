local player={}

function player:init()
    self.x=0
    self.y=0
    self.w=8
    self.h=8
    self.vx=0
    self.vy=0
    self.ax=0
    self.sx=100
    self.axSpd=512
    self.fx=480
    self.anim={
        run=Anim.new({193,194,195},100,"loop"),
        idle=Anim.new({192,194,192,194,192,194,192,194,192,194,192,194,224,192,194,192,194,192,224,194,224},400,"loop"),
        sleep=Anim.new({225,226},500,"loop"),
        jump=Anim.new({194,228,227},200,"noloop")
    }
    self.dir=false
    self.anim.current=self.anim.idle
    self.sleeping=false
    self.sleeptimer=0
    self.jumping=false
    World:add(self,self.x,self.y,8,8)

    self.filter=function(item,other)
        if other.properties then
            if other.properties.jumpthru then
                if item.vy>=0 and other.y>=item.y+item.h then
                    return "slide"
                end
                return nil
            end
            return "slide"
        end
        return "cross"
    end
end

function player:update(dt)
    local dtp=math.min(dt, 0.033)
    self.vy+=Gravity*dtp
    self.anim.current:update(dt)

    --self.y+=self.vy*dt
    self.vx=0
    local held_right=input.held(input.RIGHT)
    local held_left=input.held(input.LEFT)

    if held_right and not held_left then
        self.dir=false
        self.ax=util.approach(self.ax,self.sx,self.axSpd*dt)
    elseif held_left and not held_right then
        self.dir=true
        self.ax=util.approach(self.ax,-self.sx,self.axSpd*dt)
    else
        self.ax=util.approach(self.ax,0,self.fx*dt)
        self.sleeptimer+=dt*1000
        if self.sleeptimer>5000 and not self.sleeping then
            self.sleeping=true
            self.anim.current=self.anim.sleep
            self.anim.current:reset()
        end
    end

    local pressed_right=input.pressed(input.RIGHT)
    local pressed_left=input.pressed(input.LEFT)
    local pressed=pressed_right or pressed_left

    local released_right=input.released(input.RIGHT)
    local released_left=input.released(input.LEFT)
    local released=released_right or released_left

    if pressed_right or pressed_left and not released then
        self.anim.current=self.anim.run
        self.anim.current:reset()
        self.sleeping=false
        self.sleeptimer=0
    elseif (released_right and not held_left) or (released_left and not held_right) and not pressed then
        self.anim.current=self.anim.idle
        self.anim.current:reset()
    end

    self.vx+=self.ax
    local ax,ay,col,len=World:move(self,self.x+self.vx*dt,self.y+self.vy*dtp,self.filter)
    self.x,self.y=ax,ay
    for i=1,len do
        local c=col[i]
        if col[i].normal.y==-1 then
            self.jumping=false
            self.vy=0
            if input.pressed(input.BTN1) then
                if self.sleeping then
                    self.sleeptimer=0
                    self.sleeping=false
                    self.anim.current=self.anim.idle
                    self.anim.current:reset()
                end
                self.vy=-168
                self.jumping=true
                
                --self.anim.current=self.anim.jump
                --self.anim.current:reset()
            else

            end
        end
        if col[i].normal.x~=0 then
            self.ax=0
            self.vx=0
        end
        if col[i].normal.y==1 then
            self.vy=0
        end
    end

    if not input.held(input.BTN1) and self.jumping and self.vy<0 then
        self.vy=util.approach(self.vy,0,512*dtp)
    end
end

function player:draw(dx,dy)
    gfx.spr_ex(self.anim.current:get(),self.x+dx,self.y+dy,self.dir,false,0,0,1)
end

return player