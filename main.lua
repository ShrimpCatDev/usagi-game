function _config()
  return { name = "Game", game_id = "com.usagiengine.YOURGAMENAME", sprite_size=8,game_width=144,game_height=128 }
end

function _init()
  -- Live reload preserves globals across saved edits but resets locals.
  -- Stash mutable game state in a capitalized global like `State` so it
  -- survives reloads; F5 calls _init again to reset.
  State = {}

  local bump=require("lib.bump")
  World=bump.newWorld(24)
  Map=require("map")
  Anim=require("anim")

  Player={x=0,y=0,vx=0,vy=0,ax=0,sx=120,axSpd=512,fx=480,anim=Anim.new({192,193,194},200,"pingpong")}
  World:add(Player,Player.x,Player.y,8,8)

  Camera={x=0,y=0,spd=256}

  Test=Map:init("maps.test")
  --Test:set("terrain",0,0,1)
  Test:bumpInit(World)
  time=0
  Gravity=400
end

function _update(dt)  
  time=time+dt
  Player.vy+=Gravity*dt
  Player.anim:update(dt)

  --Player.y+=Player.vy*dt
  Player.vx=0
  if input.held(input.RIGHT) and not input.held(input.LEFT) then
      Player.ax=util.approach(Player.ax,Player.sx,Player.axSpd*dt)
  elseif input.held(input.LEFT) and not input.held(input.RIGHT) then
      Player.ax=util.approach(Player.ax,-Player.sx,Player.axSpd*dt)
  else
      Player.ax=util.approach(Player.ax,0,Player.fx*dt)
  end
  Player.vx+=Player.ax
  local ax,ay,col,len=World:move(Player,Player.x+Player.vx*dt,Player.y+Player.vy*dt)
  Player.x,Player.y=ax,ay
  for i=1,len do
    local c=col[i]
    if col[i].normal.y==-1 then
      Player.vy=0
      if input.pressed(input.BTN1) then
        Player.vy=-180
      end
    end
    if col[i].normal.x~=0 then
        Player.ax=0
        Player.vx=0
    end
    if col[i].normal.y==1 then
      Player.vy=0
    end
  end
  Test:update(dt)
  Camera.x=util.approach(Camera.x,math.floor((Player.x+4)/usagi.GAME_W)*usagi.GAME_W,Camera.spd*dt)
  --if Test:get("Tile Layer 1",math.floor(Player.x/12),math.floor((Player.y+1)/12))==2 then
    --Player.vy=0
  --end
  --print(Test:get("Tile Layer 1",math.floor(Player.x/12),math.floor((Player.y+1)/12)))
end

function _draw(dt)
  gfx.clear(7)
  local dx,dy=math.floor(-Camera.x),math.floor(-Camera.y)--math.floor(math.cos(time)*16),math.floor(math.sin(time)*16)
  Test:draw(dx,dy)
  
  print(Player.anim:get())
  gfx.spr(Player.anim:get(),Player.x+dx,Player.y+dy)
  Test:drawlayer("deco",dx,dy)
end
