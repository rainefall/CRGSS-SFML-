module CRGSS
	class Bitmap

	    getter :bmp
	    getter :height
	    getter :width

	    def initialize(path)
	    	@height = 0
	    	@width = 0
		@bmp = SF::Texture.from_file(path)
		@height = @bmp.size.y
		@width = @bmp.size.x
	    end
	end
end
