class House < ActiveRecord::Base
  has_many :users
  has_many :tasks
  validates :house_name, presence: true
end
