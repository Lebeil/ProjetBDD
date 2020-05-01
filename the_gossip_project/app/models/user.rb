class User < ActiveRecord::Base
  belongs_to :city
  has_many :gossips
  has_many :comments
  has_many :gossips_likes
  has_many :comments_likes
end
