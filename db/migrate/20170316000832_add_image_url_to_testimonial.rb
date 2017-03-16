class AddImageUrlToTestimonial < ActiveRecord::Migration[5.0]
  def change
    add_column :testimonials, :image_url, :string
  end
end
