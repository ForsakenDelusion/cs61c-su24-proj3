# 初始化寄存器
addi s0, x0, 10   # s0 = 10
addi s1, x0, -5  # s1 = -5

# 加减法
add t0, s1, s0   # t0 = s1 + s0 = 5
sub t0, s1, s0   # t0 = s1 - s0 = -15

# 逻辑运算
addi t1, x0, 5    # t1 = 5 (0b0101)
addi t2, x0, 11   # t2 = 11 (0b1011)
and t0, t2, t1   # t0 = t2 & t1 = 1 (0b0001)
or t0, t2, t1    # t0 = t2 | t1 = 15 (0b1111)
xor t0, t2, t1   # t0 = t2 ^ t1 = 14 (0b1110)

# 移位运算 (sll, srl, sra 也可以是 R-type 指令)
addi t1, x0, 1    # t1 = 1
sll t0, t2, t1   # t0 = t2 << t1 = 22 (0b10110)
srl t0, t2, t1   # t0 = t2 >> t1 = 5 (逻辑右移)
sra t0, t2, t1   # t0 = t2 >> t1 = -3 (算术右移)

# 乘法
addi t1, x0, 2    # t1 = 2
mul t0, s1, t1   # t0 = s1 * t1 = -10 

# 计算 32 位有符号数的乘积的高 32 位
mulh t0, s1, s2  

# 计算 32 位无符号数的乘积的高 32 位
mulhu t1, s3, s4 

