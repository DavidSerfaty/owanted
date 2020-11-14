class User < ApplicationRecord

  validates :email, presence: true, uniqueness: true,	format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



end
