class User < ActiveRecord::Base
  has_secure_password
  has_many :tasks
  belongs_to :house
  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  validates :username, presence: true , uniqueness: true,  format: { with: /\A[a-zA-Z0-9]+\z/,
    message: "Only allows letters and no spaces." }
  validates :password,  confirmation: true, length: { in: 6..20 } , unless: ->(u){ u.password.blank? }  #16.59
  validates :password_confirmation, presence: true, unless: ->(u){ u.password.blank? }
end
