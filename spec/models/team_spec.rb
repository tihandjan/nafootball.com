require 'rails_helper'

RSpec.describe Team, type: :model do
    describe 'associations' do
        it { should have_many :players }
    end
end
