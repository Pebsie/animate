# Animate

This can be used to make animations without the need for sprite sheets. It's great for lazy people such as myself.
## How to use
### Step 1
Put `animate.lua` in the same directory as `main.lua` and put `include 'animate'` at the top of `main.lua`. 
Make each frame of animation in a seperate image file and then save it into your animation folder with the filename *frame*.png. For example, my first frame will be 1.png, my second 2.png, my fourtieth 40.png.
### Step 2
Add all animations that you want to use in love.load like this:
```Lua
addAnim("exampleName", "img/animation", 15, 30)
addAnim(animationName, folderDirectory, FPS, numberOfFrames)
```
The first argument is the name of the animation. This will be used when drawing the animation and so isn't entirely important. Just call it something that you'll remember and that is relevant to the animation. The second argument is the URL of the images. In this case, all image files are placed in img/animation/. The third is the FPS of which the animation will run (this uses delta time automatically, so there is no need to add *dt). The fourth and final argument to this function is the amount of frames in the animation, in this case 30. You may have as many animations as you desire.
<br><sub>(NOTE: the lower the FPS, the faster the animation. You may use decimal numbers. Just experiment with what works best with your animation until this is fixed!)</sub>
### Step 3
In `love.update`, add this at any point:
```Lua
animate(dt)
```
### Step 4
In `love.draw`, add in the draw function for each animation that you want to be drawn:
```Lua
animDraw("exampleName", 0, 0)
animDraw(animationName, x, y)
```
The first argument is the animation's name, set in the addAnim function in love.load. The second arg is the X position to draw the image and the third is the Y position to draw the image.
### Step 5
Run the game, and enjoy easy animations! :)

