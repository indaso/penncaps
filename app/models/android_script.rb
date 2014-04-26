class AndroidScript < ActiveRecord::Base
	belongs_to :admin
	mount_uploader :script, ScriptUploader
end
