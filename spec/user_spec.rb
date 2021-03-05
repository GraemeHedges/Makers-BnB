require_relative './../app/models/user.rb'

describe User do
  
  before(:all) do
    User.create({email: 'oldgregg@greggs.co.ugreggs', name: 'Old Greg', password: 'greggypass'})
  end

  describe '.create' do
    it 'it adds a user to the database and can see name value' do    
      user = User.find_by(email: 'oldgregg@greggs.co.ugreggs')
      expect(user.name).to eq('Old Greg')
    end
    it 'it adds a user to the database and can see email value' do
      user = User.find_by(email: 'oldgregg@greggs.co.ugreggs')
      expect(user.email).to eq('oldgregg@greggs.co.ugreggs')
    end

  end

  describe '.authenticate' do
    it 'allows someone to log in' do
      user = User.authenticate({username: 'Old Greg', password: 'greggypass'})
      expect(user.name).to eq('Old Greg')
    end
    it 'doesnt allow someone to log in with wrong password' do
      user = User.authenticate({username: 'Old Greg', password: 'verymuchnotgreggypass'})
      expect(user).to eq(nil)
    end
    it 'doesnt allow someone to log in with wrong email, even with correct password' do
      user = User.authenticate({username: 'NOT Old Greg', password: 'greggypass'})
      expect(user).to eq(nil)
    end
  end
end