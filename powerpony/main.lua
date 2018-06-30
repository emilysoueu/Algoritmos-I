local angle = 0

function love.load()
  love.graphics.setDefaultFilter('nearest','nearest')
  hero_atlas  = love.graphics.newImage('imagem/personagen.png')
  hero_sprite = love.graphics.newQuad(50, 10, 40, 40, hero_atlas:getDimensions())
end

function love.update(dt)
	if dt> .035 then return end
--	angle = angle + 27.5 * dt
end

function love.draw ()
love.graphics.draw(hero_atlas, hero_sprite, 320,180, math.rad(angle), 2, 2, 10, 10)
end
