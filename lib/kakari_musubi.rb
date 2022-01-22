require "kakari_musubi/version"
require "kakari_musubi/particles"

module KakariMusubi
  class Error < StandardError; end
  class Translator

    def self.is_km?(sentence)
      KakariMusubi::PARTICLES.map {|particle| sentence.include?(particle)}.any?
    end

    def self.is_not_km?(sentence)
      !is_km?(sentence)
    end
  end
end
