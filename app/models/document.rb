class Document < ActiveRecord::Base
  attr_accessible :filename, :documenttype, :firm, :fund, :group, :investmentcat, :month, :url, :year, :firm_id
  has_and_belongs_to_many :firms

  include Tire::Model::Search
  include Tire::Model::Callbacks

  def self.search(params)
    tire.search(load: true) do
      query { string params[:query], default_operator: "AND"} if params[:query].present?

    end
  end
end
