start_seeding = Time.now

coupons = [
    { coupon_code: "ASD123", store: "Chipotle" },
    { coupon_code: "XYZ098", store: "Jamba Juice" }
]

coupons.each{ | coupon | Coupon.create( coupon ) }

done_seeding = Time.now

puts "🌱🌱🌱🌱🌱🌱 Seeded: #{ done_seeding - start_seeding } secs. 🌱🌱🌱🌱🌱🌱"