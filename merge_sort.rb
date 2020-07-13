puts "merge_sort_merge_sort_merge_sort_merge_sort_merge_sort_merge_sort_merge_sort_"
puts " "

def merge_sort(n)

  puts "in-works: #{n}"

  if n.length <= 1
    n
  else

    middle = (n.length / 2).floor
    left = merge_sort( n[0.. middle - 1] )
    right = merge_sort( n[middle.. n.length])
    merge_arr(left,right)
  end
end

def merge_arr(left,right,merged = [])

  if left.empty? && right.empty?
   return merged
 else
   if right.empty? ||
      !right.empty? && !left.empty? && left[0] < right[0]
     merged << left.shift
   else
     merged << right.shift
   end
   merge_arr(left, right, merged)
 end
end


n = [1,4,6,3,2,7,9,8,3,5]
puts "original array: #{n}"
p merge_sort(n)
