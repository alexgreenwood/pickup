class Game < ActiveRecord::Base

  belongs_to :organizer, :class_name => "User"

  has_many :participants, :class_name => "User"

  has_many :invites

end
