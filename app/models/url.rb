class Url < ApplicationRecord
    validates :original, presence: true
    validates :original, :url => true

    def self.shorten(url)
        "#{url.id}"
    end
end
