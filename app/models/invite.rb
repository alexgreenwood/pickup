class Invite < ActiveRecord::Base

belongs_to :user

has_many :games

has_many :participants, :class_name => "User"

end
