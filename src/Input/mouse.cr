module CRGSS
    module Input
        module Mouse
            extend self

            def x=(x)
                SF::Mouse.set_position(SF.vector2(x,SF::Mouse.get_position(Graphics.window).y),Graphics.window)
            end

            def x
                SF::Mouse.get_position(Graphics.window).x
            end

            def y=(x)
                SF::Mouse.set_position(SF.vector2(SF::Mouse.get_position(Graphics.window).x,y),Graphics.window)
            end

            def y
                SF::Mouse.get_position(Graphics.window).y
            end
        end
    end
end