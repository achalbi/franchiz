class AddWorkflowToInquiry < ActiveRecord::Migration
  def change
    add_column :inquiries, :workflow_state, :string
  end
end
