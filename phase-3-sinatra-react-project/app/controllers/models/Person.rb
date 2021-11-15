class Person < ActiveRecord::Base
    has_many :loans
    has_many :items, through: :loans

end