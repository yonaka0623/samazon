class Category < ApplicationRecord
  belong_to :major_category
  has_many :products, dependent: :destroy
  
  extend DisplayList
  scope :display_list, -> (page) { page(page).per(PER) }
  scope :major_categories, -> { pluck(:major_category_name).uniq }
  scope :request_category, -> (category) { find(category.to_i) }
end
