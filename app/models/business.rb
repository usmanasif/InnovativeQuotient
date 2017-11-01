class Business < ApplicationRecord

	belongs_to :user
	has_one :type
	has_one	:category
	has_one :ownership_type
	has_one :industry

end
