class CreateAndroidScripts < ActiveRecord::Migration
  def change
    create_table :android_scripts do |t|
      t.string :name

      t.timestamps
    end
  end
end
