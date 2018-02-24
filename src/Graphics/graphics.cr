module CRGSS    
    module Graphics

        # GRAPHICS INITIALIZATION

        # Make a new window
        @@window = SF::RenderWindow.new(SF::VideoMode.new(640,400),"CRGSS")
        self.window.vertical_sync_enabled = true

        def self.window
            return @@window
        end

        def self.update
            CRGSS.update
            self.window.clear(SF::Color::Black)
            CRGSS.resources.each { |i| i.draw(self.window)}
            self.window.display
        end
    end
end