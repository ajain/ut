class Firm < ActiveRecord::Base
  attr_accessible :emergency_phone, :fax, :firm_name, :firm_type, :phone, :short_name, :status, :website, :document_ids
  has_and_belongs_to_many :documents
  has_and_belongs_to_many :notes
end
