local map={}

function map:init(path,sw,sh)
    local m=require(path)
    for b,tileset in ipairs(m.tilesets) do
        for c,tile in ipairs(tileset.tiles) do
            if tile.animation then
                print(tile.id)
                tile.time=0
                tile.frame=1
            end
        end
    end
    m.draw=function(mself,dx,dy)
        local x,y=dx or 0,dy or 0
        for k,layer in ipairs(mself.layers) do
            if layer.visible then
                local ox=math.floor(((dx or 0)+(layer.offsetx))*layer.parallaxx)
                local oy=math.floor(((dy or 0)+(layer.offsety))*layer.parallaxy)
                if layer.type=="tilelayer" then
                    local index=1
                    
                    for y = 0,layer.height-1 do
                        for x = 0,layer.width-1 do
                            local tileId = layer.data[index]
                            if tileId ~= 0 then
                                for b,tileset in ipairs(m.tilesets) do
                                    for c,tile in ipairs(tileset.tiles) do
                                        if tile.animation and tile.id==tileId-1 then
                                            --print(tile.id)
                                            --print(tileId)
                                            tileId=tile.animation[tile.frame].tileid+1
                                            --tileId=1
                                            --print(tileId)
                                        end
                                    end
                                end
                                gfx.spr(tileId, x*mself.tilewidth+ox, y*mself.tileheight+oy)
                            end
                            index=index+1
                        end
                    end
                elseif layer.type=="objectgroup" then
                    for j, object in ipairs(layer.objects) do
                        local x,y=math.floor(object.x),math.floor(object.y)
                        local color=object.properties["color"] or 1
                        if object.shape=="rectangle" then
                            if object.gid then
                                local gx=(object.gid-1)*usagi.SPRITE_SIZE
                                local gy=((object.gid-1)/(mself.tilesets[1].imagewidth/usagi.SPRITE_SIZE))*usagi.SPRITE_SIZE
                                gfx.sspr_ex(gx,gy,usagi.SPRITE_SIZE,usagi.SPRITE_SIZE,x+ox,y+oy-object.height,object.width,object.height,false,false,object.rotation,0,1)
                            else
                                if object.properties["fill"] then
                                    gfx.rect_fill(x+ox,y+oy,object.width,object.height,color)
                                else
                                    gfx.rect(x+ox,y+oy,object.width,object.height,color)
                                end
                            end
                        elseif object.shape=="point" then
                            gfx.px(x+ox,y+oy,color)
                        elseif object.shape=="ellipse" then
                            local r=object.width/2
                            if object.properties["fill"] then
                                gfx.circ_fill(object.x+r+ox,object.y+r+oy,r,color)
                            else
                                gfx.circ(object.x+r+ox,object.y+r+oy,r,color)
                            end
                        end
                    end
                end
            end
        end
    end

    m.get=function(mself, layername, x, y)
        for k, layer in ipairs(mself.layers) do
            if layer.name == layername and layer.type=="tilelayer" then
                local index = y * layer.width + x + 1
                return layer.data[index]
            end
        end
        return nil
    end

    m.bumpInit=function(mself,world)
        mself.tileCols={}
        for a,layer in pairs(mself.layers) do
            if layer.type=="tilelayer" then
                local index=1
                for y = 0,layer.height-1 do
                    for x = 0,layer.width-1 do
                        for b,tileset in ipairs(mself.tilesets) do
                            for c,tile in ipairs(tileset.tiles) do
                                if mself:get(layer.name,x,y)==tile.id+1 and tile.properties and tile.properties.collidable then
                                    table.insert(mself.tileCols,{id=tile.id,properties=tile.properties or {}})
                                    world:add(mself.tileCols[#mself.tileCols],x*mself.tilewidth,y*mself.tileheight,mself.tilewidth,mself.tileheight)
                                end
                                index=index+1
                            end
                        end
                    end
                end
            elseif layer.type=="objectgroup" then
                for j, object in ipairs(layer.objects) do
                    local x,y=object.x,object.y
                    if object.shape=="rectangle" and object.properties["collidable"] then
                        table.insert(mself.tileCols,{id=object.id,properties=object.properties})
                        world:add(mself.tileCols[#mself.tileCols],x,y-object.height,object.width,object.height)
                    end
                end
            end
        end
    end

    m.update=function(mself,dt)
        for b,tileset in ipairs(m.tilesets) do
            for c,tile in ipairs(tileset.tiles) do
                if tile.animation and tile.time then
                    tile.time=tile.time+dt*1000
                    print(tile.animation[tile.frame].duration)
                    if tile.time>=tile.animation[tile.frame].duration then
                        print("tick")
                        tile.frame=tile.frame+1
                        tile.time=0
                        if tile.frame>#tile.animation then
                            tile.frame=1
                        end
                    end
                end
            end
        end
    end
    
    return m
end

return map