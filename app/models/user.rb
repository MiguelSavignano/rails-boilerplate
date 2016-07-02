class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Enum

  validates_uniqueness_of :username
  validates_presence_of   :first_name
  validates_presence_of   :last_name
  validates_presence_of   :username

  #relationships auto generate _id fields

  #special field gems
  mount_uploader :avatar, AvatarUploader #add avatar from url: remote_avatar_url = Faker::Avatar.image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook,:google_oauth2]

  ## Database authenticatable
  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""

  ## Recoverable
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String

  ## Confirmable
  # field :confirmation_token,   type: String
  # field :confirmed_at,         type: Time
  # field :confirmation_sent_at, type: Time
  # field :unconfirmed_email,    type: String # Only if using reconfirmable

  ## Lockable
  # field :failed_attempts, type: Integer, default: 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    type: String # Only if unlock strategy is :email or :both
  # field :locked_at,       type: Time

  # profile data
  field :first_name, type: String
  field :last_name, type: String
  field :gender, type: String
  field :phone, type: Integer
  field :username, type: String

  # social data
  field :verified, type: Boolean
  field :uid, type: String
  field :fb_avatar, type: String
  field :g_avatar, type: String
  field :provider, type: String

  before_validation :create_username
  def create_username
    self.username ||= self.build_user_name
  end

  def self.find_by_username_or_id(username_or_id)
    # user = User.or(username:username_or_id).or(id:username_or_id).first
    User.where(username:username_or_id).first || User.where(id:username_or_id).first
  end

  def self.exists_email?(email)
    where(email: email).exists?
  end

  def self.find_for_facebook_oauth(auth)
    # check if the user with UID for facebook, else create the user
    where(auth.slice(:provider, :uid)).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.remote_avatar_url = auth.info.image.gsub('http://','https://')
      user.fb_avatar = auth.info.image
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
    end
  end

  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    # check if the user exits, else create the user
    user = User.where(:email => data["email"],:provider => "Google").first
    unless user
      user = User.create( name: data["name"],email: data["email"], g_avatar: data['image'],provider: "Google", password: Devise.friendly_token[0,20]  )
    end
    user
  end

  def self.random
    self.skip(rand(self.count)).first
  end

  def build_user_name
    return nil unless self.first_name? && self.last_name?
    username = "#{first_name}#{last_name && last_name.first}".downcase.to_slug.gsub(/-/,"")
    if User.where(username:username).exists?
      number_for_usernames_allready_used = User.where(username:/#{username}/).count
      username = "#{username}#{number_for_usernames_allready_used+1}"
    end
    username
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def shorted_name
    "#{first_name} #{last_name ? last_name.first : ''}"
  end

end

class UserAdmin < User
  # UserAdmin.new._tyope == ""
end
