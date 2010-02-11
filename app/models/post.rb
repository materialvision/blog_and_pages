class Post < ActiveRecord::Base
  attr_accessible :title, :content, :author, :tags, :tag_list
  acts_as_taggable_on :tags
end
