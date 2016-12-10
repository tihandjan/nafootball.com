require 'rails_helper'

RSpec.describe Picture, type: :model do
  describe "associations" do
     it { should belong_to(:article) } 
  end
  
  describe "validation" do
     it { should validate_length_of(:description).is_at_least(10) }
     it { should validate_length_of(:description).is_at_most(5000) } 
  end
end
