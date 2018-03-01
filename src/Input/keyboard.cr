module CRGSS
    module Input
        def self.pressed?(key)
            return SF::Keyboard.key_pressed?(key)
        end
    end
end