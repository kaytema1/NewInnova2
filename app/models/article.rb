class Article < ActiveRecord::Base
  attr_accessible :title, :content, :author, :tag, :featured, :approved, :page_id, :image
   has_attached_file :image
   has_many :comments
end
