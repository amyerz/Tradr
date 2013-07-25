class User < ActiveRecord::Base
  has_many :stocks
  authenticates_with_sorcery!
  # attr_accessible :title, :body

  attr_accessible :email, :password, :password_confirmation

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

end
