class CreateInitialTables < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :role
      t.string :email
      t.string :password
      t.integer :mobile
      t.integer :ice_mobile
      t.timestamps
    end

    create_table :courses do |t|
      t.string :title
      t.string :short_desc
      t.text :long_desc
      t.integer :cost
      t.integer :time_commit
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.string :recurrence
      t.integer :room_id
      t.timestamps
      end

    create_table :rooms do |t|
      t.string :name 
      t.integer :capacity
      t.timestamps
    end

    create_table :courses_users do |t|
      t.integer :course_id
      t.integer :user_id
    end
  end


  def down
    drop_table :users

    drop_table :courses

    drop_table :rooms

    drop_table :courses_users
  end
end
