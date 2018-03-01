# Require CRGSS
require "./crgss.cr"
# Not neccessary, just makes it way faster to write (You don't need to type CRGSS:: before everything)
include CRGSS

# Creates a brown rectangle
floor = Rectangle.new(640,400)
floor.fill_color = Color.new(72,66,49)

# Create a new 3D Sprite (No viewports yet)
sprite = Sprite3D.new
# Give that 3D sprite a model
sprite.model = "floreno_title.png"
# Set the sprite position
sprite.x = 320
sprite.y = 200
# Set the view angle (the number of pixels higher each sprite is)
sprite.view_angle = 2

# Creates a translucent blue rectangle
rect = Rectangle.new(640,400)
rect.fill_color = Color.new(23,71,87,200)
# Sets the Z to 7 (between the island and the seabed on the "model")
rect.z = 7

# Game loop
loop do 
    # Update the window
    Graphics.update
    # Add 0.1 to the island model
    sprite.angle += 0.1
    # Exit if the window is closed
    break if !Graphics.window.open?
end

#sprite.dispose
