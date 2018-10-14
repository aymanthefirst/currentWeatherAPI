describe "post_code" do

  before(:each) do
    @weatherInstance = Weatherio.new.post_code
    @resultsInstance = @weatherInstance.get_results("94040,us")
  end

  it "200 should be returned" do
    expect(@resultsInstance["cod"]).to eq(200)
  end

  it "Expect country to be US" do
          expect(@resultsInstance["sys"]["country"]).to eq("US")

  end

  it "should return details about the weather" do
    expect(@resultsInstance.keys).to include("weather")
  end

  it "latitude should be of of type float or integer" do
    expect(Weatherio.new.isFloatOrIntiger(@resultsInstance["coord"]["lat"])).to be true
  end

end
