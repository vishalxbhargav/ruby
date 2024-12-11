def caesar_cipher(s,a)
  ans= "";
  # s=s.downcase
  s.each_byte do |c|
    if c>=97&&c<=122
      t=(c-97+a)%26;
      ans<<(97+t)
    elsif c>=65&&c<=91
      t=(c-65+a)%26;
      ans<<(65+t)
    else
      ans<<c
    end
  end
  ans
end
def caesar_cipher(s,a)
  s.each_byte.map{|c|
  if c.between?(65, 90) then (65 + (c - 65 + a) % 26).chr
  elsif c.between?(97,122) then (97+(c-97+a)%26).chr
  else c.chr
  end 
  }.join
end

p caesar_cipher("What a string!", 5)
