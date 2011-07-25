class Canteen < ActiveRecord::Base
  has_many :stalls, :dependent => :destroy
  accepts_nested_attributes_for :stalls, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

end
