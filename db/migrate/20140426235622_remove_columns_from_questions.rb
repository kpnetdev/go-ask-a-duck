class RemoveColumnsFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :title
    remove_column :questions, :body
    remove_column :questions, :created_at
    remove_column :questions, :updated_at
  end
end
