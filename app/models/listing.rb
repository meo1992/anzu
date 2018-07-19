class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :photos

  #必須項目
  validates :national, presence: true
  validates :bogo, presence: true
  validates :japanese, presence: true
  validates :gengo, presence: true
  # validates :lesson_style, presence: true
  # validates :price_normal, presence: true
  # validates :price_first, presence: true

end
