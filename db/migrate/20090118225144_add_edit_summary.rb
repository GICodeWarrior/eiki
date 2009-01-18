class AddEditSummary < ActiveRecord::Migration
  def self.up
    add_column :pages, :edit_summary, :string
  end

  def self.down
    remove_column :pages, :edit_summary
  end
end
