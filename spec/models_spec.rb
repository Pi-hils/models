require "models"

describe Models do
  subject(:models) { described_class.new } 
  let(:info) do
    [{ name: "Homer Simpson",
      location: "Springfield", 
       date_of_birth: "1956-05-12"}, 
      {name: "Frank Reynolds",
        location: "Philidelphia", 
        date_of_birth: "1944-11-17"},
  
        {name: "Krusty the Clown",
          location: "SpringField",
          date_of_birth: "1957-10-29"
        }
      ]

  end
 
  it "returns Hommer Simpson and Krusty the clown if location matches" do
    expect(models.information("info","Springfield")).to eq("Homer Simpson, Krusty the Clown")
  end

  it "returns Frank Reynolds if location matches Philidelphia" do
    expect(models.information("info","Philidelphia")).to eq("Frank Reynolds")
  end

  it "raises error if location or models not found" do
    expect{raise "No models in this location"}.to raise_error("No models in this location")
  end

end