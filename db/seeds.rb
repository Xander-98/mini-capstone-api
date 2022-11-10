Supplier.create!([
  {name: "BadTech", email: "reallybadtech@gmail.com", phone_number: "605-475-6964"},
  {name: "Cheap Santa", email: "halwaynorthpole@gmail.com", phone_number: "603-413-4124"},
  {name: "Real Legit", email: "notascam@gmail.com", phone_number: "605-475-6973"},
])
Product.create!([
  {name: "blender", price: "55.0", url: "http:wwww.test.com", description: "It really does just blend everything up for you, it's that good", inventory: nil, sale: false, supplier_id: 3},
  {name: "laptop", price: "950.0", url: "http:wwww.test1.com", description: "A good laptop for the price. Not the hardest hitting but there when you need it.", inventory: nil, sale: false, supplier_id: 3},
  {name: "Test", price: "40.9", url: "http:wwww.test2.com", description: "12345678111", inventory: nil, sale: false, supplier_id: 3},
  {name: "couch", price: "250.0", url: "http:wwww.test3.com", description: "You'll never want to leave the couch again after buying this super comfortable sectional", inventory: nil, sale: false, supplier_id: 3},
  {name: "yoga ball", price: "20.0", url: "http:wwww.test4.com", description: "So you started to get back into yoga, you're gonna need one of these eventually, so just buy it", inventory: nil, sale: false, supplier_id: 3},
  {name: "Medium sized gem", price: "9999.0", url: "http:wwww.test5.com", description: "Not the worlds biggest diamond, but not the smallest, somewhere in between", inventory: nil, sale: false, supplier_id: 3},
  {name: "air pro ", price: "1000.0", url: "http:wwww.test6.com", description: "We finally fixed the create, lets GO!!", inventory: nil, sale: false, supplier_id: 3},
  {name: "console", price: "1.0", url: "http:wwww.test7.com", description: "literally your terminal on your computer, im selling to you", inventory: nil, sale: false, supplier_id: 1}
])
Image.create!([
  {url: "https://www.digitaltechnologylabs.com/wp-content/uploads/2019/06/01.jpg"},
  {url: "https://preview.redd.it/mkbq9m1et8a51.jpg?width=960&crop=smart&auto=webp&s=3af06a32847bb21fda0ad964ad6d1274b6919689"},
  {url: "https://assets-global.website-files.com/5f3c19f18169b62a0d0bf387/60d33be7eedf8e1f31aabcec_BwENfmI0CU5dZGYlSyo142mpfG08-rYgTS-Qm47uMUXN6JXtmdZvtzVzTooUQdXTWmTD8uzF9N6XQJA2vUIMi53tunFyVtvOBJTNfOjHit2P_JkTmFzFsK7ep6Vb9781XZnRAryH.png"}
])
