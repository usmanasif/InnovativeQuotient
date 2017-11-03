class Business < ApplicationRecord

	belongs_to :user
	belongs_to :type
	belongs_to :category
	belongs_to :ownership_type
	belongs_to :industry
  has_and_belongs_to_many :categories
  accepts_nested_attributes_for :categories
  has_many :classes, class_name: 'BusinessClass', foreign_key: "business_id"
  accepts_nested_attributes_for :classes

end
