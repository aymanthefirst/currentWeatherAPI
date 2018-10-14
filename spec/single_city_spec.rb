describe "single_city" do

  before(:each) do
    @weatherInstance = Weatherio.new.single_city
    @resultsInstance = @weatherInstance.get_results("london")
  end

  it "200 should be returned" do
    expect(@resultsInstance["cod"]).to eq(200)
  end

  it "check that the weather is for London" do
          expect(@resultsInstance["name"]).to eq("London")
  end


  it "should return details about the weather" do
    expect(@resultsInstance).to include("weather")
  end

  it "latitude should be of of type float or integer" do
    expect(Weatherio.new.isFloatOrIntiger(@resultsInstance["coord"]["lat"])).to be true
  end

end
