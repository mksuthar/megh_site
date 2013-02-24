class Pcomment < ActiveRecord::Base
  attr_accessible :author, :authorid, :authorprovider, :content, :createdat, :post_id
end
