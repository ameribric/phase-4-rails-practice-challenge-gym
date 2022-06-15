class Membership < ApplicationRecord
    belongs_to :gym
    belongs_to :client

    validates :membership, length: { is: 1 }
end
