function love.load( ... )
jogador1 = {}	
xone = 300
yone = 300

jogador2 = {}
xtwo = 500
ytwo = 500


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
    if love.keyboard.isDown('right') then
        xtwo = xone + 100 * dt
    end
    if love.keyboard.isDown('left') then
        xtwo = xone - 100 * dt
    end
    if love.keyboard.isDown('down') then
        ytwo = yone + 100 * dt
    end
	if love.keyboard.isDown('up') then
        ytwo = yone - 100 * dt
    end
end
function love.draw( ... )
-- jogador1
love.graphics.setColor(255, 255, 255)
love.graphics.rectangle("fill", xone,  yone, 32, 32 )

--jogador2
love.graphics.setColor(226, 4, 4)
love.graphics.rectangle("fill", xtwo,  ytwo, 32, 32 )
end