class Document < ActiveRecord::Base
  attr_accessible :filename, :documenttype, :firm, :fund, :group, :investmentcat, :month, :url, :year

  searchable do
    text :filename, :documenttype, :firm, :fund, :fund, :group, :investmentcat, :month, :url, :year
  end
end
