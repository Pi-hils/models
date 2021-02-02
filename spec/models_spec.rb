require "models"

describe Models do
  
  it "given data of a model" do
    expect(subject.information("info", "location")).to eq [{"name": "Homer Simpson","location": "Springfield", "date_of_birth": "1956-05-12"}]
  end
end