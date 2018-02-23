module CRGSS
	class Bitmap

		getter :bmp
	    getter :height
		getter :width
		getter :rect

	    def initialize(path)
	    	@height = 0
	    	@width = 0
			@bmp = SF::Texture.from_file(path)
			@height = @bmp.size.y
			@width = @bmp.size.x
			@rect = Rect.new(0,0,@width,@height)
		end
		
		def dispose
			return if disposed?
			@bmp.finalize
			@bmp = nil
		end

		def disposed?
			return true if @bmp = nil
		end
	end
end
