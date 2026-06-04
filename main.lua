function _config()
  return { name = "Game", game_id = "com.usagiengine.YOURGAMENAME", sprite_size=8,game_width=144,game_height=128 }
end

function _init()
  music.loop("music/song.mp3")
  -- Live reload preserves globals across saved edits but resets locals.
  -- Stash mutable game state in a capitalized global like `State` so it
  -- survives reloads; F5 calls _init again to reset.
  State = {}

  local bump=require("lib.bump")
  World=bump.newWorld(24)
  Map=require("map")
  Anim=require("anim")

  Player=require("player")
  Player:init()

  Camera={x=0,y=0,spd=256}

  Test=Map:init("maps.test")
  --Test:set("terrain",0,0,1)
  Test:bumpInit(World)
  time=0
  Gravity=400
  music.loop("song")
end

function _update(dt)  
  time=time+dt
  Test:update(dt)
  Camera.x=util.approach(Camera.x,math.floor((Player.x+4)/usagi.GAME_W)*usagi.GAME_W,Camera.spd*dt)
  Camera.y=util.approach(Camera.y,math.floor((Player.y+4)/usagi.GAME_H)*usagi.GAME_H,Camera.spd*dt)
  Player:update(dt)
end

function _draw(dt)
  gfx.clear(7)
  local dx,dy=math.floor(-Camera.x),math.floor(-Camera.y)
  Test:draw(dx,dy)
  Player:draw(dx,dy)
  
  Test:drawlayer("deco",dx,dy)
end
