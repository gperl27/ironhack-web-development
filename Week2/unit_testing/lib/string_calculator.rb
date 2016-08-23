class StringCalculator
	def add(nums="0")
		if nums.class == String
			comma_inserter(nums)
			nums = nums.split(",")
			if nums.count > 1
				nums.reduce(0) {|total, num|
					total+= num.to_i
					total
				}
			else nums[0].to_i
			end
		end
	end

	def comma_inserter(nums)
		nums.tr!("$", ",")
	end
end