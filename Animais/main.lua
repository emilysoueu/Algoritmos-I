require('colisao/colisao')

function love.load()
posxT=0
posyT=0

vaca = {}
vaca.posx = 200
vaca.posY = 200
vaca.r = 32
vaca.img = love.graphics.newImage('imagens/vaca.png')
vaca.mus = love.audio.newSource('som/vaca.mp3','static')

ovelha = {}
ovelha.posx = 300
ovelha.posY = 200
ovelha.r = 32
ovelha.img = love.graphics.newImage('imagens/ovelha.png')
ovelha.mus = love.audio.newSource('som/ovelha.mp3','static')

galo = {}
galo.posx = 400
galo.posY = 200
galo.r = 32
galo.img = love.graphics.newImage('imagens/galo.png')
galo.mus = love.audio.newSource('som/galo.mp3','static')

end

function love.update(dt)
end

function love.draw ()
if colisao(posxT,posyT,200,200,32) then
	love.audio.play(vaca.mus)
	else
	love.audio.stop(vaca.mus)
	end

if colisao(posxT,posyT,300,200,32) then
	love.audio.play(ovelha.mus)
else
	love.audio.stop(ovelha.mus)
end

if colisao(posxT,posyT,400,200,32) then
	love.audio.play(galo.mus)
else
	love.audio.stop(galo.mus)
end

love.graphics.draw(vaca.img, 200 -32, 200-32)
love.graphics.draw(ovelha.img, 300 -32, 200-32)
love.graphics.draw(galo.img, 400 -32, 200-32)

end

function love.mousepressed(x,y,button)
		if button == 1 then
		posxT = x
		posxY = Y
	end
end
