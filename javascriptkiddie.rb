def num_bytes_index(num , byte)    #indexを返却
    tmp = 0
    tmp_arr=Array::new()
    for i in byte
        if i == num
            tmp_arr.push(tmp)
        end
        tmp +=  1
    end
    return tmp_arr
end


png = [0x89,0x50,0x4e,0x47,0x0d,0x0a,0x1a,0x0a,0x00,0x00,0x00,0x0d,0x49,0x48,0x44,0x52]
file = File.open('bytes')
text = file.read
byte = text.split(' ').map{|tmp| tmp.to_i} # map(&: to_i)のほうが楽でいい
shifter = [0,1,2,3,4,5,6,7,8,9]
j = 0
tmp_arr = Array::new()  # indexを保存するために使用
answer = Array::new()

for i in 0..16
    tmp_arr=num_bytes_index(png[i], byte)
    for t in tmp_arr
        for j in 0..9
            if ((((shifter[j])*16)%672)+i) == t
                 p "i = #{i} shifter is #{shifter[j]}"
                 answer.push(shifter[j])
            end
        end
    end
end
p answer
