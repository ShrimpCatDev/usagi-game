local anim={}

function anim.new(frames,duration,type)
    local a={
        frames=frames,
        duration=duration,
        type=type,
        frame=1,
        time=0,
        dir=1
    }
    if type=="loop" then
        a.update=function(self,dt)
            self.time=self.time+dt*1000
            if self.time>=duration then
                self.frame=self.frame+1
                self.time=0
                if self.frame>#self.frames then
                    self.frame=1
                end
            end
        end
    elseif type=="random" then
        a.update=function(self,dt)
            self.time=self.time+dt*1000
            if self.time>=duration then
                local p=self.frame
                while self.frame==p do
                    self.frame=math.random(#self.frames)
                end
                self.time=0
            end
        end
    elseif type=="noloop" then
        a.update=function(self,dt)
            self.time=self.time+dt*1000
            if self.time>=duration and self.frame<#self.frames then
                self.frame=self.frame+1
                self.time=0
            end
        end
    elseif type=="pingpong" then
        a.update=function(self,dt)
            self.time=self.time+dt*1000
            if self.time>=duration then
                self.frame=self.frame+self.dir
                self.time=0
                if self.frame>=#self.frames then
                    self.dir=-1
                elseif self.frame<=1 then
                    self.dir=1
                end
            end
        end
    end
    a.reset=function(self)
        self.time=0
        self.frame=0
    end
    a.get=function(self)
        return self.frames[self.frame]+1
    end
    return a
end

return anim