require "crsfml"

raise "ArgumentError - Not enough arguments (#{ARGV.size} for 3)" if ARGV.size < 3
raise "ArgumentError - Too many arguments (#{ARGV.size} for 3)" if ARGV.size > 3

puts ARGV[0]

hmp = SF::Image.from_file(ARGV[0])
clr_map = SF::Image.from_file(ARGV[1])
layers = ARGV[2].to_i

img_out = SF::Image.new(hmp.size.x*layers,hmp.size.y,SF::Color::Transparent)

layers.times do |color|
    hmp.size.x.times do |y|
        hmp.size.y.times do |x|
            pix = hmp.get_pixel(x,y).r.to_i
            layers.times do |i|
                unless i == 0
                    interval = i * 255/layers
                    img_out.set_pixel(x,y,clr_map.get_pixel(256/layers*i,0)) if pix >= interval
                end
            end			
        end
    end
end

img_out.save_to_file("output.png")