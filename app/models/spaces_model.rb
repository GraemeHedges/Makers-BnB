class SpacesModel

  attr_reader :name, :price, :description, :available, :space_owner

  def initialize(name:, price:, description:, space_owner:)
    @name = name
    @price = price 
    @description = description
    @available = true
    @space_owner = space_owner
  end

  def change_availablity
    @available ? @available = false : @available = true
  end

  def guest
    if @available == true
      false
    else
      true
    end
  end

end
