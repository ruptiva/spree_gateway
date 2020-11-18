require 'spec_helper'

describe Spree::Gateway::Recebee do
  let(:gateway) { described_class.create!(name: 'Recebee') }

  context '.provider_class' do
    it 'is a Recebee gateway' do
      expect(subject.provider_class).to eq ::ActiveMerchant::Billing::RecebeeGateway
    end
  end

  context '.auto_capture?' do
    it 'return true' do
      expect(subject.auto_capture?).to be true
    end
  end
end