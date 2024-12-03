# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Spree::Product do
  let(:product) { create(:product) }
  let(:digitals) { create_list(:digital, 3) }
  let!(:variants) do
    digitals.map { |d| create(:variant, product: product, digitals: [d]) }
  end

  context 'digitals' do
    it 'returns the digitals from the variants' do
      product_digitals = product.digitals
      digitals.each { |d| expect(product_digitals).to include(d) }
    end
  end
end
