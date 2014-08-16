require 'spec_helper'

describe "caesar_cipher" do

	context "with a non-z to a looping letter" do
		it { expect(caesar_cipher('abcde', 5)).to eql("fghij") }
	end

	context "with a z to a looping letter" do
		it { expect(caesar_cipher('xyzabc', 5)).to eql("cdefgh") }
	end

	context "with uppercase and lowercase looping letters" do
		it { expect(caesar_cipher('XyZaBc', 5)).to eql("CdEfGh") }
	end

	context "with a negative number" do
		it { expect(caesar_cipher('Abcde', -10)).to eql("Qrstu") }
	end

	context "with special characters" do
		it { expect(caesar_cipher('This is a (string)!', 13)).to eql("Guvf vf n (fgevat)!") }
	end

end

