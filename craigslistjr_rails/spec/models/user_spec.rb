require 'rails_helper'

describe User do
  it 'is valid with a user name and password' do
    user = User.new(
        user_name: 'mike',
        password: 'abc')
    expect(user).to be_valid
  end
  it 'is invalid without a username' do
    user = User.new(user_name: nil)
    user.valid?
    expect(user.errors[:user_name]).to include("can't be blank")
  end
  it 'is invalid without a password' do
    user = User.new(password: nil)
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
  end
  it 'is invalid with a duplicate user_name' do
    User.create(
      user_name: 'mike',
      password: 'abc'
    )
    user = User.new(
      user_name: 'mike',
      password: 'def'
    )
    user.valid?
    expect(user.errors[:user_name]).to include("has already been taken")
  end
end
