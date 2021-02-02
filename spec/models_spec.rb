require "models"

describe Models do
  subject(:models) { described_class.new } 
  
  it "given data of a model" do
    info = [{ name: "Homer Simpson",
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
    expect(models.information("info", "location")).to eq info
  end

  #all info stored in an array
  it "expect info provided to be an array" do
    info = [{"name": "Homer Simpson","location": "Springfield", "date_of_birth": "1956-05-12"},{"name": "Frank Reynolds","location": "Philidelphia", "date_of_birth": "1944-11-17"}]
    expect(models.information("info","location")).to be_kind_of Array
  end

  #the array will include hash
  it "expect info provided to have an hash inside array" do
    info = [{name: "Homer Simpson",
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
    expect(models.information("info","location")).to include(be_kind_of (Hash))
  end 
  
  #hash has name as a key
  # it "expect info provided to keys - :name" do
  #   info = [{ name: "Homer Simpson",
  #     location: "Springfield", 
  #      date_of_birth: "1956-05-12"}, 
  
  #     {name: "Frank Reynolds",
  #       location: "Philidelphia", 
  #       date_of_birth: "1944-11-17"},
  
  #       {name: "Krusty the Clown",
  #         location: "SpringField",
  #         date_of_birth: "1957-10-29"
  #       }
  #     ]
  #   expect(info).to has_key(:name)
  # end 


end