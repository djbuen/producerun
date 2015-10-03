class BankCardDetail < ActiveRecord::Base
	belongs_to :user
	
	attr_accessor :checking_account_number_confirmation

	validates :card_number, numericality: { only_integer: true, allow_blank: true }
	validates :card_cvv, numericality: { only_integer: true,allow_blank: true }
	validates_format_of :dwolla_email_address, with: Devise.email_regexp, allow_blank: true, if: :dwolla_email_address_changed?
	validates_format_of :paypal_email_address, with: Devise.email_regexp, allow_blank: true, if: :paypal_email_address_changed?
	validates_format_of :receiving_dwolla_email_address, with: Devise.email_regexp, allow_blank: true, if: :receiving_dwolla_email_address_changed?
	validates_format_of :receiving_paypal_email_address, with: Devise.email_regexp, allow_blank: true, if: :receiving_paypal_email_address_changed?

	validates :bank_routing_number, numericality: { only_integer: true, allow_blank: true }
	validates :checking_account_number, numericality: { only_integer: true,allow_blank: true },confirmation: true
	validates :bank_ss_number, numericality: { only_integer: true,allow_blank: true },length: { is: 4,allow_blank: true }

  # Dummy data here please delete if necessary
  attr_accessor :first_name, :last_name, :email, :phone_number, :date_of_birth, :street_address, :locality, :region, :postal_code, :funding_email,
                :funding_mobile_number, :funding_account_number, :funding_routing_number, :funding_verify_routing
end
