#Create a class and inherit from ActiveRecord::Migration

#by convention, the class name should match the part of the
#file name after the number, so in this case:
#001_create_networks.rb becomes class CreateNetworks
class CreateNetworks < ActiveRecord::Migration
  #define a change method in which to do the migration
  def change
    create_table :networks do |t| #we get a block variable here for the table
      #primary key of :id is created for us!
      # defining columns is as simple as t.[datatype] :column
      t.string :call_letters

      # the above breaks down to
      # "create a column called :call_letters on table t with type string
      t.integer :channel
    end

    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
    end

    create_table :characters do |t|
      t.string :name
      t.string :show_id
      t.string :catchphrase
      t.integer :actor_id
    end
  end
end
