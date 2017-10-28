require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

subject(:user) { User.new(email: 'jackson@gmail.com', password_digest: 'ljhglhglhg', password: 'jokerson') }

describe 'validations' do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }
end

describe 'is_password?' do
  it "sets the password" do
    expect(user.is_password?('jokerson')).to eq true
  end

  it 'checks for incorrect password' do
    expect(user.is_password?('jackson')).to eq false
  end
end

describe 'reset_session_token' do
  it 'resets token correctly' do
    old_token = user.session_token
    user.reset_session_token!

    expect(user.session_token).not_to eq old_token
    expect(user.session_token).to eq user.session_token
  end
end

describe 'find_by_credentials' do
  it "correctly finds the right credentials" do
    expect(User.find_by_credentials('georgeson@gmail.com', 'matterdom')).to eq nil
    expect(User.find_by_credentials('jackson@gmail.com', 'jokerson')).to eq user
  end
end
