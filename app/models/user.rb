class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email,:student_id, :password, :password_confirmation, :remember_me, :role
  
  has_one :profile
  has_many :microposts
  has_many :comments
  has_many :direct_messages, foreign_key: "to_id"
  has_many :readings
  has_many :reading_users, class_name: "User", through: :readings
  has_many :pages
  
  after_create :generate_profile
  
  def generate_profile
    profile = Profile.new(user_id: self.id)
    profile.save
  end

  def department
    {
      "61" => "MA",
      "62" => "PH",
      "63" => "II",
      "64" => "II",
      "65" => "II",
      "66" => "II",
      "67" => "II",
      "68" => "II",
      "69" => "II",
      "70" => "II",
      "71" => "II",
      "72" => "II",
      "73" => "EE"
    }[student_id.to_s[0,2]]
  end
  
  # ROLES=%w[admin author]
  def role?(role)
    # ROLES.include? role.to_s
    ["admin","staff"].include? role.to_s
  end
end
