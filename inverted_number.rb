class TestVerticalNumbers
  @@count,@@countb, @@lastdigit, @@rem = 0, 0
  @@countc = 0
  def inverted_vertical_num?(num1, num2)
    for loop_var in num1..num2

      if loop_var >= 0 && loop_var <=10
        @@single_digit = loop_var

        if @@single_digit == 0 || @@single_digit == 8 || @@single_digit == 1
          @@count+=1
        end

      end

      if loop_var >= 11 && loop_var <=100

          @@rem = loop_var %10
          @@lastdigit = loop_var/10

          if @@rem == 1 
            if @@lastdigit == 1
              @@countc +=1
            end
          elsif @@rem == 9
            if @@lastdigit == 6
              @@countc +=1
            end
          elsif @@rem == 8
            if @@lastdigit == 6
              @@countc +=1
            end
          elsif @@rem == 6
            if @@lastdigit == 9
              @@countc +=1
            end
          end 
      end

      j = loop_var/10
      j = j%10
      k = loop_var/100
      l = loop_var%10
      @@loop_var1 = 0
      @@reverse = 0

      if loop_var >= 100 && loop_var <=1000
        @@loop_var1 = loop_var
        if(k==1 || k==6 || k==9 || k==8) && (l==1 || l==6 || l==9 || l==8) && (j==1 || j==8 || j==0)

          while @@loop_var1 > 0
          
            z = @@loop_var1%10
            if z == 6
              z = 9
            elsif z == 9
              z = 6
            end
              @@reverse = @@reverse * 10
              @@reverse = @@reverse + z
              @@loop_var1  = @@loop_var1/10;
            end
            if @@reverse==loop_var
              @@countb+=1 
            end
          end
        end
        loop_var+=1
      end
    puts @@countb + @@count +@@countc
  end
end
obj = TestVerticalNumbers.new
obj.inverted_vertical_num?(0, 1000)
