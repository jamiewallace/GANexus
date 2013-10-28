class User < ActiveRecord::Base

attr_accessible :first_name, :last_name, :role, :email, :password, :mobile, :ice_mobile
has_and_belongs_to_many :courses

end