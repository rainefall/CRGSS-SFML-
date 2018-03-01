# Require CRGSS
require "./crgss.cr"
# Not neccessary, just makes it way faster to write (You don't need to type CRGSS:: before everything)
include CRGSS

floor = Rectangle.new(960,540)
floor.fill_color = Color.new(72,66,49)

# Create a new sprite (No viewports yet)
sprite = Sprite3D.new
# Give that sprite a bitmap
sprite.model = "floreno_title.png"
sprite.x = 320
sprite.y = 200
sprite.view_angle = 2

rect = Rectangle.new(960,540)
rect.fill_color = Color.new(23,71,87,200)
rect.z = 7

# Game loop
loop do 
    # Update the window
    Graphics.update
    sprite.angle += 0.1
    # Exit if the window is closed
    break if !Graphics.window.open?
end

#sprite.dispose