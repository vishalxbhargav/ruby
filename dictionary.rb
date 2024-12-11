def optimized_hash(s, dic)
  dic_set = dic.to_set
  ans = Hash.new(0)
  n = s.length

  for i in 0...n
    for j in i+1..n
      word = s[i...j]
      ans[word] += 1 if dic_set.include?(word)
    end
  end

  ans
end

dictionary = ["below", "low", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
puts optimized_hash("below", dictionary)

