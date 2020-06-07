class Buyer < ApplicationRecord

    has_many :buyer_managements
    validates :name, presence: true

end
