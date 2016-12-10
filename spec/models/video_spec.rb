require 'rails_helper'

RSpec.describe Video, type: :model do
  it { should validate_presence_of :title }
  it { should validate_presence_of :code }
end
