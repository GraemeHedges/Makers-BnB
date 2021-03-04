require_relative './../app/models/user.rb'

describe User do
  
  User.create({email: 'oldgregg@greggs.co.ugreggs', name: 'Old Greg', password: 'greggypass'})

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
      user = User.authenticate({email: 'oldgregg@greggs.co.ugreggs', password: 'greggypass'})
      expect(user.name).to eq('Old Greg')
    end
    it 'doesnt allow someone to log in with wrong password' do
      user = User.authenticate({email: 'oldgregg@greggs.co.ugreggs', password: 'verymuchnotgreggypass'})
      expect(user).to eq(nil)
    end
    it 'doesnt allow someone to log in with wrong name' do
      user = User.authenticate({email: 'notatalloldgregg@greggs.co.ugreggs', password: 'thisreallydoesntmatter'})
      expect(user).to eq(nil)
    end
  end
end