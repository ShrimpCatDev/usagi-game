local map={}

function map:init(path)
    local m=require(path)
    m.draw=function(mself,dx,dy)
        local x,y=dx or 0,dy or 0
        for k,layer in ipairs(mself.layers) do
            local ox=math.floor(((dx or 0)+(layer.offsetx))*layer.parallaxx)
            local oy=math.floor(((dy or 0)+(layer.offsety))*layer.parallaxy)
            if layer.type=="tilelayer" then
                local index=1
                
                for y = 0,layer.height-1 do
                    for x = 0,layer.width-1 do
                        local tileId = layer.data[index]
                        if tileId ~= 0 then
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
                        if object.properties["fill"] then
                            gfx.rect_fill(x+ox,y+oy,object.width,object.height,color)
                        else
                            gfx.rect(x+ox,y+oy,object.width,object.height,color)
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