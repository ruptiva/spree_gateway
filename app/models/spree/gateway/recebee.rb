module Spree
  class Gateway::Recebee < Gateway
    preference :login, :string
    preference :password, :string
    preference :account, :string

    def provider_class
      ActiveMerchant::Billing::SagePayGateway
    end

    def auto_capture?
      true
    end
  end
end
