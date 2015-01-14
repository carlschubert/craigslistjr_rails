require 'rails_helper'

describe Article do

  describe "Database Tests" do
    it { should have_db_column(:title).of_type(:string) }
    it { should have_db_column(:price).of_type(:integer) }
    it { should have_db_column(:description).of_type(:text) }
    it { should have_db_column(:email).of_type(:string) }
  end

end