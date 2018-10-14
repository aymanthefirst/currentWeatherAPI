describe "cities_in_cycle" do

  before(:each) do
    @weatherInstance = Weatherio.new.cities_in_cycle
    @resultsInstance = @weatherInstance.get_results(55.5, 37.5, 10)
  end

  it "200 should be returned" do
    expect(@resultsInstance["cod"].to_i).to eq(200)
  end

  it "check that the first town listed is Shcherbinka" do
          expect(@resultsInstance["list"].first["name"]).to eq("Shcherbinka")
  end

  it "should return details about the weather" do
    expect(@resultsInstance["list"].first).to include("weather")
  end

  it "latitude should be of of type float or integer" do
    expect(Weatherio.new.isFloatOrIntiger(@resultsInstance["list"].first["coord"].first.last).to be true
  end

end
