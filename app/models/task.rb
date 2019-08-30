class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :house
  validates :content, presence: { message: "must be given please" }
  validates :content, length:  { maximum: 28 }
end
