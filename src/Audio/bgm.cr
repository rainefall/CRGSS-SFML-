module CRGSS
    module Audio

        @@bgm_loopstart = SF.seconds(0)
        @@bgm_looplength = SF.seconds(0)

        def self.bgm_play(filename,pitch=1,volume=100,loop=true,loopstart=nil,looplength=nil)
            self.bgm_player.open_from_file(filename)

            if looplength==nil
                self.bgm_looplength = self.bgm_player.duration
            else
                self.bgm_loopstart = SF.seconds(loopstart.to_f / self.bgm_player.sample_rate)
                self.bgm_looplength = SF.seconds(looplength.to_f / self.bgm_player.sample_rate)
            end

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

        def self.bgm_loopstart
            return @@bgm_loopstart
        end

        def self.bgm_looplength
            return @@bgm_looplength
        end

        def self.bgm_loopstart=(loopstart)
            @@bgm_loopstart = loopstart
        end

        def self.bgm_looplength=(looplength)
            @@bgm_looplength = looplength
        end
    end
end