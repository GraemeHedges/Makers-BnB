require_relative '../app/models/spaces_model.rb'

describe SpacesModel do

  let(:space) {SpacesModel.new(name: 'Boat', price: 20, description: 'Wet', space_owner: 4321)}

  it 'Has a name, price, description and checks if its available' do
    expect(space.name).to eq 'Boat'
    expect(space.price).to eq 20
    expect(space.description).to eq 'Wet'
    expect(space.available).to eq true
    expect(space.space_owner).to eq 4321
  end

  it 'Changes the property availablity' do
    expect(space.change_availablity).to eq false
  end

  it 'Its able to change its guest from nil' do 
    expect(space.guest).to eq false
  end


end
