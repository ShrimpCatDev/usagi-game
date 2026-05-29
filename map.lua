local map={}

function map:init(path)
    local m=require(path)
    m.draw=function(mself,dx,dy)
        local x,y=dx or 0,dy or 0
        for k,layer in ipairs(mself.layers) do
            local index=1
            for y = 0,layer.height-1 do
                for x = 0,layer.width-1 do
                    local tileId = layer.data[index]
                    if tileId ~= 0 then
                        gfx.spr(tileId, x*mself.tilewidth, y*mself.tileheight)
                    end
                    index=index+1
                end
            end
        end
    end
    m.get=function(mself, layername, x, y)
        for k, layer in ipairs(mself.layers) do
            if layer.name == layername then
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
                                if mself:get(layer.name,x,y)==tile.id+1 then
                                    table.insert(mself.tileCols,{id=tile.id,properties=tile.properties})
                                    world:add(mself.tileCols[#mself.tileCols],x*mself.tilewidth,y*mself.tileheight,mself.tilewidth,mself.tileheight)
                                end
                                index=index+1
                            end
                        end
                    end
                end
            end
        end
    end
    
    return m
end

return map