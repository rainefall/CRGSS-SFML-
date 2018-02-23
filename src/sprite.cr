module CRGSS	
	class Sprite

		getter :x
		getter :y
		getter :z
		
		getter :angle
		
		getter :ox
		getter :oy

		getter :spr
		
		include CRGSS::Drawable

		def initialize
			@x=0
			@y=0
			@z=0
			@ox=0
			@oy=0
			@angle=0
			
			@spr = SF::Sprite.new
			CRGSS.resources << self
		end
		
		def bitmap=(bitmap)
			@spr.texture = bitmap.bmp
		end
		
		def src_rect=(rect)
			@spr.texture_rect = rect
		end
		
		def x=(x)
			return if x==@x
			@x=x
			@spr.position.x = x
		end
		
		def y=(y)
			return if y==@y
			@y=y
			@spr.position.y = y
		end
		
		# set Z value then reorder the resource array
		def z=(z)
			return if z==@z
			@z = z
			CRGSS.resources.sort_by &.z
		end
		
		def position=(pos)
			return if @spr.position == pos
			@x = pos.x
			@y = pos.y
			@spr.position = pos
		end
		
		def origin=(pos)
			return if pos==@spr.origin
			@ox = pos.x
			@oy = pos.y
			@spr.origin = pos
		end
		
		def draw(window)
			window.draw(@spr)
		end
		
		def angle=(angle)
			return if angle==@angle
			@angle=angle
			@spr.rotation = angle
		end
	end
end
