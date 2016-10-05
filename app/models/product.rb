class Product < ActiveRecord::Base

  validates :name,  :presence => true,
    uniqueness: { case_sensitive: false }
  validates :description, :presence => true
  validates :price, :presence => true,
    :numericality => {:greater_than_or_equal_to => 0.01}
  validates :quantity, :presence => true,
    :numericality => {:greater_than_or_equal_to => 0}

  # validates :image_url, :format => {
  #   :with     => /\A\.(gif|jpg|png)\z/,
  #   :message  => 'image format must be in GIF, JPG, PNG'
  # }
end
