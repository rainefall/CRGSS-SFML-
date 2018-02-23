module CRGSS

	# Drawable objects
	module Drawable
		property :x
		property :y
		property :viewport
		
		getter :z
		getter :visible
		
		# initialize
		def initialize
			puts "HELLO THERE THIS IS DEFINITELY WORKING"
			CRGSS.resources << self
		end
		
		
		
		def draw(window)
			raise "Can't draw this kind of object"
		end
	end
	
	@@resources = [] of Drawable
	
	def self.resources
		return @@resources
	end
	
	# Update game
	def self.update(window)
		# check all the window's events that were triggered since the last iteration of the loop
		while event = window.poll_event
			# "close requested" event: we close the window
		    	if event.is_a? SF::Event::Closed
		      		window.close
		    	end
		end
	end
end
