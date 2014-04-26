class AddScriptToAndroidScript < ActiveRecord::Migration
  def change
    add_column :android_scripts, :script, :string
  end
end
