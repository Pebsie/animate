animations = 0
anims = {}
anims.name = {}
anims.frame = {}
anims.frames = {}
anims.URL = {}
anims.FPS = {}
anims.img = {}

function animate(dt)
  for i = 1, animations do
    anims.frame[i] = anims.frame[i] + 1*(dt*anims.FPS[i])
    if anims.frame[i] > anim.frames[i] then
      anims.frame[i] = 1
    end
  end
end

function animDraw(name, x, y)
  for i = 1, animations do
    if anims.name[i] == name then
      love.graphics.draw(anims.img[i][anims.frame[i]], x, y)
    end
  end
end

function addAnim(name, url, fps, frames)
  animations = animations + 1
  anims.name[animations] = name
  anims.frame[animations] = 1
  anims.URL[animations] = url
  anims.FPS[animations] = fps
  anims.frames[animations] = frames
  anims.img[animations] = {}
  for i = 1, frames do
    anims.img[animations][i] = love.graphics.newImage(url.."/"..i..".png")
  end
end
