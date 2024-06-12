const products = [
 
  {
  "productId": "543210",
  "productName": "Men's Casual Shirt",
  "category": "Fashion",
  "subCategory": "Men",
  "brand": "BrandA",
  "price": 29.99,
  "discount": 10,
  "stock": 100,
  "rating": 4.3,
  "reviewsCount": 50,
  "description": "A comfortable and stylish casual shirt for men.",
  "specifications": {
    "color": "Blue",
    "size": "L",
    "fabric": "Cotton",
    "washInstructions": "Machine Washable",
    "season": "Spring"
  },
  "bannerPath": "assets/images/fashion/men_casual_shirt.png",
  "images": [
    "assets/images/fashion/men_casual_shirt_1.png",
    "assets/images/fashion/men_casual_shirt_2.png"
  ],
  "features": {
    "Sizes Available": true,
    "Multiple Colors": true,
    "Fabric Type": true,
    "Machine Washable": true,
    "Seasonal Wear": true
  }
},
{
  "productId": "543211",
  "productName": "Women's Summer Dress",
  "category": "Fashion",
  "subCategory": "Women",
  "brand": "BrandB",
  "price": 49.99,
  "discount": 15,
  "stock": 80,
  "rating": 4.6,
  "reviewsCount": 70,
  "description": "A beautiful summer dress perfect for any occasion.",
  "specifications": {
    "color": "Red",
    "size": "M",
    "fabric": "Linen",
    "washInstructions": "Machine Washable",
    "season": "Summer"
  },
  "bannerPath": "assets/images/fashion/women_summer_dress.png",
  "images": [
    "assets/images/fashion/women_summer_dress_1.png",
    "assets/images/fashion/women_summer_dress_2.png"
  ],
  "features": {
    "Sizes Available": true,
    "Multiple Colors": true,
    "Fabric Type": true,
    "Machine Washable": true,
    "Seasonal Wear": true
  }
},
{
  "productId": "543212",
  "productName": "Kids' T-Shirt",
  "category": "Fashion",
  "subCategory": "Kids",
  "brand": "BrandC",
  "price": 19.99,
  "discount": 5,
  "stock": 120,
  "rating": 4.1,
  "reviewsCount": 30,
  "description": "A fun and comfortable t-shirt for kids.",
  "specifications": {
    "color": "Yellow",
    "size": "S",
    "fabric": "Cotton",
    "washInstructions": "Machine Washable",
    "season": "All"
  },
  "bannerPath": "assets/images/fashion/kids_tshirt.png",
  "images": [
    "assets/images/fashion/kids_tshirt_1.png",
    "assets/images/fashion/kids_tshirt_2.png"
  ],
  "features": {
    "Sizes Available": true,
    "Multiple Colors": true,
    "Fabric Type": true,
    "Machine Washable": true,
    "Seasonal Wear": true
  }
},
{
  "productId": "543213",
  "productName": "Running Shoes",
  "category": "Fashion",
  "subCategory": "Footwear",
  "brand": "BrandD",
  "price": 79.99,
  "discount": 20,
  "stock": 50,
  "rating": 4.5,
  "reviewsCount": 90,
  "description": "Comfortable and durable running shoes for all terrains.",
  "specifications": {
    "color": "Black",
    "size": "10",
    "material": "Mesh",
    "waterResistance": "Yes",
    "archSupport": "Yes"
  },
  "bannerPath": "assets/images/fashion/running_shoes.png",
  "images": [
    "assets/images/fashion/running_shoes_1.png",
    "assets/images/fashion/running_shoes_2.png"
  ],
  "features": {
    "Sizes Available": true,
    "Multiple Colors": true,
    "Material Type": true,
    "Water Resistant": true,
    "Arch Support": true
  }
},
{
  "productId": "543214",
  "productName": "Leather Belt",
  "category": "Fashion",
  "subCategory": "Accessories",
  "brand": "BrandE",
  "price": 39.99,
  "discount": 12,
  "stock": 200,
  "rating": 4.0,
  "reviewsCount": 40,
  "description": "A stylish and durable leather belt.",
  "specifications": {
    "color": "Brown",
    "material": "Leather",
    "brand": "BrandE",
    "warranty": "1 Year",
    "weight": "200g"
  },
  "bannerPath": "assets/images/fashion/leather_belt.png",
  "images": [
    "assets/images/fashion/leather_belt_1.png",
    "assets/images/fashion/leather_belt_2.png"
  ],
  "features": {
    "Material Type": true,
    "Multiple Colors": true,
    "Brand": true,
    "Warranty": true,
    "Lightweight": true
  }
},
{
  "productId": "543215",
  "productName": "Gold Necklace",
  "category": "Fashion",
  "subCategory": "Jewelry",
  "brand": "BrandF",
  "price": 199.99,
  "discount": 8,
  "stock": 30,
  "rating": 4.7,
  "reviewsCount": 20,
  "description": "An elegant gold necklace with a beautiful pendant.",
  "specifications": {
    "color": "Gold",
    "material": "Gold",
    "stoneType": "Diamond",
    "hypoallergenic": "Yes",
    "warranty": "2 Years"
  },
  "bannerPath": "assets/images/fashion/gold_necklace.png",
  "images": [
    "assets/images/fashion/gold_necklace_1.png",
    "assets/images/fashion/gold_necklace_2.png"
  ],
  "features": {
    "Material Type": true,
    "Multiple Colors": false,
    "Stone Type": true,
    "Hypoallergenic": true,
    "Warranty": true
  }
},
{
  "productId": "543216",
  "productName": "Digital Watch",
  "category": "Fashion",
  "subCategory": "Watches",
  "brand": "BrandG",
  "price": 149.99,
  "discount": 10,
  "stock": 70,
  "rating": 4.3,
  "reviewsCount": 60,
  "description": "A stylish digital watch with smart features.",
  "specifications": {
    "color": "Silver",
    "material": "Stainless Steel",
    "waterResistance": "50m",
    "smartFeatures": "Yes",
    "warranty": "1 Year"
  },
  "bannerPath": "assets/images/fashion/digital_watch.png",
  "images": [
    "assets/images/fashion/digital_watch_1.png",
    "assets/images/fashion/digital_watch_2.png"
  ],
  "features": {
    "Material Type": true,
    "Multiple Colors": true,
    "Water Resistant": true,
    "Warranty": true,
    "Smart Features": true
  }
},
{
  "productId": "543217",
  "productName": "Polarized Sunglasses",
  "category": "Fashion",
  "subCategory": "Sunglasses",
  "brand": "BrandH",
  "price": 89.99,
  "discount": 15,
  "stock": 90,
  "rating": 4.5,
  "reviewsCount": 45,
  "description": "Stylish polarized sunglasses with UV protection.",
  "specifications": {
    "color": "Black",
    "lensMaterial": "Polycarbonate",
    "frameMaterial": "Metal",
    "uvProtection": "Yes",
    "polarized": "Yes",
    "warranty": "1 Year"
  },
  "bannerPath": "assets/images/fashion/polarized_sunglasses.png",
  "images": [
    "assets/images/fashion/polarized_sunglasses_1.png",
    "assets/images/fashion/polarized_sunglasses_2.png"
  ],
  "features": {
    "Lens Material": true,
    "Frame Material": true,
    "UV Protection": true,
    "Polarized": true,
    "Warranty": true
  }
},
{
  "productId": "543218",
  "productName": "Men's Winter Jacket",
  "category": "Fashion",
  "subCategory": "Outerwear",
  "brand": "BrandI",
  "price": 129.99,
  "discount": 18,
  "stock": 60,
  "rating": 4.6,
  "reviewsCount": 35,
  "description": "A warm and insulated winter jacket for men.",
  "specifications": {
    "color": "Navy",
    "size": "XL",
    "material": "Polyester",
    "waterResistance": "Yes",
    "insulated": "Yes"
  },
  "bannerPath": "assets/images/fashion/mens_winter_jacket.png",
  "images": [
    "assets/images/fashion/mens_winter_jacket_1.png",
    "assets/images/fashion/mens_winter_jacket_2.png"
  ],
  "features": {
    "Sizes Available": true,
    "Multiple Colors": true,
    "Material Type": true,
    "Water Resistant": true,
    "Insulated": true
  }
},
{
  "productId": "543219",
  "productName": "Women's Trench Coat",
  "category": "Fashion",
  "subCategory": "Outerwear",
  "brand": "BrandJ",
  "price": 179.99,
  "discount": 10,
  "stock": 40,
  "rating": 4.8,
  "reviewsCount": 25,
  "description": "An elegant and waterproof trench coat for women.",
  "specifications": {
    "color": "Beige",
    "size": "M",
    "material": "Cotton Blend",
    "waterResistance": "Yes",
    "insulated": "No"
  },
  "bannerPath": "assets/images/fashion/womens_trench_coat.png",
  "images": [
    "assets/images/fashion/womens_trench_coat_1.png",
    "assets/images/fashion/womens_trench_coat_2.png"
  ],
  "features": {
    "Sizes Available": true,
    "Multiple Colors": true,
    "Material Type": true,
    "Water Resistant": true,
    "Insulated": false
  }
},
{
  "productId": "123485",
  "productName": "Laptop XYZ",
  "category": "Electronics",
  "subCategory": "Laptops",
  "brand": "BrandName",
  "price": 699.99,
  "discount": 10,
  "stock": 50,
  "rating": 4.5,
  "reviewsCount": 120,
  "description": "A powerful laptop with excellent performance.",
  "specifications": {
    "color": "Black",
    "screenSize": "15.6 inches",
    "battery": "6000mAh",
    "camera": "Webcam",
    "processor": "Quad-core",
    "ram": "8GB",
    "storage": "512GB SSD",
    "os": "Windows 10"
  },
  "bannerPath": "assets/images/electronics/laptop_xyz.png",
  "images": [
    "assets/images/electronics/laptop_xyz_1.png",
    "assets/images/electronics/laptop_xyz_2.png"
  ],
  "features": {
    "Touchscreen": true,
    "2-in-1 Design": false,
    "Lightweight": true,
    "Long Battery Life": true,
    "High Performance": true
  }
},
{
  "productId": "123486",
  "productName": "Tablet ABC",
  "category": "Electronics",
  "subCategory": "Tablets",
  "brand": "BrandName",
  "price": 399.99,
  "discount": 15,
  "stock": 30,
  "rating": 4.2,
  "reviewsCount": 85,
  "description": "A versatile tablet with stylus support.",
  "specifications": {
    "color": "White",
    "screenSize": "10.1 inches",
    "battery": "7000mAh",
    "camera": "8MP",
    "processor": "Quad-core",
    "ram": "4GB",
    "storage": "64GB",
    "os": "Android"
  },
  "bannerPath": "assets/images/electronics/tablet_abc.png",
  "images": [
    "assets/images/electronics/tablet_abc_1.png",
    "assets/images/electronics/tablet_abc_2.png"
  ],
  "features": {
    "Stylus Support": true,
    "High-Resolution Display": true,
    "LTE/5G Connectivity": false,
    "Compact Size": true,
    "Multi-User Profiles": false
  }
},
{
  "productId": "123487",
  "productName": "Camera DEF",
  "category": "Electronics",
  "subCategory": "Cameras",
  "brand": "BrandName",
  "price": 599.99,
  "discount": 20,
  "stock": 40,
  "rating": 4.7,
  "reviewsCount": 150,
  "description": "A high-quality camera with 4K video recording.",
  "specifications": {
    "color": "Silver",
    "lens": "24-70mm",
    "battery": "1500mAh",
    "sensor": "APS-C",
    "storage": "SD Card",
    "resolution": "24MP"
  },
  "bannerPath": "assets/images/electronics/camera_def.png",
  "images": [
    "assets/images/electronics/camera_def_1.png",
    "assets/images/electronics/camera_def_2.png"
  ],
  "features": {
    "Interchangeable Lenses": true,
    "4K Video Recording": true,
    "WiFi/Bluetooth": true,
    "Weather-Sealed": false,
    "High ISO Range": true
  }
},
{
  "productId": "123488",
  "productName": "Smart TV GHI",
  "category": "Electronics",
  "subCategory": "TVs",
  "brand": "BrandName",
  "price": 799.99,
  "discount": 5,
  "stock": 20,
  "rating": 4.8,
  "reviewsCount": 200,
  "description": "A smart TV with HDR support and voice control.",
  "specifications": {
    "color": "Black",
    "screenSize": "55 inches",
    "resolution": "4K",
    "connectivity": "WiFi, HDMI, USB",
    "refreshRate": "120Hz"
  },
  "bannerPath": "assets/images/electronics/tv_ghi.png",
  "images": [
    "assets/images/electronics/tv_ghi_1.png",
    "assets/images/electronics/tv_ghi_2.png"
  ],
  "features": {
    "Smart TV Features": true,
    "HDR Support": true,
    "4K/8K Resolution": true,
    "Thin Bezel Design": true,
    "Voice Control": true
  }
},
{
  "productId": "123489",
  "productName": "Wireless Headphones JKL",
  "category": "Electronics",
  "subCategory": "Audio",
  "brand": "BrandName",
  "price": 149.99,
  "discount": 10,
  "stock": 60,
  "rating": 4.3,
  "reviewsCount": 90,
  "description": "Noise-cancelling wireless headphones with long battery life.",
  "specifications": {
    "color": "Blue",
    "battery": "30 hours",
    "connectivity": "Bluetooth",
    "weight": "250g",
    "frequencyResponse": "20Hz - 20kHz"
  },
  "bannerPath": "assets/images/electronics/headphones_jkl.png",
  "images": [
    "assets/images/electronics/headphones_jkl_1.png",
    "assets/images/electronics/headphones_jkl_2.png"
  ],
  "features": {
    "Noise Cancellation": true,
    "Wireless Connectivity": true,
    "High-Resolution Audio": false,
    "Waterproof": false,
    "Long Battery Life": true
  }
},
{
  "productId": "123490",
  "productName": "Smartwatch MNO",
  "category": "Electronics",
  "subCategory": "Wearables",
  "brand": "BrandName",
  "price": 199.99,
  "discount": 12,
  "stock": 70,
  "rating": 4.4,
  "reviewsCount": 110,
  "description": "A feature-rich smartwatch with GPS and heart rate monitoring.",
  "specifications": {
    "color": "Black",
    "screenSize": "1.5 inches",
    "battery": "2 days",
    "connectivity": "Bluetooth, WiFi",
    "waterResistance": "50m"
  },
  "bannerPath": "assets/images/electronics/smartwatch_mno.png",
  "images": [
    "assets/images/electronics/smartwatch_mno_1.png",
    "assets/images/electronics/smartwatch_mno_2.png"
  ],
  "features": {
    "Fitness Tracking": true,
    "Heart Rate Monitoring": true,
    "Water Resistant": true,
    "GPS": true,
    "Customizable Watch Faces": true
  }
},
{
  "productId": "123491",
  "productName": "Gaming Console PQR",
  "category": "Electronics",
  "subCategory": "Consoles",
  "brand": "BrandName",
  "price": 499.99,
  "discount": 10,
  "stock": 45,
  "rating": 4.6,
  "reviewsCount": 180,
  "description": "A high-performance gaming console with VR support.",
  "specifications": {
    "color": "White",
    "storage": "1TB",
    "connectivity": "WiFi, HDMI",
    "resolution": "4K"
  },
  "bannerPath": "assets/images/electronics/console_pqr.png",
  "images": [
    "assets/images/electronics/console_pqr_1.png",
    "assets/images/electronics/console_pqr_2.png"
  ],
  "features": {
    "High-Performance Graphics": true,
    "VR Support": true,
    "Backward Compatibility": true,
    "Online Multiplayer": true,
    "Exclusive Titles": true
  }
},
{
  "productId": "123492",
  "productName": "Laptop STU",
  "category": "Electronics",
  "subCategory": "Laptops",
  "brand": "BrandName",
  "price": 899.99,
  "discount": 8,
  "stock": 35,
  "rating": 4.7,
  "reviewsCount": 100,
  "description": "A lightweight laptop with a long battery life.",
  "specifications": {
    "color": "Silver",
    "screenSize": "14 inches",
    "battery": "8000mAh",
    "camera": "HD Webcam",
    "processor": "Hexa-core",
    "ram": "16GB",
    "storage": "1TB SSD",
    "os": "Windows 10"
  },
  "bannerPath": "assets/images/electronics/laptop_stu.png",
  "images": [
    "assets/images/electronics/laptop_stu_1.png",
    "assets/images/electronics/laptop_stu_2.png"
  ],
  "features": {
    "Touchscreen": false,
    "2-in-1 Design": true,
    "Lightweight": true,
    "Long Battery Life": true,
    "High Performance": true
  }
},
{
  "productId": "123493",
  "productName": "Smart TV VWX",
  "category": "Electronics",
  "subCategory": "TVs",
  "brand": "BrandName",
  "price": 999.99,
  "discount": 7,
  "stock": 25,
  "rating": 4.9,
  "reviewsCount": 220,
  "description": "A 4K smart TV with thin bezel design and voice control.",
  "specifications": {
    "color": "Black",
    "screenSize": "65 inches",
    "resolution": "4K",
    "connectivity": "WiFi, HDMI, USB",
    "refreshRate": "120Hz"
  },
  "bannerPath": "assets/images/electronics/tv_vwx.png",
  "images": [
    "assets/images/electronics/tv_vwx_1.png",
    "assets/images/electronics/tv_vwx_2.png"
  ],
  "features": {
    "Smart TV Features": true,
    "HDR Support": true,
    "4K/8K Resolution": true,
    "Thin Bezel Design": true,
    "Voice Control": true
  }
},
{
  "productId": "123494",
  "productName": "Wireless Earbuds YZA",
  "category": "Electronics",
  "subCategory": "Audio",
  "brand": "BrandName",
  "price": 99.99,
  "discount": 5,
  "stock": 80,
  "rating": 4.2,
  "reviewsCount": 50,
  "description": "Compact wireless earbuds with high-resolution audio.",
  "specifications": {
    "color": "Red",
    "battery": "15 hours",
    "connectivity": "Bluetooth",
    "weight": "50g",
    "frequencyResponse": "20Hz - 20kHz"
  },
  "bannerPath": "assets/images/electronics/earbuds_yza.png",
  "images": [
    "assets/images/electronics/earbuds_yza_1.png",
    "assets/images/electronics/earbuds_yza_2.png"
  ],
  "features": {
    "Noise Cancellation": false,
    "Wireless Connectivity": true,
    "High-Resolution Audio": true,
    "Waterproof": false,
    "Long Battery Life": true
  }
},
{
  "productId": "123495",
  "productName": "Action Camera BCD",
  "category": "Electronics",
  "subCategory": "Cameras",
  "brand": "BrandName",
  "price": 299.99,
  "discount": 10,
  "stock": 55,
  "rating": 4.5,
  "reviewsCount": 130,
  "description": "A compact action camera with 4K video recording and waterproof design.",
  "specifications": {
    "color": "Black",
    "battery": "1000mAh",
    "sensor": "CMOS",
    "storage": "MicroSD",
    "resolution": "12MP"
  },
  "bannerPath": "assets/images/electronics/action_camera_bcd.png",
  "images": [
    "assets/images/electronics/action_camera_bcd_1.png",
    "assets/images/electronics/action_camera_bcd_2.png"
  ],
  "features": {
    "Interchangeable Lenses": false,
    "4K Video Recording": true,
    "WiFi/Bluetooth": true,
    "Weather-Sealed": true,
    "High ISO Range": false
  }
},  {
  "productId": "654321",
  "productName": "Modern Sofa",
  "category": "Home",
  "subCategory": "Furniture",
  "brand": "BrandX",
  "price": 599.99,
  "discount": 15,
  "stock": 20,
  "rating": 4.4,
  "reviewsCount": 100,
  "description": "A comfortable and stylish modern sofa.",
  "specifications": {
    "color": "Gray",
    "dimensions": "84 x 34 x 30 inches",
    "material": "Fabric",
    "weight": "120 lbs"
  },
  "bannerPath": "assets/images/home_goods/modern_sofa.png",
  "images": [
    "assets/images/home_goods/modern_sofa_1.png",
    "assets/images/home_goods/modern_sofa_2.png"
  ],
  "features": {
    "Material Type": true,
    "Assembly Required": true,
    "Adjustable": false,
    "Ergonomic": true,
    "Space-Saving": false
  }
},{
  "productId": "654322",
  "productName": "Non-Stick Cookware Set",
  "category": "Home",
  "subCategory": "Kitchen",
  "brand": "BrandY",
  "price": 129.99,
  "discount": 10,
  "stock": 50,
  "rating": 4.7,
  "reviewsCount": 75,
  "description": "A complete set of non-stick cookware for everyday cooking.",
  "specifications": {
    "color": "Black",
    "material": "Aluminum",
    "pieces": 10,
    "weight": "15 lbs"
  },
  "bannerPath": "assets/images/home_goods/cookware_set.png",
  "images": [
    "assets/images/home_goods/cookware_set_1.png",
    "assets/images/home_goods/cookware_set_2.png"
  ],
  "features": {
    "Material Type": true,
    "Dishwasher Safe": true,
    "Non-Stick": true,
    "Microwave Safe": false,
    "Oven Safe": true
  }
},{
  "productId": "654323",
  "productName": "Wall Art",
  "category": "Home",
  "subCategory": "Decor",
  "brand": "BrandZ",
  "price": 79.99,
  "discount": 5,
  "stock": 40,
  "rating": 4.8,
  "reviewsCount": 30,
  "description": "Beautiful wall art to enhance your living space.",
  "specifications": {
    "color": "Multi-color",
    "dimensions": "24 x 36 inches",
    "material": "Canvas",
    "weight": "5 lbs"
  },
  "bannerPath": "assets/images/home_goods/wall_art.png",
  "images": [
    "assets/images/home_goods/wall_art_1.png",
    "assets/images/home_goods/wall_art_2.png"
  ],
  "features": {
    "Material Type": true,
    "Handmade": true,
    "Eco-Friendly": true,
    "Customizable": false,
    "Indoor/Outdoor": true
  }
},
{
  "productId": "654324",
  "productName": "Luxury Bed Sheet Set",
  "category": "Home",
  "subCategory": "Bedding",
  "brand": "BrandA",
  "price": 99.99,
  "discount": 20,
  "stock": 100,
  "rating": 4.5,
  "reviewsCount": 60,
  "description": "A luxurious bed sheet set with high thread count.",
  "specifications": {
    "color": "White",
    "size": "Queen",
    "material": "Egyptian Cotton",
    "threadCount": "1000 TC",
    "weight": "6 lbs"
  },
  "bannerPath": "assets/images/home_goods/bed_sheet_set.png",
  "images": [
    "assets/images/home_goods/bed_sheet_set_1.png",
    "assets/images/home_goods/bed_sheet_set_2.png"
  ],
  "features": {
    "Material Type": true,
    "Thread Count": true,
    "Hypoallergenic": true,
    "Machine Washable": true,
    "Temperature Control": false
  }
},
{
  "productId": "654325",
  "productName": "Bathroom Towel Set",
  "category": "Home",
  "subCategory": "Bath",
  "brand": "BrandB",
  "price": 49.99,
  "discount": 10,
  "stock": 150,
  "rating": 4.2,
  "reviewsCount": 40,
  "description": "A set of plush and quick-drying bathroom towels.",
  "specifications": {
    "color": "Blue",
    "material": "Cotton",
    "pieces": 6,
    "weight": "4 lbs"
  },
  "bannerPath": "assets/images/home_goods/bathroom_towel_set.png",
  "images": [
    "assets/images/home_goods/bathroom_towel_set_1.png",
    "assets/images/home_goods/bathroom_towel_set_2.png"
  ],
  "features": {
    "Material Type": true,
    "Quick-Drying": true,
    "Mold/Mildew Resistant": false,
    "Machine Washable": true,
    "Non-Slip": false
  }
},
{
  "productId": "654326",
  "productName": "LED Desk Lamp",
  "category": "Home",
  "subCategory": "Lighting",
  "brand": "BrandC",
  "price": 39.99,
  "discount": 15,
  "stock": 80,
  "rating": 4.6,
  "reviewsCount": 55,
  "description": "A sleek and adjustable LED desk lamp with dimmable features.",
  "specifications": {
    "color": "White",
    "material": "Plastic",
    "dimensions": "16 x 6 x 18 inches",
    "weight": "3 lbs"
  },
  "bannerPath": "assets/images/home_goods/led_desk_lamp.png",
  "images": [
    "assets/images/home_goods/led_desk_lamp_1.png",
    "assets/images/home_goods/led_desk_lamp_2.png"
  ],
  "features": {
    "Material Type": true,
    "Dimmable": true,
    "Energy Efficient": true,
    "Smart Features": false,
    "Adjustable": true
  }
},{
  "productId": "654327",
  "productName": "Stackable Storage Bins",
  "category": "Home",
  "subCategory": "Storage",
  "brand": "BrandD",
  "price": 29.99,
  "discount": 5,
  "stock": 120,
  "rating": 4.3,
  "reviewsCount": 40,
  "description": "Durable and stackable storage bins for organizing your space.",
  "specifications": {
    "color": "Clear",
    "material": "Plastic",
    "dimensions": "16 x 12 x 10 inches",
    "weight": "2 lbs"
  },
  "bannerPath": "assets/images/home_goods/storage_bins.png",
  "images": [
    "assets/images/home_goods/storage_bins_1.png",
    "assets/images/home_goods/storage_bins_2.png"
  ],
  "features": {
    "Material Type": true,
    "Stackable": true,
    "Foldable": false,
    "Lid Included": true,
    "Waterproof": true
  }
},
{
  "productId": "654328",
  "productName": "Eco-Friendly Cleaning Spray",
  "category": "Home",
  "subCategory": "Cleaning",
  "brand": "BrandE",
  "price": 9.99,
  "discount": 10,
  "stock": 200,
  "rating": 4.7,
  "reviewsCount": 35,
  "description": "A powerful and eco-friendly cleaning spray for multiple surfaces.",
  "specifications": {
    "scent": "Lemon",
    "volume": "500ml",
    "material": "Plant-Based",
    "weight": "1 lb"
  },
  "bannerPath": "assets/images/home_goods/cleaning_spray.png",
  "images": [
    "assets/images/home_goods/cleaning_spray_1.png",
    "assets/images/home_goods/cleaning_spray_2.png"
  ],
  "features": {
    "Eco-Friendly": true,
    "Multi-Surface": true,
    "Scented": true,
    "Disinfectant": true,
    "Refillable": false
  }
},
{
  "productId": "654329",
  "productName": "Cordless Drill",
  "category": "Home",
  "subCategory": "Tools",
  "brand": "BrandF",
  "price": 89.99,
  "discount": 15,
  "stock": 60,
  "rating": 4.5,
  "reviewsCount": 50,
  "description": "A high-performance cordless drill for various DIY projects.",
  "specifications": {
    "color": "Red",
    "material": "Metal",
    "batteryLife": "2 hours",
    "weight": "4 lbs"
  },
  "bannerPath": "assets/images/home_goods/cordless_drill.png",
  "images": [
    "assets/images/home_goods/cordless_drill_1.png",
    "assets/images/home_goods/cordless_drill_2.png"
  ],
  "features": {
    "Material Type": true,
    "Ergonomic": true,
    "Cordless": true,
    "Multi-Functional": true,
    "Warranty": true
  }
},
{
  "productId": "654330",
  "productName": "Handheld Vacuum Cleaner",
  "category": "Home",
  "subCategory": "Cleaning",
  "brand": "BrandG",
  "price": 49.99,
  "discount": 20,
  "stock": 90,
  "rating": 4.2,
  "reviewsCount": 60,
  "description": "A compact and powerful handheld vacuum cleaner for quick cleanups.",
  "specifications": {
    "color": "Black",
    "material": "Plastic",
    "batteryLife": "30 minutes",
    "weight": "2 lbs"
  },
  "bannerPath": "assets/images/home_goods/handheld_vacuum.png",
  "images": [
    "assets/images/home_goods/handheld_vacuum_1.png",
    "assets/images/home_goods/handheld_vacuum_2.png"
  ],
  "features": {
    "Eco-Friendly": false,
    "Multi-Surface": true,
    "Scented": false,
    "Disinfectant": false,
    "Refillable": false
  }
},
  {
  "productId": "987651",
  "productName": "Adjustable Dumbbells",
  "category": "Sports",
  "subCategory": "Fitness",
  "brand": "BrandX",
  "price": 199.99,
  "discount": 20,
  "stock": 30,
  "rating": 4.5,
  "reviewsCount": 80,
  "description": "Adjustable dumbbells for a versatile workout.",
  "specifications": {
    "color": "Black",
    "weightRange": "5-50 lbs",
    "material": "Steel",
    "dimensions": "15 x 8 x 8 inches",
    "weight": "55 lbs"
  },
  "bannerPath": "assets/images/sports/adjustable_dumbbells.png",
  "images": [
    "assets/images/sports/adjustable_dumbbells_1.png",
    "assets/images/sports/adjustable_dumbbells_2.png"
  ],
  "features": {
    "Material Type": true,
    "Adjustable": true,
    "Portable": false,
    "Digital Display": false,
    "Smart Features": false
  }
},
{
  "productId": "987652",
  "productName": "Camping Tent",
  "category": "Sports",
  "subCategory": "Outdoor",
  "brand": "BrandY",
  "price": 149.99,
  "discount": 10,
  "stock": 25,
  "rating": 4.7,
  "reviewsCount": 50,
  "description": "A spacious and weather-resistant camping tent.",
  "specifications": {
    "color": "Green",
    "capacity": "4 people",
    "material": "Polyester",
    "dimensions": "120 x 96 x 60 inches",
    "weight": "12 lbs"
  },
  "bannerPath": "assets/images/sports/camping_tent.png",
  "images": [
    "assets/images/sports/camping_tent_1.png",
    "assets/images/sports/camping_tent_2.png"
  ],
  "features": {
    "Material Type": true,
    "Weather Resistant": true,
    "Portable": true,
    "Eco-Friendly": false,
    "Durable": true
  }
}
,{
  "productId": "987653",
  "productName": "Running T-Shirt",
  "category": "Sports",
  "subCategory": "Sportswear",
  "brand": "BrandZ",
  "price": 29.99,
  "discount": 5,
  "stock": 100,
  "rating": 4.8,
  "reviewsCount": 45,
  "description": "A breathable and moisture-wicking running t-shirt.",
  "specifications": {
    "color": "Blue",
    "size": "M",
    "material": "Polyester",
    "weight": "0.5 lbs"
  },
  "bannerPath": "assets/images/sports/running_tshirt.png",
  "images": [
    "assets/images/sports/running_tshirt_1.png",
    "assets/images/sports/running_tshirt_2.png"
  ],
  "features": {
    "Material Type": true,
    "Breathable": true,
    "Moisture-Wicking": true,
    "Stretchable": true,
    "Anti-Odor": false
  }
}
,{
  "productId": "987654",
  "productName": "Trail Running Shoes",
  "category": "Sports",
  "subCategory": "Footwear",
  "brand": "BrandA",
  "price": 119.99,
  "discount": 15,
  "stock": 60,
  "rating": 4.6,
  "reviewsCount": 70,
  "description": "Durable and slip-resistant trail running shoes.",
  "specifications": {
    "color": "Red",
    "size": "10",
    "material": "Mesh",
    "weight": "1.2 lbs"
  },
  "bannerPath": "assets/images/sports/trail_running_shoes.png",
  "images": [
    "assets/images/sports/trail_running_shoes_1.png",
    "assets/images/sports/trail_running_shoes_2.png"
  ],
  "features": {
    "Material Type": true,
    "Waterproof": true,
    "Breathable": true,
    "Slip-Resistant": true,
    "Cushioned": true
  }
}
,{
  "productId": "987655",
  "productName": "Soccer Jersey",
  "category": "Sports",
  "subCategory": "Team",
  "brand": "BrandB",
  "price": 49.99,
  "discount": 10,
  "stock": 80,
  "rating": 4.3,
  "reviewsCount": 30,
  "description": "A lightweight and customizable soccer jersey.",
  "specifications": {
    "color": "White",
    "size": "L",
    "material": "Polyester",
    "weight": "0.4 lbs"
  },
  "bannerPath": "assets/images/sports/soccer_jersey.png",
  "images": [
    "assets/images/sports/soccer_jersey_1.png",
    "assets/images/sports/soccer_jersey_2.png"
  ],
  "features": {
    "Material Type": true,
    "Customizable": true,
    "Lightweight": true,
    "Durable": true,
    "Eco-Friendly": false
  }
},
 {
    "productId": "123456",
    "productName": "Action Video Game",
    "category": "Games",
    "subCategory": "Video",
    "brand": "GameMaster",
    "price": 49.99,
    "discount": 10,
    "stock": 100,
    "rating": 4.7,
    "reviewsCount": 120,
    "description": "An adrenaline-pumping action video game for gaming enthusiasts.",
    "specifications": {
      "platform": "PlayStation 5",
      "genre": "Action",
      "mode": "Single Player",
      "releaseDate": "2023-05-15"
    },
    "bannerPath": "assets/images/Games/action_video_game.png",
    "images": [
      "assets/images/Games/action_video_game_1.png",
      "assets/images/Games/action_video_game_2.png"
    ]
  },
  {
    "productId": "123457",
    "productName": "Strategy Board Game",
    "category": "Games",
    "subCategory": "Board",
    "brand": "Strategic Games Inc.",
    "price": 39.99,
    "discount": 15,
    "stock": 80,
    "rating": 4.5,
    "reviewsCount": 90,
    "description": "A challenging strategy board game for tactical minds.",
    "specifications": {
      "playerCount": "2-4 players",
      "age": "10+",
      "duration": "60 minutes",
      "theme": "Medieval"
    },
    "bannerPath": "assets/images/Games/strategy_board_game.png",
    "images": [
      "assets/images/Games/strategy_board_game_1.png",
      "assets/images/Games/strategy_board_game_2.png"
    ]
  },
  {
    "productId": "123458",
    "productName": "Fantasy Card Game",
    "category": "Games",
    "subCategory": "Card",
    "brand": "Fantasy Realms",
    "price": 19.99,
    "discount": 5,
    "stock": 150,
    "rating": 4.8,
    "reviewsCount": 80,
    "description": "A captivating fantasy card game with mythical creatures and epic battles.",
    "specifications": {
      "playerCount": "2-6 players",
      "age": "12+",
      "duration": "45 minutes",
      "theme": "Fantasy"
    },
    "bannerPath": "assets/images/Games/fantasy_card_game.png",
    "images": [
      "assets/images/Games/fantasy_card_game_1.png",
      "assets/images/Games/fantasy_card_game_2.png"
    ]
  },
  {
    "productId": "123459",
    "productName": "1000-Piece Jigsaw Puzzle",
    "category": "Games",
    "subCategory": "Puzzles",
    "brand": "PuzzleWorld",
    "price": 24.99,
    "discount": 10,
    "stock": 120,
    "rating": 4.6,
    "reviewsCount": 70,
    "description": "A challenging 1000-piece jigsaw puzzle for hours of Games.",
    "specifications": {
      "dimensions": "27 x 20 inches",
      "difficulty": "Advanced",
      "theme": "Nature"
    },
    "bannerPath": "assets/images/Games/jigsaw_puzzle.png",
    "images": [
      "assets/images/Games/jigsaw_puzzle_1.png",
      "assets/images/Games/jigsaw_puzzle_2.png"
    ]
  },
  {
    "productId": "123460",
    "productName": "Educational Science Kit",
    "category": "Games",
    "subCategory": "Educational",
    "brand": "ScienceWiz",
    "price": 29.99,
    "discount": 15,
    "stock": 50,
    "rating": 4.7,
    "reviewsCount": 60,
    "description": "A fun and educational science kit for young scientists.",
    "specifications": {
      "age": "8+",
      "experiments": 20,
      "topic": "Chemistry",
      "material": "Non-Toxic"
    },
    "bannerPath": "assets/images/Games/science_kit.png",
    "images": [
      "assets/images/Games/science_kit_1.png",
      "assets/images/Games/science_kit_2.png"
    ]
  },
  {
    "productId": "123461",
    "productName": "Action Figures Set",
    "category": "Games",
    "subCategory": "Figures",
    "brand": "ActionFigure Co.",
    "price": 39.99,
    "discount": 10,
    "stock": 70,
    "rating": 4.6,
    "reviewsCount": 50,
    "description": "A set of action figures featuring popular characters from movies and comics.",
    "specifications": {
      "characters": 5,
      "material": "Plastic",
      "height": "6 inches",
      "packaging": "Collector's Box"
    },
    "bannerPath": "assets/images/Games/action_figures.png",
    "images": [
      "assets/images/Games/action_figures_1.png",
      "assets/images/Games/action_figures_2.png"
    ]
  },
  {
    "productId": "123462",
    "productName": "Collectible Coins Set",
    "category": "Games",
    "subCategory": "Collectibles",
    "brand": "NumisMasters",
    "price": 99.99,
    "discount": 20,
    "stock": 30,
    "rating": 4.9,
    "reviewsCount": 40,
    "description": "A rare and valuable set of collectible coins from around the world.",
    "specifications": {
      "coins": 10,
      "material": "Silver",
      "packaging": "Display Case",
      "authenticity": "Certified"
    },
    "bannerPath": "assets/images/Games/collectible_coins.png",
    "images": [
      "assets/images/Games/collectible_coins_1.png",
      "assets/images/Games/collectible_coins_2.png"
    ]
  },
  {
    "productId": "123463",
    "productName": "Gaming Headset",
    "category": "Games",
    "subCategory": "Accessories",
    "brand": "SoundMaster",
    "price": 79.99,
    "discount": 15,
    "stock": 100,
    "rating": 4.8,
    "reviewsCount": 90,
    "description": "A high-quality gaming headset for immersive audio experience.",
    "specifications": {
      "compatibility": "PC, PlayStation, Xbox",
      "connectivity": "Wired",
      "sound": "Surround",
      "microphone": "Detachable"
    },
    "bannerPath": "assets/images/Games/gaming_headset.png",
    "images": [
      "assets/images/Games/gaming_headset_1.png",
      "assets/images/Games/gaming_headset_2.png"
    ]
  },
  {
    "productId": "123464",
    "productName": "Fantasy Role-Playing Game",
    "category": "Games",
    "subCategory": "RPGs",
    "brand": "DragonQuest",
    "price": 59.99,
    "discount": 10,
    "stock": 80,
    "rating": 4.7,
    "reviewsCount": 120,
    "description": "Embark on an epic adventure with this fantasy role-playing game.",
    "specifications": {
      "platform": "PC, PlayStation, Xbox",
      "mode": "Single Player",
      "duration": "40+ hours",
      "releaseDate": "2022-10-20"
    },
    "bannerPath": "assets/images/Games/rpg_game.png",
    "images": [
      "assets/images/Games/rpg_game_1.png",
      "assets/images/Games/rpg_game_2.png"
    ]
  },
  {
    "productId": "123465",
    "productName": "Wooden Brain Teaser Puzzle",
    "category": "Games",
    "subCategory": "Puzzles",
    "brand": "BrainTeasers",
    "price": 14.99,
    "discount": 5,
    "stock": 150,
    "rating": 4.5,
    "reviewsCount": 80,
    "description": "A challenging wooden brain teaser puzzle for puzzle enthusiasts.",
    "specifications": {
      "difficulty": "Intermediate",
      "material": "Wood",
      "dimensions": "5 x 5 x 5 inches"
    },
    "bannerPath": "assets/images/Games/wooden_puzzle.png",
    "images": [
      "assets/images/Games/wooden_puzzle_1.png",
      "assets/images/Games/wooden_puzzle_2.png"
    ]
  },
   {
    "productId": "987651",
    "productName": "Smart Fitness Tracker",
    "category": "Health",
    "subCategory": "Fitness",
    "brand": "FitTech",
    "price": 99.99,
    "discount": 10,
    "stock": 100,
    "rating": 4.5,
    "reviewsCount": 120,
    "description": "A smart fitness tracker to monitor your daily activity and workouts.",
    "specifications": {
      "display": "Color Touchscreen",
      "sensors": "Heart Rate, GPS, Accelerometer",
      "waterResistance": "IP67",
      "batteryLife": "Up to 7 days",
      "connectivity": "Bluetooth"
    },
    "bannerPath": "assets/images/personal/fitness_tracker.png",
    "images": [
      "assets/images/personal/fitness_tracker_1.png",
      "assets/images/personal/fitness_tracker_2.png"
    ]
  },
  {
    "productId": "987652",
    "productName": "Digital Thermometer",
    "category": "Health",
    "subCategory": "Medical",
    "brand": "MediCheck",
    "price": 19.99,
    "discount": 5,
    "stock": 150,
    "rating": 4.8,
    "reviewsCount": 80,
    "description": "A reliable digital thermometer for accurate temperature readings.",
    "specifications": {
      "measurementMethod": "Oral, Rectal, Axillary",
      "measurementRange": "32°C to 42.9°C",
      "responseTime": "10 seconds",
      "memory": "Stores last reading"
    },
    "bannerPath": "assets/images/personal/digital_thermometer.png",
    "images": [
      "assets/images/personal/digital_thermometer_1.png",
      "assets/images/personal/digital_thermometer_2.png"
    ]
  },
  {
    "productId": "987653",
    "productName": "Multivitamin Tablets",
    "category": "Health",
    "subCategory": "Supplements",
    "brand": "VitaPlus",
    "price": 29.99,
    "discount": 10,
    "stock": 200,
    "rating": 4.6,
    "reviewsCount": 90,
    "description": "Daily multivitamin tablets to support overall health and well-being.",
    "specifications": {
      "formulation": "Tablets",
      "ingredients": "Vitamins, Minerals",
      "servingSize": "1 tablet per day",
      "quantity": "60 tablets"
    },
    "bannerPath": "assets/images/personal/multivitamin_tablets.png",
    "images": [
      "assets/images/personal/multivitamin_tablets_1.png",
      "assets/images/personal/multivitamin_tablets_2.png"
    ]
  },
  {
    "productId": "987654",
    "productName": "Anti-Aging Cream",
    "category": "Health",
    "subCategory": "Skincare",
    "brand": "Youthful Glow",
    "price": 49.99,
    "discount": 15,
    "stock": 80,
    "rating": 4.7,
    "reviewsCount": 60,
    "description": "An advanced anti-aging cream to reduce fine lines and wrinkles.",
    "specifications": {
      "skinType": "All Skin Types",
      "usage": "Morning and Night",
      "keyIngredients": "Retinol, Hyaluronic Acid, Vitamin C",
      "volume": "50ml"
    },
    "bannerPath": "assets/images/personal/anti_aging_cream.png",
    "images": [
      "assets/images/personal/anti_aging_cream_1.png",
      "assets/images/personal/anti_aging_cream_2.png"
    ]
  },
  {
    "productId": "987655",
    "productName": "Moisturizing Shampoo",
    "category": "Health",
    "subCategory": "Haircare",
    "brand": "SilkLocks",
    "price": 14.99,
    "discount": 5,
    "stock": 120,
    "rating": 4.5,
    "reviewsCount": 70,
    "description": "A nourishing shampoo for hydrated and silky-smooth hair.",
    "specifications": {
      "hairType": "All Hair Types",
      "formulation": "Liquid",
      "volume": "300ml",
      "scent": "Coconut"
    },
    "bannerPath": "assets/images/personal/moisturizing_shampoo.png",
    "images": [
      "assets/images/personal/moisturizing_shampoo_1.png",
      "assets/images/personal/moisturizing_shampoo_2.png"
    ]
  },
  {
    "productId": "987656",
    "productName": "Electric Toothbrush",
    "category": "Health",
    "subCategory": "Oral",
    "brand": "DentaCare",
    "price": 39.99,
    "discount": 10,
    "stock": 70,
    "rating": 4.6,
    "reviewsCount": 50,
    "description": "An electric toothbrush for superior plaque removal and gum health.",
    "specifications": {
      "brushingModes": "3 modes (Clean, Sensitive, Massage)",
      "timer": "2-minute timer",
      "charging": "USB Charging",
      "bristleType": "Soft"
    },
    "bannerPath": "assets/images/personal/electric_toothbrush.png",
    "images": [
      "assets/images/personal/electric_toothbrush_1.png",
      "assets/images/personal/electric_toothbrush_2.png"
    ]
  },
  {
    "productId": "987657",
    "productName": "First Aid Kit",
    "category": "Health",
    "subCategory": "First Aid",
    "brand": "SafetyGuard",
    "price": 29.99,
    "discount": 10,
    "stock": 100,
    "rating": 4.7,
    "reviewsCount": 90,
    "description": "A comprehensive first aid kit for home, office, or travel.",
    "specifications": {
      "contents": "Bandages, Gauze, Antiseptic Wipes, Scissors, Tweezers, etc.",
      "compact": "Compact and Portable",
      "caseMaterial": "Durable Plastic",
      "size": "10 x 7 x 3 inches"
    },
    "bannerPath": "assets/images/personal/first_aid_kit.png",
    "images": [
      "assets/images/personal/first_aid_kit_1.png",
      "assets/images/personal/first_aid_kit_2.png"
    ]
  },
  {
    "productId": "987658",
    "productName": "Sunscreen Lotion SPF 50+",
    "category": "Health",
    "subCategory": "Skincare",
    "brand": "SunSafe",
    "price": 19.99,
    "discount": 5,
    "stock": 150,
    "rating": 4.8,
    "reviewsCount": 80,
    "description": "A high-protection sunscreen lotion to shield against harmful UV rays.",
    "specifications": {
      "protectionLevel": "SPF 50+",
      "waterResistance": "Water Resistant (80 minutes)",
      "application": "Broad Spectrum"
    },
    "bannerPath": "assets/images/personal/sunscreen_lotion.png",
    "images": [
      "assets/images/personal/sunscreen_lotion_1.png",
      "assets/images/personal/sunscreen_lotion_2.png"
    ]
  },
  {
    "productId": "987659",
    "productName": "Blood Pressure Monitor",
    "category": "Health",
    "subCategory": "Medical",
    "brand": "MediCheck",
    "price": 39.99,
    "discount": 10,
    "stock": 100,
    "rating": 4.7,
    "reviewsCount": 90,
    "description": "A digital blood pressure monitor for accurate home monitoring.",
    "specifications": {
      "cuffSize": "Fits 9-17 inches arm circumference",
      "memory": "Stores 120 readings for 2 users",
      "display": "Large LCD Display",
      "power": "Battery operated (Batteries included)"
    },
    "bannerPath": "assets/images/personal/bp_monitor.png",
    "images": [
      "assets/images/personal/bp_monitor_1.png",
      "assets/images/personal/bp_monitor_2.png"
    ]
  },
  {
    "productId": "987660",
    "productName": "Omega-3 Fish Oil Capsules",
    "category": "Health",
    "subCategory": "Supplements",
    "brand": "OmegaHealth",
    "price": 24.99,
    "discount": 10,
    "stock": 120,
    "rating": 4.6,
    "reviewsCount": 80,
    "description": "High-potency Omega-3 fish oil capsules for heart and brain health.",
    "specifications": {
      "omega3Content": "1000mg per serving",
      "servingSize": "2 capsules per day",
      "quantity": "60 capsules",
      "certification": "Third-party tested"
    },
    "bannerPath": "assets/images/personal/omega3_capsules.png",
    "images": [
      "assets/images/personal/omega3_capsules_1.png",
      "assets/images/personal/omega3_capsules_2.png"
    ]
  }
];