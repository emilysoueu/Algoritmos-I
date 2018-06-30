require "colisao/colisao"

function love.load( ... )
jogador1 = {}	
xone = 300
yone = 300

jogador2 = {}
xtwo = 500
ytwo = 500


-- vidas e pontuação
estaVivo = true
vidas = 5
gameOver = false
transparencia = 0 
imgGameOver = love.graphics.newImage('image/game_over.png')
--vidas e pontuação


-- sons do jogo
somGameOver = love.audio.newSource('sound/sound_gameover.mp3')
--sons do jogo

end

function love.update( dt)


	
	-- move jogador1
		if love.keyboard.isDown('right') then
        xone = xone + 100 * dt
    end
    if love.keyboard.isDown('left') then
        xone = xone - 100 * dt
    end
    if love.keyboard.isDown('down') then
        yone = yone + 100 * dt
    end
	if love.keyboard.isDown('up') then
        yone = yone - 100 * dt
    end

    -- move jogador2
    if love.keyboard.isDown('d') then
        xtwo = xtwo + 100 * dt
    end
    if love.keyboard.isDown('a') then
        xtwo = xtwo - 100 * dt
    end
    if love.keyboard.isDown('s') then
        ytwo = ytwo + 100 * dt
    end
	if love.keyboard.isDown('w') then
        ytwo = ytwo - 100 * dt
    end
end

function love.draw( )

love.graphics.print('vidas: ' .. vidas, 0,0 )

if checa_colisao(xone,yone,32,32, xtwo,ytwo,32,32) then 
	love.graphics.print( vidas , 0,0)
	vidas = vidas - 1
	if vidas < 0 then 
		gameOver = true
		somGameOver : play ()
		somGameOver : setLooping(false)
	end	
end	


-- jogador1
love.graphics.setColor(255, 255, 255)
love.graphics.rectangle("fill", xone,  yone, 32, 32 )

--jogador2
love.graphics.setColor(226, 4, 4)
love.graphics.rectangle("fill", xtwo,  ytwo, 32, 32 )
end
 

