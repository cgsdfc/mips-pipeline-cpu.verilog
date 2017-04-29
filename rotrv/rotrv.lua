data32={}
for i=1,32 do  
  data32[i]=2^(32-i)  
end  

function d2b(arg)  
    local tr={}  
    for i=1,32 do  
        if arg >= data32[i] then 
          tr[i]=1  
          arg=arg-data32[i]  
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

function rotrv( rd, rt, rs)
  local val_rs = getgpr(rs)
  print (val_rs)
  local arr = d2b(val_rs)
  for i=1,27 do
    arr[i] = 0
  end
  local sa = b2d(arr)
  print (sa)
  local val_rt = getgpr(rt)
  local op_rt = d2b(val_rt)
  local temp = {}
  local val_rd 

  if sa < 1 then    
    val_rd = val_rt
  else
    for i=1,sa do
      temp[i] = op_rt[32 - sa +i]
    end
    for i=sa+1,32 do
      temp[i] = op_rt[i - sa]
    end
    val_rd = b2d(temp)
  end
  setgpr(rd, val_rd)
end

register_instruction(
  'rotrv $t1,$t2,$t3',
  'R',
  '000000 ttttt sssss fffff 00001 000110',
  rotrv
)