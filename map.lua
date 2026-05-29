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
    return m
end

return map