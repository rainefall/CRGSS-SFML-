module CRGSS
    module Audio
        # Audio Initialization

        @@bgm_player = SF::Music.new
        @@bgs_player = SF::Music.new

        @@se_player = SF::Sound.new
        @@me_player = SF::Sound.new

        def self.bgm_player
            return @@bgm_player
        end

        def self.bgs_player
            return @@bgs_player
        end

        def self.me_player
            return @@me_player
        end

        def self.se_player
            return @@se_player
        end

        def self.finalize
            self.bgm_player.finalize
            self.bgs_player.finalize
            self.se_player.finalize
            self.me_player.finalize
        end

        def self.update
            if self.bgm_player.playing_offset > self.bgm_loopstart+self.bgm_looplength
                self.bgm_player.playing_offset -= self.bgm_looplength
            end
        end
    end
end