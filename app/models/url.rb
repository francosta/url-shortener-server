class Url < ApplicationRecord
    validates :original, presence: true

    def self.shorten(url)
        "#{url.id}"
    end
end
