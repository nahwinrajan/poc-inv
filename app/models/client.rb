class Client < ActiveRecord::Base
  validates :name, :presence => true,
    uniqueness: { case_sensitive: false}
  # validates :phone, :presence => true
  #   :format => {
  #     :with => /\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/,
  #     :message => 'invalid phone number, should only contain ( ) - and numbers'
  #   }
end
