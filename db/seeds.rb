# User.create!([
#   {email: "test@test.com", encrypted_password: "$2a$10$hLllRK57U0P2dKv8Gzg0.eNpQlKoLkltKFAPbgBYY2OXA1gMlTUSW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-11-24 03:08:16", last_sign_in_at: "2015-11-24 03:07:42", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
# ])
Image.create!([
  {url: "https://images.unsplash.com/uploads/141132428651583f8c0fd/5cde60f6?fit=crop&fm=jpg&h=750&ixjsv=2.0.0&ixlib=rb-0.3.5&q=80&w=1450", product_id: 1},
  {url: "https://images.unsplash.com/photo-1441757801704-6a71cffed732?fit=crop&fm=jpg&h=750&ixjsv=2.0.0&ixlib=rb-0.3.5&q=80&w=1450", product_id: 1},
  {url: "https://images.unsplash.com/44/E5KMvPp9SsCnqmEGUwAS_2014-08-10%2012.56.40%201.jpg?fit=crop&fm=jpg&h=750&ixjsv=2.0.0&ixlib=rb-0.3.5&q=80&w=1450", product_id: 1},
  {url: "https://images.unsplash.com/photo-1416590962774-96164c4cd4b2?fit=crop&fm=jpg&h=750&ixjsv=2.0.0&ixlib=rb-0.3.5&q=80&w=1450", product_id: 1},
  {url: "https://snap-photos.s3.amazonaws.com/img-thumbs/960w/LIB0TB3A8K.jpg", product_id: 2},
  {url: "https://snap-photos.s3.amazonaws.com/img-thumbs/960w/OTQJFKY0L7.jpg", product_id: 3},
  {url: "https://snap-photos.s3.amazonaws.com/img-thumbs/960w/2J6UQ7Q46T.jpg", product_id: 4}
])
Order.create!([
  {user_id: nil, product_id: nil, quantity: 3, subtotal: nil, tax: nil, total: nil},
  {user_id: nil, product_id: nil, quantity: 3, subtotal: nil, tax: nil, total: nil},
  {user_id: nil, product_id: nil, quantity: 3, subtotal: nil, tax: nil, total: nil},
  {user_id: nil, product_id: nil, quantity: 3, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 5, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 4, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 4, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 3, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 3, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 9, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 7, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 8, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 9, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 4, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 4, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 4, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 4, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 4, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 4, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 4, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 6, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 90, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 50, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 60, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: 75, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 2, quantity: 59, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 1, quantity: 45, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 2, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 1, quantity: 3, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 2, quantity: 3, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 4, quantity: 50, subtotal: nil, tax: nil, total: nil}
])
Product.create!([
  {name: "Colombian", price: "12.0", description: "Heavy in body and intensely aromatic. Our most popular blend.", inventory_status: true, supplier_id: 1, user_id: nil},
  {name: "Kona", price: "15.0", description: "Medium-bodied and balanced (bright but not sharp). A hint of chocoloate.", inventory_status: true, supplier_id: 2, user_id: nil},
  {name: "Ethiopian", price: "13.0", description: "Complex, fruity flavor that resembles a delicious, dry red wine.", inventory_status: true, supplier_id: 1, user_id: nil},
  {name: "Bourbon", price: "14.0", description: "Slightly sweeter with a sort of caramel quality, also have a nice, crisp acidity.", inventory_status: true, supplier_id: 2, user_id: nil}
])
Supplier.create!([
  {name: "Stumptown Coffee", email: "info@stumptowncoffee", phone: "123-456-7890"},
  {name: "Metropolis Coffee", email: "info@metropolis.com", phone: "987-654-3210"}
])
