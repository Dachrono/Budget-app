# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

category1 = Category.create(name: "Comida", icon: "its an icon", user_id: 1)
category2 = Category.create(name: "Diversion", icon: "its an icon", user_id: 1)
category3 = Category.create(name: "Casa", icon: "its an icon", user_id: 1)
category4 = Category.create(name: "Personal", icon: "its an icon", user_id: 1)

payment1 = Payment.create(name: "Burgers", amount: 1000, author_id: 1)
payment2 = Payment.create(name: "Pizza", amount: 1000, author_id: 1)
payment3 = Payment.create(name: "Bar", amount: 500, author_id: 1)
payment4 = Payment.create(name: "Cine", amount: 500, author_id: 1)
payment5 = Payment.create(name: "Pago de agua", amount: 300, author_id: 1)
payment6 = Payment.create(name: "Pago de internet", amount: 500, author_id: 1)
payment7 = Payment.create(name: "Cariñosas", amount: 500, author_id: 1)
payment8 = Payment.create(name: "REsident EVil", amount: 500, author_id: 1)

category_payment1 = CategoryPayment.create(category_id: 1, payment_id: 1)
category_payment2 = CategoryPayment.create(category_id: 1, payment_id: 2)
category_payment3 = CategoryPayment.create(category_id: 2, payment_id: 3)
category_payment4 = CategoryPayment.create(category_id: 2, payment_id: 4)
category_payment5 = CategoryPayment.create(category_id: 3, payment_id: 5)
category_payment6 = CategoryPayment.create(category_id: 3, payment_id: 6)
category_payment7 = CategoryPayment.create(category_id: 4, payment_id: 7)
category_payment8 = CategoryPayment.create(category_id: 4, payment_id: 8)

category1 = Category.create(name: "Comida", icon: "its an icon", user_id: 2)
category2 = Category.create(name: "Diversion", icon: "its an icon", user_id: 2)
category3 = Category.create(name: "Casa", icon: "its an icon", user_id: 2)
category4 = Category.create(name: "Personal", icon: "its an icon", user_id: 2)

payment1 = Payment.create(name: "Burgers", amount: 1000, author_id: 2)
payment2 = Payment.create(name: "Pizza", amount: 1000, author_id: 2)
payment3 = Payment.create(name: "Bar", amount: 500, author_id: 2)
payment4 = Payment.create(name: "Cine", amount: 500, author_id: 2)
payment5 = Payment.create(name: "Pago de agua", amount: 300, author_id: 2)
payment6 = Payment.create(name: "Pago de internet", amount: 500, author_id: 2)
payment7 = Payment.create(name: "Cariñosas", amount: 500, author_id: 2)
payment8 = Payment.create(name: "REsident EVil", amount: 500, author_id: 2)

category_payment1 = CategoryPayment.create(category_id: 5, payment_id: 9)
category_payment2 = CategoryPayment.create(category_id: 5, payment_id: 10)
category_payment3 = CategoryPayment.create(category_id: 6, payment_id: 11)
category_payment4 = CategoryPayment.create(category_id: 6, payment_id: 12)
category_payment5 = CategoryPayment.create(category_id: 7, payment_id: 13)
category_payment6 = CategoryPayment.create(category_id: 7, payment_id: 14)
category_payment7 = CategoryPayment.create(category_id: 8, payment_id: 15)
category_payment8 = CategoryPayment.create(category_id: 9, payment_id: 16)
