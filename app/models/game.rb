class Game < ActiveRecord::Base

  belongs_to :organizer, :class_name => "User"

  has_many :players, :class_name => "User"

  has_many :invites

end
