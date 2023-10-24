def checkArray(array)
    if array.length < 2 || array.any? { |str| str.empty? }
      return false
    end
  
    arr1 = array[0].split(//).uniq
    arr2 = array[1].split(//).uniq
  
    result = arr2.all? { |value1| arr1.include?(value1) }
  
    return result
  end
  
  puts checkArray(["abcd", "abc"])  