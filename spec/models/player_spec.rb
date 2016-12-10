require 'rails_helper'

RSpec.describe Player, type: :model do
    describe 'associations' do
       it { should belong_to :team } 
    end
end
