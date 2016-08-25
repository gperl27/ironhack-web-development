RSPec.describe PasswordChecker do
	(let :password) { PasswordChecker.new }
	describe "#check_password" do
		it "returns false for passwords shorter than 7 characters" do
			expect(password.check_password("test@gmail.com", "aB3.")).to eq(false)
		end

		it "returns false for passwords that don't contain letters" do
			expect(password.check_password("test@gmail.com", "1234567.,%&")).to eq(false)
		end

		it "returns true for passwords that meet all criteria" do
			expect(password.check_password("test@gmail.com", "aBb123^*asdf")).to eq(true)
		end
	end
end