# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    #error catching
    if !nums
        return []
    end
    #error catching
    if nums.length < 1
        return []
    end
    
    #A dictionary
    indexHash = Hash.new
    
    #Caching the length
    numLength = nums.length-1
    
    for i in (0..numLength)
        if !indexHash.key?((nums[i]).to_s)
            arr = []
            arr << i
            indexHash[(target - nums[i]).to_s] = arr
        else
            value = indexHash[(nums[i]).to_s]
            value << i
            return value
        end
    end
    
    return []
    
end
