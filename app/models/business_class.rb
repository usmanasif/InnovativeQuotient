class BusinessClass < ApplicationRecord


  belongs_to :business


  enum name: %w(primary secondary)
end
