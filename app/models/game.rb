class Game < ActiveRecord::Base

  belongs_to :organizer, :class_name => "User"

  has_many :players, :through => :invites, :source => :user

  has_many :invites

  validates :user_id, :presence => true

  validates :location, :presence => true

  validates :time, :presence => true
  validates :date, :presence => true
  validates :sport, :presence => true


end


