module Math
	def Math.degToRad(deg)
		return deg * Math::PI / 180
	end
	
	# Trigonometric functions (Degrees)
	
	def Math.dsin(deg)
		return Math.sin(deg * Math::PI / 180)
	end
	
	def Math.dcos(deg)
		return Math.cos(deg * Math::PI / 180)
	end
	
	def Math.dtan(deg)
		return Math.tan(deg * Math::PI / 180)
	end
	
	def Math.adsin(deg)
		return Math.asin(deg) * 180 / Math::PI
	end
	
	def Math.adcos(deg)
		return Math.acos(deg) * 180 / Math::PI
	end
	
	def Math.adtan(deg)
		return Math.atan(deg) * 180 / Math::PI
	end
	
	# Implementation of GameMaker's `lengthdir_x` and `lengthdir_y` functions
	
	def Math.lengthdirx(len,dir)
		return Math.dcos(dir) * len
	end
	
	def Math.lengthdiry(len,dir)
		return Math.dsin(dir) * len
	end
	
	def Math.lengthdir(len,dir)
		return [Math.dcos(dir) * len, Math.dsin(dir) * len]
	end
	
	def Math.pointdirection(x1,y1,x2,y2)
		return Math.atan2(y2-y1, x2-x1) * 180 / Math::PI
	end
end