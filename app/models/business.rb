class Business < ApplicationRecord

	belongs_to :user
	belongs_to :type
	belongs_to :category
	belongs_to :ownership_type
	belongs_to :industry

end
