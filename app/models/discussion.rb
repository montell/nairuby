class Discussion < ActiveRecord::Base
  attr_accessible :post, :title
  
  #Associations
  belongs_to :user
end
