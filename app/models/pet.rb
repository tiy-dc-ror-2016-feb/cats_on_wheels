class Pet < ActiveRecord::Base
  belongs_to :owner
  has_many :visits, dependent: :destroy
end
