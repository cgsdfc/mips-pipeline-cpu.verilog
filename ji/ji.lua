function ji( rt, imm )
	local var_temp = getgpr(rt) + imm
	local now_pc = getpc()
	jump(var_temp)

end


register_instruction(
  'ji $t1, -100',
  'I',
  '110110 00000 fffff ssssssssssssssss', 
  ji
)