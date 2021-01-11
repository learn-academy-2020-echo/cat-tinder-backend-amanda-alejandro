require 'rails_helper'

RSpec.describe Cat, type: :model do
  it 'should have a valid name' do
    cat = Cat.create(age: 4, enjoys: 'eating', image: 'url address')
    expect(cat.errors[:name]).to_not be_empty
  end

  it 'should have a valid age' do
    cat = Cat.create(name: 'Peaches', enjoys: 'eating', image: 'url address')
    expect(cat.errors[:age]).to_not be_empty
  end
  
  it 'should have a valid image' do
    cat = Cat.create(name: 'Peaches',age: 4, enjoys: 'sleeping')
    expect(cat.errors[:image]).to_not be_empty
  end

end
