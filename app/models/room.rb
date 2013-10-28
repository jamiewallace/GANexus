class Room < ActiveRecord::Base

attr_accessible :name, :capacity
has_many :courses

end