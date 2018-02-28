module CRGSS	
	class Sprite

		getter x
		getter y
		getter z
		getter angle : Float64
		getter ox
		getter oy
		getter src_rect : CRGSS::Rect
		getter spr : SF::Sprite  # Don't mess with this one
		getter bitmap : CRGSS::Bitmap
		getter render_state : SF::RenderStates
		getter shader
		getter blend_mode

		property disposed
		
		include CRGSS::Drawable

		def initialize
			@x=0
			@y=0
			@z=0
			@ox=0
			@oy=0
			@angle=0.0
			@src_rect = CRGSS::Rect.new(0,0,0,0)
			@bitmap = uninitialized CRGSS::Bitmap
			
			@spr = SF::Sprite.new
			@render_state = SF::RenderStates.new
			@disposed = false
			super()
		end
		
		def bitmap=(bitmap)
			@bitmap = bitmap
			@spr.texture = bitmap.bmp
			@src_rect = bitmap.rect
		end
		
		def src_rect=(rect)
			return if rect==@src_rect
			@spr.texture_rect = SF::Rect.new(rect.x,rect.y,rect.width,rect.height)
		end

		def width
			return @src_rect.width
		end

		def height
			return @src_rect.height
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
			CRGSS.resources.sort_by! &.z
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

		def ox=(o)
			return if o==@ox
			@ox = o
			@spr.origin(SF.vector2(o,@oy))
		end

		def oy=(o)
			return if o==@oy
			@oy = o
			@spr.origin(SF.vector2(@ox,o))
		end
		
		def draw(window)
			window.draw(@spr, @render_state)
		end
		
		def angle=(angle)
			return if angle==@angle
			@angle=angle.to_f
			@spr.rotation = angle
		end

		def dispose
			return if @disposed
			@spr.finalize
			@bitmap.dispose
			@disposed = true
		end
	end
end
