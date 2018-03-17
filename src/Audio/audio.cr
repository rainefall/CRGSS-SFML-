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
            bgm_player.finalize
            bgs_player.finalize
            se_player.finalize
            me_player.finalize
        end
    end
end