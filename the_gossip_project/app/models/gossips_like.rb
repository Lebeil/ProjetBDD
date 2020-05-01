class GossipsLike < ActiveRecord::Base
  belongs_to :user
  belongs_to :gossip
end
