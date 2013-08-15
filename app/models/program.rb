class Program < ActiveRecord::Base
  attr_accessible :free, :program_name
  has_many :comments, :as => :commentable
  belongs_to :user

end
