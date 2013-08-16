thisFrame = 0
curId = 1
anims = {}
anims.name = {}
anims.framee = {}
anims.URL = {}
anims.FPS = {}
anims.max = {}

function animate(dt)
	thisFrame = thisFrame + 1*dt
	currId = 1
	while currId < curId do
		anims.framee[currId] = anims.framee[currId] + 1*(dt/anims.FPS[currId])
		if round(anims.framee[currId], 0) > anims.max[currId] then
			anims.framee[currId] = 0.5
		end
		currId = currId + 1
	end
end

function animDraw(name, x, y)
	currId = 1
	while currId < curId do
		if anims.name[currId] == name then
			local newImg = love.graphics.newImage(anims.URL[currId].."/"..round(anims.framee[currId], 0)..".png")
			return love.graphics.draw(newImg, x, y)
		end
		currId = currId + 1
	end
end

function addAnim(imgName, URL, FPS, maxImg)
	anims.name[curId] = imgName
	anims.framee[curId] = 1
	anims.URL[curId] = URL
	anims.FPS[curId] = FPS
	anims.max[curId] = maxImg
	curId = curId + 1
end