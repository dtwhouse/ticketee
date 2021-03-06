class Ticket < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  validates :title, :presence => true
  validates :description, :presence => true, :length => { :minimum => 10 }
  attr_accessible :description, :title, :user_id
  attr_accessible :user_attributes
  accepts_nested_attributes_for :user
end
