class User < ApplicationRecord
  has_many :bets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :first_name, :last_name, :username, :email, presence: true
  validates :username, :email, uniqueness: true
  validates :email, format: { with: /\A[a-z0-9.]+@[a-z]+\.[a-z]{2,3}\z/i }
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
