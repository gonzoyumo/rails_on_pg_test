class InitialMigration < ActiveRecord::Migration
  def self.up
    create_table "projects", :force => true do |t|
      t.string   "name"
      t.integer  "user_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "tasks", :force => true do |t|
      t.string   "value"
      t.integer  "project_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "users", :force => true do |t|
      t.string   "login"
      t.string   "email"
      t.text     "about"
      t.boolean  "is_active"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_function 'format_name', {:returns=>'character varying'}, 'first_name character varying(125)', 'middle_name character varying(15)', "last_name character varying(20)" do
     "RETURN COALESCE(last_name, 'no last name') || ', ' || COALESCE(first_name, 'no first name') || ' ' || COALESCE(middle_name || '.','');"
    end

    #this one should break while executing create language plpgsql.
    create_function 'format_name2', {:returns=>'character varying'}, 'first_name character varying(125)', 'middle_name character varying(15)', "last_name character varying(20)" do
      "RETURN COALESCE(last_name, 'no last name') || ', ' || COALESCE(first_name, 'no first name') || ' ' || COALESCE(middle_name || '.','');"
    end
  end

  def self.down
  end
end
