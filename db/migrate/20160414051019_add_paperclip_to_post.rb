class AddPaperclipToPost < ActiveRecord::Migration
  def change
    add_attachment :hikes, :image
  end
end
