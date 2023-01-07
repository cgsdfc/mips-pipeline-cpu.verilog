



function lwe(rt, imm, rs)
	local val_rs = getgpr(rs)
	local addr = val_rs + imm
	local mem = loadw(addr)
	setgpr(rt,mem)

end




register_instruction(
  'lwe $t1,-100($t2)',
  'I',
  '011111 ttttt fffff sssssssss 0101111',
  lwe
)