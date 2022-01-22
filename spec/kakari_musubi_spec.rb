RSpec.describe KakariMusubi do
  it "has a version number" do
    expect(KakariMusubi::VERSION).not_to be nil
  end

  it "is_km retuens true" do
    sentence = "雨こそ降る"
    expect(KakariMusubi::Translator.is_km?(sentence)).to eq true
  end

  it "is_not_km retuens false" do
    sentence = "雨こそ降る"
    expect(KakariMusubi::Translator.is_not_km?(sentence)).to eq false
  end
end
