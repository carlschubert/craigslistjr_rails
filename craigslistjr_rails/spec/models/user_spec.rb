require 'rails_helper'

describe User do

  describe "Database Tests" do
    it { should have_db_column(:user_name).of_type(:string) }
    it { should have_db_column(:password_digest).of_type(:string) }
  end

  describe "Validation Tests" do
    let(:blanks){[nil, '']}

    it { should have_valid(:user_name).when("masterkwon") }
    it { should_not have_valid(:user_name).when(*blanks) }

    it { should have_valid(:password).when("iluvu") }
    it { should_not have_valid(:password).when(*blanks) }
  end

  describe "Association Tests" do
    it { should have_many(:articles).dependent(:destroy) }
  end

end