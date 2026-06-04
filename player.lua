local player={}

function player:init()
    self.x=0
    self.y=0
    self.vx=0
    self.vy=0
    self.ax=0
    self.sx=120
    self.axSpd=512
    self.fx=480
    self.anim=Anim.new({193,194,195},100,"loop")
    World:add(self,self.x,self.y,8,8)
end

function player:update(dt)
    self.vy+=Gravity*dt
    self.anim:update(dt)

    --self.y+=self.vy*dt
    self.vx=0
    if input.held(input.RIGHT) and not input.held(input.LEFT) then
        self.ax=util.approach(self.ax,self.sx,self.axSpd*dt)
    elseif input.held(input.LEFT) and not input.held(input.RIGHT) then
        self.ax=util.approach(self.ax,-self.sx,self.axSpd*dt)
    else
        self.ax=util.approach(self.ax,0,self.fx*dt)
    end
    self.vx+=self.ax
    local ax,ay,col,len=World:move(self,self.x+self.vx*dt,self.y+self.vy*dt)
    self.x,self.y=ax,ay
    for i=1,len do
        local c=col[i]
        if col[i].normal.y==-1 then
        self.vy=0
        if input.pressed(input.BTN1) then
            self.vy=-180
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
end

function player:draw(dx,dy)
    gfx.spr(self.anim:get(),self.x+dx,self.y+dy)
end

return player