class Owner < ActiveRecord::Base
  validates :name, presence: true
  has_many :pets
  has_many :comments, as: :commentable

  accepts_nested_attributes_for :pets

end
