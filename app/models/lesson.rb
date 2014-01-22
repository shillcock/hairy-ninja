class Lesson < ActiveRecord::Base
  belongs_to :workshop
  has_many :meetings
end
