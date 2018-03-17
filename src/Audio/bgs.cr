module CRGSS
    module Audio
        def self.bgs_play(filename,pitch=1,volume=100,loop=true,loopstart=nil,looplength=nil)
            self.bgs_player.open_from_file(filename)
            self.bgs_player.loop = loop
            self.bgs_player.pitch = pitch
            self.bgs_player.volume = volume
            self.bgs_player.play
        end

        def self.bgs_stop
            self.bgs_player.stop if bgs_player.status.playing?
        end

        def self.bgs_playing?
            return bgs_player.status.playing?
        end
    end
end