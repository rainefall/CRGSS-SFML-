module CRGSS
    module Audio
        def self.bgm_play(filename,pitch=1,volume=100,loop=true)
            self.bgm_player.open_from_file(filename)
            self.bgm_player.loop = loop
            self.bgm_player.pitch = pitch
            self.bgm_player.volume = volume
            self.bgm_player.play
        end

        def self.bgm_stop
            self.bgm_player.stop if bgm_player.status.playing?
        end

        def self.bgm_playing?
            return bgm_player.status.playing?
        end
    end
end