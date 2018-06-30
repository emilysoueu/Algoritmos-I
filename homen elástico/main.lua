
local anim = require 'anim8'

local imagem, animation

local posX = 100
local direção = true

function love.load()
	imagem = love.graphics.newImage("imagem/personagem.png")
	local g = anim.newGrid (180,340, imagem: getWidth (), imagem: getHeight() )
	animation = anim.newAnimation( g( '1-9',1, '1-9',2 ,'1-9',3 ,'1-9',4 ,'1-9',5 ,'1-9',6, '1-9',7, '1-7',8 ), 0.01)
end

function love.update (dt)
	if love.keyboard.isDown('left') then 
		posX = posX -150 *dt
		direção = false
		animation: update (dt)
	end	
end

function love.draw ()
	love.graphics.setBackgroundColor(255,255,255)
	if direção then 
		animation : draw (imagem, posX, 50, 0 , 1, 1, 90,0)
	elseif not direção then 
		animation: draw (imagem, posX, 50, 0, -1, 1, 90, 0  )	
     end
end     

