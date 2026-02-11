class CreateActorAgents < ActiveRecord::Migration[8.1]
  def change
    create_table :actor_agents do |t|
      t.timestamps
      t.string "actor_name"
      t.string "agent"
    end
  end
end
