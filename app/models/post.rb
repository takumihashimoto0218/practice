class Post < ApplicationRecord
  belongs_to :user,optional: true
  has_one_attached :image
  def self.ransackable_attributes(auth_object = nil)
    ["title", "body"]
  end
end
