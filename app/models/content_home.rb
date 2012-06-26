class ContentHome < ActiveRecord::Base
  attr_accessible :context, :description, :title
  has_attached_file :preview, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
