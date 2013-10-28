class Course < ActiveRecord::Base

attr_accessible :title, :short_desc, :long_desc, :cost, :time_commit, :start_date, :end_date, :start_time, :end_time, :recurrence, :room_id
has_and_belongs_to_many :users
belongs_to :room

end