# @param {String[]} ops
# @return {Integer}
def cal_points(ops)
  valid_ops = []
  ops.each do |s|
      if s == "+"
          valid_ops.push(valid_ops[-1] + valid_ops[-2])
      elsif s == "D"
          valid_ops.push(valid_ops[-1] * 2)
      elsif s == "C"
          valid_ops.pop
      else
          valid_ops.push(s.to_i)
      end
  end
  valid_ops.sum
end
