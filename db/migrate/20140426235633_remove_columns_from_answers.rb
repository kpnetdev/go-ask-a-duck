class RemoveColumnsFromAnswers < ActiveRecord::Migration
  def change
    remove_column :answers, :title
    remove_column :answers, :body
    remove_column :answers, :created_at
    remove_column :answers, :updated_at
  end
end
