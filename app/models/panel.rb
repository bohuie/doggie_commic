class Panel < ActiveRecord::Base
  attr_accessible :order_id, :image

  validates_presence_of   :order_id
  validates_uniqueness_of :order_id

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  belongs_to :comic
end
