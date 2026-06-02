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

  Player={x=0,y=0,vx=0,vy=0}
  World:add(Player,Player.x,Player.y,8,8)

  Test=Map:init("maps.test")
  Test:bumpInit(World)
  time=0
  
  --local temp={}
  --World:add(temp,0,50,64,64)
  

  Gravity=400
end

function _update(dt)
  
  time=time+dt
  Player.vy+=Gravity*dt

  --Player.y+=Player.vy*dt
  Player.vx=0
  if input.held(input.RIGHT) then
      Player.vx=120
  end
  if input.held(input.LEFT) then
      Player.vx=-120
  end
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
    if col[i].normal.y==1 then
      Player.vy=0
    end
  end
  Test:update(dt)
  --if Test:get("Tile Layer 1",math.floor(Player.x/12),math.floor((Player.y+1)/12))==2 then
    --Player.vy=0
  --end
  --print(Test:get("Tile Layer 1",math.floor(Player.x/12),math.floor((Player.y+1)/12)))
end

function _draw(dt)
  gfx.clear(7)
  local dx,dy=-Player.x+usagi.GAME_W/2-4,0--math.floor(math.cos(time)*16),math.floor(math.sin(time)*16)
  Test:draw(dx,dy)
  gfx.spr(1,Player.x+dx,Player.y+dy)
end
