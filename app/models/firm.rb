class Firm < ActiveRecord::Base
  has_and_belongs_to_many :document
  attr_accessible :emergency_phone, :fax, :firm_name, :firm_type, :phone, :short_name, :status, :website, :document_id
end
