class Sprite3D

	getter :x
	getter :y
	getter :z
	getter :ox
	getter :oy
	getter :angle

	def initialize
		@model = {} of Int32 => Sprite
		@x = 0
		@y = 0
		@z = 0
		@ox = 256
		@oy = 256
		@angle = 0
	end
	
	def model=(path)
		sheet = Bitmap.new(path)
		(sheet.width / sheet.height).times do |i|
			@model[i] = Sprite.new
			@model[i].bitmap = sheet
			@model[i].src_rect = SF::IntRect.new(i*sheet.height,0,sheet.height,sheet.height)
			@model[i].position = SF.vector2(@x,@y-i)
  			@model[i].origin = SF.vector2(@ox,@oy)
		end
	end
		
	def x=(x)
		return if x==@x
		@x = x
		@model.size.times do |i|
			@model[i].position = SF.vector2(@x,@y)
		end
	end		
	
	def y=(y)
		return if y==@y
		@y = y
		@model.size.times do |i|
			@model[i].position = SF.vector2(@x,@y-i)
		end
	end
	
	def angle=(angle)
		return if angle==@angle
		@angle=angle
		@model.size.times do |i|
			@model[i].angle = angle
		end
	end
end
