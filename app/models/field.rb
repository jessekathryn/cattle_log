class Field < ApplicationRecord
   # belongs_to :user
   # has_many :cows
   # has_many :reports, through: :user

   has_many :userables
end
