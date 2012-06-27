class Note < ActiveRecord::Base
  attr_accessible :city, :content, :format, :meeting_time, :state, :street, :summary, :title, :type, :zip, :firm_ids
  has_and_belongs_to_many :firms
  # has_and_belongs_to_many :
end

