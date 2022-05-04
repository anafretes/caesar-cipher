def caesar_cipher(str, shift)

  split_str = str.split(//)

  new_arr = split_str.map {|i| i.ord}

  cipher_arr = new_arr.map do |i|
    if (i == 32 || i == 33 || i == 63 || i == 44 || i == 45 || i == 46 || i == 95 )
      next i.chr
    end
    cipher_num = i + shift
    if (cipher_num > 64 && cipher_num < 91) || (cipher_num > 96 && cipher_num < 123)
      i = cipher_num.chr
    elsif (cipher_num > 90 && i < 91)
      new_shift = cipher_num - 90
      i = (64 + new_shift).chr
    elsif cipher_num > 122
      new_shift = cipher_num - 122
      i = (96 + new_shift).chr
    elsif cipher_num < 65
      new_shift = 65 - cipher_num
      i = (91 - new_shift).chr
    end
  end
  new_cipher_str =  cipher_arr.join("")
end



puts caesar_cipher("What a string!", 5)
