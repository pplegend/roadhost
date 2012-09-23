class Product < ActiveRecord::Base
 attr_accessible :file, :name, :image, :description
 belongs_to :type
 has_attached_file :image, :styles=>{:medium=>"300x300>", :thumb=>"100x100>"}
 mount_uploader :file, FileUploader

end
