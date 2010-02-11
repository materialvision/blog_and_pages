class Post < ActiveRecord::Base
  attr_accessible :title, :content, :author, :tags, :tag_list
  acts_as_taggable_on :tags
  #named_scope :by_post_date, :order => "created_at DESC" #for taggable søk
end
