# @param {Integer} x
# @return {Integer}
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
    
    if (iter_num > 2147483647)
        return 0
    end
        
    if (x < 0)
       return -iter_num
    else
        return iter_num
    end
    
    
end
