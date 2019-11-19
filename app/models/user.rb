class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tools, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :first_name, :last_name, :email, :password, :password_confirmation, :created_at, presence: true
end
