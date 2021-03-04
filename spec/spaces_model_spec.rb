require_relative '../app/models/spaces_model.rb'

describe Spaces do

  params = {:name=>"A Boat on the Sea", :from=>"2021-03-01", :to=>"2021-03-03", :description=>"cosy boat with lots of baileys and shoes", :price=>"70.00", :space_owner=>"Old Gregg"}

  it 'creates a database entry' do
    Spaces.create(params)
    space = Spaces.search("2021-04-01").map { |t| [[t.name], [t.description], [t]]}
    p '******************'
    p Spaces.search("2021-04-01").description
    p space
    p '******************'

    expect(space).to include('A Boat on the Sea')
  end

end
