module Graphics
    def self.update(window)
    	CRGSS.update(window)
    	window.clear(SF::Color::Black)
        CRGSS.resources.each { |i| i.draw(window)}
        window.display
    end
end
