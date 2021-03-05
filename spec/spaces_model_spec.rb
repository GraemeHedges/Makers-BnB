require_relative '../app/models/spaces_model.rb'

describe Spaces do

  before(:all) do
    params = {:name=>"A Boat on the Sea", :from=>"2021-03-01", :to=>"2021-03-03", :description=>"cosy boat with lots of baileys and shoes", :price=>"70.00", :space_owner=>"Old Gregg"}
    Spaces.create(params)
  end

  it 'searches what properties are available on a certain date' do
    expect(Spaces.search("2021-03-02")[0].name).to eq('A Boat on the Sea')
  end

end
