# location: spec/unit/pdate_unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'Harry Potter', author: 'J.K. Rowling', price: 9.99, pdate: Date.new(1995,6,9))
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a publish date' do
    subject.pdate = nil
    expect(subject).not_to be_valid
  end
end
