require 'rails_helper'
require 'shoulda/matchers'

RSpec.describe Article, type: :model do
  describe "associations" do
     it { should have_many(:pictures).dependent(:destroy) }
     it { should accept_nested_attributes_for(:pictures) }
  end
  
  describe "validations" do
     it { should validate_presence_of(:title) }
     it { should validate_presence_of(:summary) }
     it { should validate_presence_of(:description) }
     it { should validate_presence_of(:picture) } 
     it { should validate_length_of(:title).is_at_least(10) }
     it { should validate_length_of(:summary).is_at_least(10) }
     it { should validate_length_of(:description).is_at_least(10) }
     it { should validate_length_of(:title).is_at_most(150) }
     it { should validate_length_of(:summary).is_at_most(250) }
     it { should validate_length_of(:description).is_at_most(5000) }
  end
end
