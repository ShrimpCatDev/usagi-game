function _config()
  return { name = "Game", game_id = "com.usagiengine.YOURGAMENAME", sprite_size=12 }
end

function _init()
  -- Live reload preserves globals across saved edits but resets locals.
  -- Stash mutable game state in a capitalized global like `State` so it
  -- survives reloads; F5 calls _init again to reset.
  State = {}
  Player={x=0,y=0,vx=0,vy=0}
  Gravity=400
end

function _update(dt)
  Player.vy+=Gravity*dt
  Player.y+=Player.vy*dt
end

function _draw(dt)
  gfx.clear(gfx.COLOR_BLACK)
  gfx.text("Hello, Usagi!", 10, 10, gfx.COLOR_WHITE)
  gfx.spr(1,Player.x,Player.y)
end
