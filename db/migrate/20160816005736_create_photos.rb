class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
			t.integer	:user_id
			t.string	:image
			t.string	:message

      t.timestamps
    end
  end
end
