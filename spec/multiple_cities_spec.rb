describe "multiple_cities" do

  before(:each) do
    @weatherInstance = Weatherio.new.multiple_cities
    @resultsInstance = @weatherInstance.get_results("12,32,15,37,10")
  end

  it "200 should be returned" do
    expect(@resultsInstance["cod"]).to eq(200)
  end

  it "check that when the first city returned is Yafran" do
           expect(@resultsInstance["list"].first["name"]).to eq("Yafran")
   end


  it "should return details about the weather" do
    expect(@resultsInstance["list"].first).to include("weather")
  end

  it "latitude should be of of type float or integer" do
    expect(Weatherio.new.isFloatOrIntiger(@resultsInstance["list"].first["coord"].first.last)).to be true
  end
end
