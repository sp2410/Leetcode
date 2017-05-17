# @param {Integer} x
# @return {Boolean}

def reverse(x)
    
    if !x
        return 
    end
    
    if ((-10 < x) and (x < 10))
        return x
    end
    
    if x < 0
        roundnum = -x
    else
        roundnum = x
    end
    
    
    iter_num = 0
    
    while roundnum > 0
        y = roundnum%10
        iter_num = (iter_num*10) + y
        roundnum = (roundnum-y)/10
    end
    
    # if (iter_num > 2147483647)
    #     return 0
    # end
        
    if (x < 0)
       return -iter_num
    else
        return iter_num
    end
    
    
end


def is_palindrome(x)
    reverse_x = reverse(x)
    
    if reverse_x < 0
        return false
    end
    
    if reverse_x == x
        return true
    else
        return false
    end
    
end

