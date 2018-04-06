def check_palindrome 
  count, count2 = 0, 0
  str = gets
  outerloop = 1 
  for innerloop in 0...str.length
    for outerloop in innerloop+1..str.length

      if (str[innerloop] == str[outerloop])
        count += 1
      end
    end 
  end

  len = str.length / 2
  len1 = len - 1
  len2 =count / 2
  
  if len1+1 == len2
   puts "palindrome not possible"
  elsif  count >= len1 
   puts "palindrome possible"
  elsif 
   puts "palindrome not possible"
  end

  
end
check_palindrome
