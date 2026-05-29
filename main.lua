function _config()
  return { name = "Game", game_id = "com.usagiengine.YOURGAMENAME", sprite_size=12 }
end

function _init()
  -- Live reload preserves globals across saved edits but resets locals.
  -- Stash mutable game state in a capitalized global like `State` so it
  -- survives reloads; F5 calls _init again to reset.
  State = {}
  local bump=require("lib.bump")
  World=bump.newWorld(24)
  Map=require("map")
  Test=Map:init("maps.test")
  Player={x=0,y=0,vx=0,vy=0}
  World:add(Player,Player.x,Player.y,12,12)

  Gravity=400
end

function _update(dt)
  Player.vy+=Gravity*dt
  Player.y+=Player.vy*dt
  --if Test:get("Tile Layer 1",math.floor(Player.x/12),math.floor((Player.y+1)/12))==2 then
    --Player.vy=0
  --end
  print(Test:get("Tile Layer 1",math.floor(Player.x/12),math.floor((Player.y+1)/12)))
end

function _draw(dt)
  gfx.clear(gfx.COLOR_BLUE)
  gfx.text("Hello, Usagi!", 10, 10, gfx.COLOR_WHITE)
  Test:draw()
  gfx.spr(1,Player.x,Player.y)
end
