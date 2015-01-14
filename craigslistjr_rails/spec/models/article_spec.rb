require 'rails_helper'

describe Article do

  describe "Database Tests" do
    it { should have_db_column(:title).of_type(:string) }
    it { should have_db_column(:price).of_type(:integer) }
    it { should have_db_column(:description).of_type(:text) }
    it { should have_db_column(:email).of_type(:string) }
  end

  describe "Validation Tests" do
    let(:blanks){[nil, '']}

    it { should have_valid(:title).when("Adorable Puppy needs home") }
    it { should_not have_valid(:title).when(*blanks) }

    it { should have_valid(:description).when("The puppy is just five months old! Needs home quick! Please email me!") }
    it { should_not have_valid(:description).when(*blanks) }

    it { should have_valid(:email).when("puppymaster@gmail.com") }
    it { should_not have_valid(:email).when(*blanks) }

    let(:invalid_amount){['99,999', -3, 0]}
    it { should validate_numericality_of(:price) }
    it { should have_valid(:price).when(1, 99999) }
    it { should_not have_valid(:price).when(*invalid_amount) }
  end

  describe "Association Tests" do
    it { should belong_to(:user) }
    it { should belong_to(:category) }
  end

end