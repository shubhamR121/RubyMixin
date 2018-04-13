require 'date'
user_details =
[
 {:first_name => 'alex', :last_name => 'newman',  :date_of_birth => '01-05-1982',  :address => 'sapna sangeeta', :role => 'buyer'}, 
 {:first_name => 'alex', :last_name => 'Panc',  :date_of_birth => '12-04-1990',  :address => 'bhanwar kua', :role => 'seller'}, 
 {:first_name => 'Meena', :last_name => 'Pallanipppan',  :date_of_birth => '03-02-1988',  :address => 'sapna sangeeta', :role => 'seller'}, 
 {:first_name => 'Prabhu', :last_name => 'Sharma',  :date_of_birth => '11-02-1992',  :address => 'geeta bhawan', :role => 'seller'}, 
 {:first_name => 'Sundar', :last_name => 'Pichai',  :date_of_birth => '11-05-1983',  :address => 'vijay nagar', :role => 'buyer'}
]

product_details =
[
 {:name => 'bicycle', :seller => 'alex', :price => 3000, category: 'vehicle'},
 {:name => 'car', :seller => 'meena', :price => 250000, category: 'vehicle'},
 {:name => 'jeans', :seller => 'prabhu', :price => 1800, category: 'clothes'},
 {:name => 'shirt', :seller => 'prabhu', :price => 700, category: 'clothes'},
 {:name => 'blue shirt', :seller => 'prabhu', :price => 1200, category: 'clothes'},
 {:name => 't-shirt', :seller => 'prabhu', :price => 600, category: 'clothes'},
 {:name => 'capri', :seller => 'prabhu', :price => 300, category: 'clothes'},
 {:name => 'bike', :seller => 'meena', :price => 60000, category: 'vehicle'},
 {:name => 'scooter', :seller => 'meena', :price => 25000, category: 'vehicle'},
 {:name => 'maruti', :seller => 'meena', :price => 400000, category: 'vehicle'},
 {:name => 'auto', :seller => 'meena', :price => 100000, category: 'vehicle'},
 {:name => 'sweter', :seller => 'prabhu', :price => 1200, category: 'clothes'},
 {:name => 'jacket', :seller => 'prabhu', :price => 3500, category: 'clothes'},
 {:name => 'hat', :seller => 'prabhu', :price => 400, category: 'clothes'},
 {:name => 'doll', :seller => 'alex', :price => 350, category: 'toys'},
 {:name => 'toy car', :seller => 'alex', :price => 250, category: 'toys'},
 {:name => 'bat', :seller => 'alex', :price => 700, category: 'toys'},
 {:name => 'ball', :seller => 'alex', :price => 20, category: 'toys'},
 {:name => 'batman', :seller => 'alex', :price => 300, category: 'toys'},
 {:name => 'barbi doll', :seller => 'alex', :price => 3000, category: 'toys'}
]

class BuyerSeller
  
  def get_name(user)    # It Return list of user objects
    user_info = Array.new 
    for user_object in 0...user.length 
      user_info[user_object] = user[user_object][:first_name] +" "+ user[user_object][:last_name] <<" "<<user[user_object][:date_of_birth]<<" "<<user[user_object][:address]<<" "<<user[user_object][:role]
    end
    return user_info
  end

  def get_buyer_name(user)    # It Return single buyer name
    if user[:role ] == "buyer"
      user_name = user[:first_name ] +" "+ user[:last_name]
    end 
  return user_name
  end
  
  def get_seller_name(user)   # It Return the single seller name
    if user[:role ] == "seller"
      user_name = user[:first_name ] +" "+ user[:last_name]
    end 
  return user_name
  end

  def get_age(dob)   # It Return the age of the users
    count = 0
    user_age = Array.new
    for user_object in 0...dob.length 
      birthday =(Date.parse dob[user_object][:date_of_birth])
      age = (DateTime.now - birthday) / 365.25 
      user_age[count+=1] = age.to_i
    end
    return user_age
  end

  def get_all_buyer_name(user)    # It Return the all buyers 
    count = 0
    all_buyer_name = Array.new
    for user_object in 0...user.length 
      if (user[user_object][:role ] == 'buyer')
        all_buyer_name[count+=1] = user[user_object][:first_name] +" "+ user[user_object][:last_name]
      end 
    end
    return all_buyer_name
  end

  def get_all_seller_name(user)   # It Return the all sellers 
    count = 0
    all_seller_name = Array.new
    for user_object in 0...user.length 
      if (user[user_object][:role ] == 'seller')
        all_seller_name[count+=1] = user[user_object][:first_name] +" "+ user[user_object][:last_name]
      end 
    end
    return all_seller_name
  end

  def get_alex_name(user)   # It Return all user objects whose first name is alex
    count = 0
    unique_name = Array.new
    for user_object in 0...user.length 
      if (user[user_object][:first_name ] == 'alex')
        unique_name[count+=1] = user[user_object][:first_name] +" "+ user[user_object][:last_name]
      end 
    end
    return unique_name
  end
end

class Product
  def get_product(product)   # It Return the product objects
    product_list = Array.new
    for product_object in 0...product.length 
      product_list[product_object] = product[product_object][:name] <<" "<< product[product_object][:seller] <<" "<< product[product_object][:price].to_s << " " << product[product_object][:category]
    end
    return product_list
  end
end

user_obj = BuyerSeller.new
product_obj = Product.new
puts "\n1. User Details :-",user_obj.get_name(user_details)
puts "\n2. Product Details :-",product_obj.get_product(product_details)
puts "\n3. Buyer Names :-",user_obj.get_buyer_name(user_details[0])
puts "\n4. Seller Names :-",user_obj.get_seller_name(user_details[1])
puts "\n5. Age of user:-",user_obj.get_age(user_details)
puts "\n6. All Buyer Names :-",user_obj.get_all_buyer_name(user_details)
puts "\n7. All Seller Names :-",user_obj.get_all_seller_name(user_details)
puts "\n8. all user objects whose first name is alex :-",user_obj.get_alex_name(user_details)