require 'rails_helper'

describe Section do
  it { should validate_presence_of :name }
  it { should validate_presence_of :section_number }
end
