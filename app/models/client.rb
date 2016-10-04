class Client < ActiveRecord::Base
  validates :name, :presence => true,
    uniqueness: { case_sensitive: false}
  validates :phone, :presence => true
end
