function colisao(posxT,posyT,posxC,posyC,r)
	if (math.sqrt(posxC-posxT) ^ 2 + (posyC-posyC) ^ 2 <= r^2) then
	return(true)
	else
	return(false)
	end
end
