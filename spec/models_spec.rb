describe Models do
  
  it "has data of a model" do
    expect(subject.information(info, place)).to eq [{"name": "Homer Simpson","location": "Springfield", "date_of_birth": "1956-05-12"}]

  end
end
