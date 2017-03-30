class User < ApplicationRecord
  has_many :dogs
  accepts_nested_attributes_for :dogs, reject_if: lambda {|attributes| attributes['kind'].blank?}
end
