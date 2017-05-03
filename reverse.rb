def sel_reverse(arr,len)
  return arr if len == 0
  return arr.reverse if len > arr.length
  i = 0
  a_l = arr.length

  while i < a_l
    if a_l - i < len
      rev = arr.slice!(i, a_l - i)
      arr.insert(i, rev.reverse)
      arr.flatten!
    else
      rev = arr.slice!(i, len)
      arr.insert(i, rev.reverse)
      arr.flatten!
    end
    i += len
  end
  arr
end
