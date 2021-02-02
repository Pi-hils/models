require 'models'

describe Models do
  subject(:models) { described_class.new }
  let(:info) do
    [{ name: 'Homer Simpson',
       location: 'Springfield', 
       date_of_birth: "1956-05-12" }, 
      {name: 'Frank Reynolds',
       location: 'Philidelphia', 
       date_of_birth: '1944-11-17' },
      {name: 'Krusty the Clown',
       location: 'SpringField',
       date_of_birth: '1957-10-29'},
      {name: 'Lisa Simpson',
       location: 'SpringField',
       date_of_birth: '1998-10-29' },
       {name: 'Bart Simpson',
        location: 'Washington',
        date_of_birth: '1996-10-29'}
    ]
  end
 
  it "returns Hommer Simpson and Krusty the clown if location matches" do
    expect(models.information("info","Springfield")).to eq("HOMER SIMPSON, KRUSTY THE CLOWN, LISA SIMPSON")
  end

  it "returns Frank Reynolds if location matches Philidelphia" do
    expect(models.information("info","Philidelphia")).to eq("FRANK REYNOLDS")
  end

  it "raises error if location or models not found" do
    expect { models.information("info","") }.to raise_error("No models in this location")
  end

  #filter the array of supplied talent
  it "iterates through the ar(ray" do
    expect(models.information("info", "Washington")).to eq("BART SIMPSON")
  end

  it "location input is not case sensitive" do
    expect(models.information("info","SpringFIEld")).to eq("HOMER SIMPSON, KRUSTY THE CLOWN, LISA SIMPSON")
  end

end