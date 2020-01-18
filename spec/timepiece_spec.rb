require 'timepiece'

describe TimePiece do

  let(:subject){ described_class.new(2, 1)}

  describe "#initialization" do
    it "initializes with the number of the day of the year of the user birthday" do
      expect(subject.user_birthday).to eq 2
    end
  end

  describe "#today?" do
    it "returns false when today isnt their birthday" do
      expect(subject.today?).to eq false
    end
  end

  describe "#countdown" do
    it "countdowns the number of days until their birthday" do
      expect(subject.countdown).to eq 352
    end
  end
end