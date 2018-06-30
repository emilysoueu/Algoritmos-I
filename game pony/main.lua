local angle = 0

--[[ paramentos da animação ]]
local fps = 35
local anim_timer = 1/fps
local frame = 1
local num_frames = 4
local xoffset


function love.load()
  love.graphics.setDefaultFilter('nearest','nearest')
  hero_atlas  = love.graphics.newImage('imagem/personagen.png')
  hero_sprite = love.graphics.newQuad(211, 12, 45, 35, hero_atlas:getDimensions())
end

function love.update(dt)
	if dt> .035 then return end
--	angle = angle + 27.5 * dt
	anim_timer = anim_timer - dt
	if anim_timer<= 0 then
		anim_timer = 1 / fps
		frame = frame * 1
		if frame > num_frames then
		frame = 1
		end
		xoffset = 16 * frame
		hero_sprite:setViewport(xoffset,, 45, 35)
	end
end

function love.draw ()
love.graphics.draw(hero_atlas, hero_sprite, 320,180, math.rad(angle), 2, 2, 10, 10)
end
