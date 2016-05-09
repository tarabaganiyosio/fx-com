class Board < ActiveRecord::Base
    belongs_to :board
    belongs_to :user
    has_many :writes
    validates :title, presence: true, length: { in: 4..127 }
end
