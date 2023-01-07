
function sltin(rt, rs, imm)
  local val_rs = getgpr(rs)
  local val_rt = getgpr(rt)
  print (val_rs)
  print (val_rt)
  print (imm)
  if val_rs<imm then
  	val_rt = 1
  end
  setgpr(rt, val_rt)
end




register_instruction(
  'sltin $t1,$t2,-100',
  'I',
  '001010 sssss fffff tttttttttttttttt',
  sltin
)