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

  Test=Map:init("maps.test")
  --Test:getlayer("entity").visible=false
  --Test:set("terrain",0,0,1)
  Test:bumpInit(World)
  Camera={x=0,y=0,spd=256,objs=Test:getlayer("camera bounds")}
  Test:getlayer("camera bounds").visible=false

  Player=require("player")
  Player:init(Test)

  Time=0
  Gravity=400
  music.loop("song")
end

local function pr(px,py,rx,ry,rw,rh)
    return px>=rx and px<=(rx+rw) and py>=ry and py<=(ry+rh)
end

function _update(dt)  
  Time=Time+dt
  Test:update(dt)
  Player:update(dt)
  local tx=math.floor(Player.x)+4-(usagi.GAME_W/2)
  local ty=math.floor(Player.y)+4-(usagi.GAME_H/2)
  
  Camera.x=Player.x--util.approach(Camera.x,math.floor((Player.x+4)/usagi.GAME_W)*usagi.GAME_W,Camera.spd*dt)
  Camera.y=Player.y--util.approach(Camera.y,math.floor((Player.y+4)/usagi.GAME_H)*usagi.GAME_H,Camera.spd*dt)
  for k,object in ipairs(Camera.objs.objects) do
    if pr(Player.x+4,Player.y+4,object.x,object.y,object.width,object.height) then
      Camera.x=util.clamp(tx,object.x,object.x+object.width-usagi.GAME_W)
      Camera.y=util.clamp(ty,object.y,object.y+object.height-usagi.GAME_H)
    end
  end
  
end

function _draw(dt)
  gfx.clear(7)
  local dx,dy=math.floor(-Camera.x),math.floor(-Camera.y)
  Test:draw(dx,dy)
  Player:draw(dx,dy)
  
  Test:drawlayer("deco",dx,dy)
  gfx.text("hi world",1,-1,1)

  gfx.sspr(0,0,8,8,0,0)
end
