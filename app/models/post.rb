class Post < ActiveRecord::Base
  attr_accessible :author, :category, :cite, :content, :createdat, :lastcommentat, :name, :tags, :updatedat
end
