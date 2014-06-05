class Game < ActiveRecord::Base

  belongs_to :organizer, :class_name => "User"

  has_many :players, :through => :invites, :source => :user

  has_many :invites

end
