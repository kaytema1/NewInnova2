class Ad < ActiveRecord::Base
  attr_accessible :image, :link
   has_attached_file :image 
end
