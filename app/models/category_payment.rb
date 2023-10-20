class CategoryPayment < ApplicationRecord
  belongs_to :category, class_name: 'Category'
  belongs_to :payment, class_name: 'Payment'
end
