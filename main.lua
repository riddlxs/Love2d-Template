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

print("play test 01")

function love.load()
    circlexpos = 390
    rectanglexpos = 400
    rectangleypos = 400
    circleypos = 290
    moveSpeed = 100
    move = true
end

function love.update(deltaTime)
    --print(deltaTime)
    --if love.keyboard.isDown("d") then
    -- circlexpos = circlexpos + moveSpeed * deltaTime
    -- end
    -- if love.keyboard.isDown("a") then
    --   circlexpos = circlexpos - moveSpeed * deltaTime
    -- end
    -- if love.keyboard.isDown("s") then
    --    circleypos = circleypos + moveSpeed * deltaTime
    -- end
    -- if love.keyboard.isDown("w") then
    --     circleypos = circleypos - moveSpeed * deltaTime
    --  end
    if love.keyboard.isDown("right") or love.keyboard.isDown("d") then
        rectanglexpos = rectanglexpos + moveSpeed * deltaTime
    end
    if love.keyboard.isDown("left") or love.keyboard.isDown("a") then
        rectanglexpos = rectanglexpos - moveSpeed * deltaTime
    end
    if love.keyboard.isDown("down") or love.keyboard.isDown("s") then
        rectangleypos = rectangleypos + moveSpeed * deltaTime
    end
    if love.keyboard.isDown("up") or love.keyboard.isDown("w") then
        rectangleypos = rectangleypos - moveSpeed * deltaTime
    end
end

function love.draw()
    love.graphics.rectangle("line", rectanglexpos, rectangleypos, 200, 150)
    --love.graphics.circle("line", circlexpos, circleypos, 100)
end
