require 'rails_helper'

RSpec.describe Components::Leafs::PersonBankAccountNumber do
  let(:person) { Person.new }
  let(:params) { '111' }
  let(:bank_account_number_leaf) { described_class.new(person, params) }

  before do
    person.components = []
  end

  describe '.valid?' do
    it 'returns true' do
      expect(bank_account_number_leaf.valid?).to be(true)
    end
  end

  describe '.type' do
    it 'returns bank_account_number' do
      expect(bank_account_number_leaf.type).to be(:bank_account_number)
    end
  end
end
