class AndroidScript < ActiveRecord::Base
	belongs_to :admin
	mount_uploader :script, ScriptUploader
	validates_presence_of :script
end
