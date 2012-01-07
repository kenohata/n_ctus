class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email,:student_id, :password, :password_confirmation, :remember_me
  
  has_one :profile
  has_many :microposts
  has_many :comments
  has_many :direct_messages, foreign_key: "to_id"
  has_many :readings
  has_many :reading_users, class_name: "User", through: :readings
  
  before_validation :email_eq_student_id
  after_create :generate_profile
  
  def generate_profile
    profile = Profile.new(user_id: self.id)
    profile.save
  end
  
  def email_eq_student_id
    email = "j#{student_id}@ed.tus.ac.jp"
  end
  
  def student_number
    self.email[1,7]
  end
  
  def department
    case student_number.to_s[0,2].to_i
      when 62
        "PH"
      when 73
        "EE"
      else
        "none"
    end
  end
  
end
