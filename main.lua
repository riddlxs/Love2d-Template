if arg[2] == "debug" then
    require("lldebugger").start()
end

local love_errorhandler = love.errorhandler

function love.errorhandler(msg)
    if lldebugger then
        error(msg, 2);
    else
        return love_errorhandler(msg)
    end
end

local list_of_rectangles = {}

function love.load()
end 

function createRect()

    rect = {}
    rect.width = 70
    rect.height = 90
    rect.x = 100
    rect.y = 100
    rect.speed = 100

    table.insert(list_of_rectangles, rect)
end

function love.keypressed(key)
    if key == "space" then
        createRect()
    end
end

function love.update(dt)
     for i,v in ipairs(list_of_rectangles) do
     v.x = v.x +v.speed * dt
     end
    end

function love.draw()
    --love.graphics.rectangle("line", rectanglexpos, rectangleypos, 200, 150)
    --love.graphics.circle("line", circlexpos, circleypos, 100)
    for i=1, #list_of_rectangles do
    love.graphics.rectangle("line", list_of_rectangles[i].x, list_of_rectangles[i].y , list_of_rectangles[i].width, list_of_rectangles[i].height)
    end
end