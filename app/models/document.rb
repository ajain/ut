class Document < ActiveRecord::Base
  attr_accessible :filename, :documenttype, :firm, :fund, :group, :investmentcat, :month, :url, :year
end
