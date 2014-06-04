class Invite < ActiveRecord::Base

belongs_to :user

belongs_to :game

has_many :participants, :class_name => "User"

end
