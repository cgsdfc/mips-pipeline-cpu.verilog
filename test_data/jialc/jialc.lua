function jialc( rt, imm )
	local var_temp = getgpr(rt) + imm
	local now_pc = getpc() + 4
	setgpr(31,now_pc)
	jump(var_temp)
end


register_instruction(
  'jialc $t1, -100',
  'I',
  '111110 00000 fffff ssssssssssssssss', 
  jialc
)