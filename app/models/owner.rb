class Owner < ActiveRecord::Base
  validates :name, presence: true
end
