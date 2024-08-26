Entity = object:extend()

function Entity:new(x,y,image_path)
    self.x = x
    self.y = y
    self.image = image_path
    self.width = self.image:getwidth()
    self.height = self.image:getheight()
end 

function Entity:update()

end

function entity:draw()
    love.graphics.draw(self.image, self.x, self.y)

end 

function Entity:checkCollision(otherEntity)
    return self.x + self.width > otherEntity.x
    and self.x < otherEntity.x + otherEntity.width
    and self.y + self.hight > otherEntity.y
    and self.y < otherEntity.y + otherEntity.height
end 