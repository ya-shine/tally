class Product < ApplicationRecord

    has_many :buyer_managements
    validates :name, presence: true
    validates :name, presence: true

end
