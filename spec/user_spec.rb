require_relative './../app/models/user.rb'

describe User do
  subject(:user) {described_class.new(name: 'Old Gregg', email: 'gregg@greggs.co.ugregg', password: 'greggypass')}

  describe "#initialize" do
    it "is initialized with a name" do
      expect(user.name).to eq 'Old Gregg'
    end

    it "is initialized with a email" do
      expect(user.email).to eq 'gregg@greggs.co.ugregg'
    end

    # it "is initialized with a password" do
    #   expect(user.password).to eq 'greggypass'
    # end
  end
end