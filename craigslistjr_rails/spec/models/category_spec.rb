require 'rails_helper'

describe Category do

  describe "Database Tests" do
    it { should have_db_column(:title).of_type(:string) }
  end

  describe "Validation Tests" do
    let(:blanks){[nil, '']}

    it { should have_valid(:title).when("Casual Encounters") }
    it { should_not have_valid(:title).when(*blanks) }

    it { should validate_uniqueness_of(:title) }
  end

end