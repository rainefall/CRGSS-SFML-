module CRGSS
	class Bitmap

		getter bmp : SF::Texture

		property disposed

	    def initialize(path)
	    	@height = 0
	    	@width = 0
			@bmp = SF::Texture.from_file(path)
			@rect = CRGSS::Rect.new(0,0,@width,@height)
			@disposed = false
		end

		def height
			return @bmp.size.y
		end

		def width
			return @bmp.size.x
		end

		def rect
			CRGSS::Rect.new(0, 0, @bmp.size.x, @bmp.size.y)
		end

		def dispose
			return if @disposed
			@bmp.finalize
			@disposed = true
		end
	end
end
