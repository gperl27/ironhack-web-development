#testing algorithms to work

def get_median(array)
  arr = array.sort
  length = arr.length
  (arr[(length-1)/2] + arr[length/2])/2
end

arr = [2,4,5,6,1,2,3,4,5]
arr2 = [2,4,5,6,1,2,3,4,5,42,1,23,3,4,5,2,2,11,1,1,1,1,1,1]
p get_median arr
p get_median arr2