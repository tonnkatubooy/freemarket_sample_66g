class Card < ApplicationRecord
    belongs_to :user
    belongs_to :address, optional: true
end
