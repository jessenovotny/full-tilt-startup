class CreateTestimonials < ActiveRecord::Migration[5.0]
  def change
    create_table :testimonials do |t|
      t.string :name
      t.text :content
      t.string :position

      t.timestamps
    end
  end
end
