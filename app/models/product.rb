class Product < ActiveRecord::Base
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

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

  private
    # ensure product not being referenced by line_item before deleting it
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'product is being referenced in cart')
        return false
      end
    end
end
