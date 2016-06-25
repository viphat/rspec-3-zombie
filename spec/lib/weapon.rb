require 'weapon'


describe Weapon do
  it 'has a name' do
    weapon = Weapon.new('Canon')
    expect(weapon).to have_attributes(name: 'Canon')
  end

end
