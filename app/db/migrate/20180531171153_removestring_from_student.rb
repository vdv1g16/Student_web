class RemovestringFromStudent < ActiveRecord::Migration
  def up
  	remove_column :students, :string
  	remove_column :students, :string
  end
end
