require_relative "../lib/lexiconomitron.rb"

RSpec.describe "#eat_t" do

  	before :each do
		@lexi = Lexiconomitron.new
		#better way to do it:
		# let(:lexi) {Lexiconomitron.new}
		#but in this case, it's  necessarie to take out the "@" sign in front of the calculator word
	end

    it "removes every letter t from the input" do
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end

    it "shazam: reverse the strings of the array, removes the t and return the 1st and last word of the array" do
    	expect(@lexi.shazam(["This","is","a","boring","test"]) ).to eq( ["sih","se"] )
	end

    it "loompa get word with 3 letter or less and revome the t" do
    	expect(@lexi.loompa(["talk", "to", "you", "later"]) ).to eq( ["o","you"])
    end

end

