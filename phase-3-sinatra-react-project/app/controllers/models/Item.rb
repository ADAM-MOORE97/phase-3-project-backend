class Item < ActiveRecord::Base
    has_many :loans
    has_many :people, through: :loans
    
end