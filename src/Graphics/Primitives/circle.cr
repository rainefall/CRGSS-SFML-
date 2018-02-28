class Circle

    getter x : Int32
    getter y : Int32
    getter z : Int32

    getter radius : Int32
    getter bitmap : CRGSS::Bitmap

    getter fill_color
    getter outline_color
    getter outline_thickness

    include CRGSS::Drawable

    def initialize(rad)
        @x = 0
        @y = 0
        @z = 0
        @radius = rad
        @bitmap = uninitialized CRGSS::Bitmap
        @fill_color = CRGSS::Color.new(255,255,255,255)
        @outline_color = CRGSS::Color.new(255,255,255,0)
        @outline_thickness = 0
        @img = SF::CircleShape.new(rad)
        super()
    end

    def x=(x)
        x.to_i
        return if x==@x
        @x = x
        @img.position.x = @x
    end

    def y=(y)
        y.to_i
        return if y==@y
        @y = y
        @img.position.y = @y
    end

    def z=(z)
        z.to_i
        return if z==@z
        @z=z
        CRGSS.resources.sort_by! &.z
    end

    def draw(window)
        window.draw(@img)
    end

    def bitmap=(bitmap)
        @bitmap = bitmap
        @img.texture = bitmap.bmp
    end

    def fill_color=(clr)
        @fill_color = clr
        @img.fill_color = clr.clr
    end

    def outline_color=(clr)
        @outline_color = clr
        @img.outline_color = clr.clr
    end

    def outline_thickness=(pix)
        @outline_thickness = pix
        @img.outline_thickness = pix
    end
end