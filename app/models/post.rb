class Post < ApplicationRecord
  	validates :content, length: { within: 1..140 }
end
