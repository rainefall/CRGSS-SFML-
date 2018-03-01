require "crsfml"

# Main module
require "./src/crgss.cr"

# Utilities
require "./src/Graphics/rect.cr"
require "./src/Graphics/color.cr"
require "./src/Utility/math.cr"

#===============#
#   Graphics    #
#===============#

# Bitmaps/Models
require "./src/Graphics/bitmap.cr"

# Primitives
require "./src/Graphics/Primitives/circle.cr"
require "./src/Graphics/Primitives/rectangle.cr"

# Sprites
require "./src/Graphics/sprite.cr"
require "./src/Graphics/3D/sprite3d.cr"

#===============#
#     Input     #
#===============#

# Keyboard
require "./src/Input/keyboard.cr"
# Mouse
require "./src/Input/mouse.cr"

# Modules
require "./src/Graphics/graphics.cr"
require "./src/Input/input.cr"

