class Resourze < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :users, through: :comments

    validates :phone_number, uniqueness: true, integer: true, 
    validates :site_url, prescence: true

    validates :address, uniqueness: true
    validates :address, prescence: true
    validates :address, length: {minimum: 2}

    validates :address, uniqueness:true, prescence: true, length: {minimum: 2}
end
