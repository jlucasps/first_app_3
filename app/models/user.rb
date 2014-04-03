class User < ActiveRecord::Base

  FEMALE = 1
  MALE = 2

  validates :name, presence: true, allow_blank: false
  validates :email, presence: true, allow_blank: false

  #validates_uniqueness_of :email

end