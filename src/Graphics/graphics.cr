module CRGSS    
    module Graphics

        # GRAPHICS INITIALIZATION

        # Make a new window
        @@window = SF::RenderWindow.new(SF::VideoMode.new(640,400),"CRGSS")
        @@render_target = SF::RenderTexture.new(640,400)
        self.window.vertical_sync_enabled = true

        def self.window
            return @@window
        end

        def self.render_target
            return @@render_target
        end

        def self.update
            CRGSS.update
            self.window.clear(SF::Color::Black)
            CRGSS.resources.each { |i| i.draw(self.window)}
            #target = sprite = SF::Sprite.new(self.render_target.texture.load_from_image(self.render_target.texture.copy_to_image.flip_vertically))
            #self.window.draw(target)
            self.window.display
        end
    end
end