#This solution is exceeding time limit, work on better  982/983 test case passed

def length_of_longest_substring(str)
  
  if !str 
    return 0
  end 
  
  s_len = str.length
  
  if s_len == 0
    return 0
  end
  
  
  i = 0 
  len = 0 
  maxlen = 0
  myhash = Hash.new 
  
  while (i < s_len )
    if ! myhash.key? str[i]
      len = len+1 
      myhash[str[i]] = i 
      
      if maxlen < len 
        maxlen = len
      end 
      
    else
      i = myhash[str[i]]
      len = 0 
      myhash = Hash.new
    end 
    
    i= i+1
    
  end
  
  return maxlen
  
end 
