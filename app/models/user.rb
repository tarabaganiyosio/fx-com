class User < ActiveRecord::Base
    before_save { self.email = self.email.downcase }
    validates :name, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                format: { with: VALID_EMAIL_REGEX },
                uniqueness: { case_sensitive: false }
    has_secure_password
    
    mount_uploader :image, ImageUploader
    
    has_many :comments
    has_many :boards
    
    def self.prefecture_choices
        [["非公開"],
         ["海外在住"],
         ["北海道"],
         ["青森県"],
         ["秋田県"],
         ["岩手県"],
         ["山形県"],
         ["宮城県"],
         ["福島県"],
         ["茨城県"],
         ["栃木県"],
         ["群馬県"],
         ["埼玉県"],
         ["神奈川県"],
         ["千葉県"],
         ["東京都"],
         ["山梨県"],
         ["長野県"],
         ["新潟県"],
         ["富山県"],
         ["石川県"],
         ["福井県"],
         ["岐阜県"],
         ["静岡県"],
         ["愛知県"],
         ["三重県"],
         ["滋賀県"],
         ["京都府"],
         ["大阪府"],
         ["兵庫県"],
         ["奈良県"],
         ["和歌山県"],
         ["鳥取県"],
         ["島根県"],
         ["岡山県"],
         ["広島県"],
         ["山口県"],
         ["徳島県"],
         ["香川県"],
         ["愛媛県"],
         ["高知県"],
         ["福岡県"],
         ["佐賀県"],
         ["長崎県"],
         ["熊本県"],
         ["大分県"],
         ["宮崎県"],
         ["鹿児島県"],
         ["沖縄県"]]
    end
    
    def self.experience_choices
        [["未経験"],
         ["１年未満"],
         ["３年未満"],
         ["５年未満"],
         ["５年以上"]]
    end
    
    # Include default devise modules. Others available are:
    # :confirmable, :lockable and :timeoutable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:twitter]
    
    validates :username, presence: true, uniqueness: true
end
