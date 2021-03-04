require_relative '../app/models/spaces_model.rb'

describe Spaces do

  params = {:name=>"A Boat on the Sea", :from=>"2021-03-01", :to=>"2021-03-03", :description=>"cosy boat with lots of baileys and shoes", :price=>"70.00", :space_owner=>"Old Gregg"}

  it 'searches what properties are available on a certain date' do
    Spaces.create(params)
    expect(Spaces.search("2021-04-01")[0].name).to eq('A Boat on the Sea')
  end

end
