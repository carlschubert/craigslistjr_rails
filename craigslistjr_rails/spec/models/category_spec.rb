require 'rails_helper'

describe Category do

  describe "Database Tests" do
    it { should have_db_column(:title).of_type(:string) }
  end

end