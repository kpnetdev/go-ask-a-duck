class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string   :type
      t.string   :title
      t.text     :body
      t.integer  :question_id
      t.integer  :user_id
      t.timestamps
    end
  end
end
