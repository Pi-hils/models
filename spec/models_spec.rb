require "models"

describe Models do
  
  it "given data of a model" do
    info = [{"name": "Homer Simpson","location": "Springfield", "date_of_birth": "1956-05-12"},{"name": "Frank Reynolds","location": "Philidelphia", "date_of_birth": "1944-11-17"}]
    expect(subject.information("info", "location")).to eq info
  end
end