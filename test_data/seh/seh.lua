data32={}
for i=1,32 do  
  data32[i]=2^(32-i)  
end  

function d2b(arg)
	local temp = 0 
	if arg < 0 then
		temp = 2^32 + arg
	else
		temp = arg
	end
    local tr={}  
    for i=1,32 do  
        if temp >= data32[i] then 
          tr[i]=1  
          temp=temp-data32[i]  
        else  
          tr[i]=0  
        end  
    end  
    return tr  
end  

function b2d(arg)  
    local nr=0  
    for i=1,32 do  
        if arg[i] ==1 then  
          nr=nr+2^(32-i)  
        end  
    end  
    return  nr  
end 

function seh( rd, rt)
  local val_rt = getgpr(rt)
  local arr = d2b(val_rt)
  local val_rd
  if arr[17] == 0 then
  	for i=1,16 do
  		arr[i] = 0
  	end
  else
  	for i=1,16 do
  		arr[i] = 1
  	end
  end
  val_rd = b2d(arr)
  setgpr(rd,val_rd)
 end


register_instruction(
  'seh $t1,$t2',
  'R',
  '011111 00000 sssss fffff 11000 100000',
  seh
)