# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)

  if name_hash.to_a == []
    return nil
  else
    lowVal = name_hash.to_a[0][1]
    lowValKey = name_hash.to_a[0][0]
  end
  
  if name_hash.empty?
    return nil
  else
    name_hash.each do |key, value|
      if value < lowVal
        lowVal = value
        lowValKey = key
      end
    end
  end
  lowValKey
end