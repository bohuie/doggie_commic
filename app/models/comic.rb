class Comic < ActiveRecord::Base
  attr_accessible :order_id, :title

  validates_presence_of   :order_id
  validates_uniqueness_of :order_id

  has_many :panels, :order => 'order_id asc'
end
