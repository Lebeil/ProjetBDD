class GossipsTag < ActiveRecord::Base
  belongs_to :gossip
  belongs_to :tag
end
