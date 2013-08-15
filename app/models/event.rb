class Event < ActiveRecord::Base
  attr_accessible :event_name
  has_many :comments, :as => :commentable
  belongs_to :user
end
