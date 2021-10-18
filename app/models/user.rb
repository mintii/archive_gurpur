class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         authentication_keys: [:login]
  
  attr_writer :login
  validates_uniqueness_of :email

  def login
    @login || username || email
  end

  def self.find_authenticatable(login)
    where("username = :value OR email = :value", value: login).first
  end
  
  def self.find_for_database_authentication(conditions)
    conditions = conditions.dup
    login = conditions.delete(:login).downcase
    find_authenticatable(login)
  end
  
  private
    def ensure_proper_name_case
      self.first_name = first_name.capitalize
    end
end
