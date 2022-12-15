Supplier.create([
  { name: "Test Supplier", email: "test@test.com", phone_number: "111-111-1111" },
])
Product.create!([
  { name: "Test", price: 10.00, description: "testtesttest", inventory: 10, sale: true, supplier_id: 1 },
])
