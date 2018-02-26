module CRGSS
    class Color

        getter red
        getter green
        getter blue
        getter alpha

        getter clr

        def initialize(r,g,b,a=255)
            @clr = SF::Color.new(r,g,b,a)
        end

        def red=(r)
            @red = r
            @clr.r = r
        end

        def green=(g)
            @green = g
            @clr.g = g
        end

        def blue=(b)
            @blue = b
            @clr.b = b
        end

        def alpha=(a)
            @alpha = a
            @clr.a = a
        end
    end
end