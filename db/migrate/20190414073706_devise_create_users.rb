# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.text :email,                 null: false, default: ""
      t.string :first_name,          null: false, default: ""
      t.string :last_name,           null: false, default: ""
      t.string :first_name_kana,     null: false, default: ""
      t.string :last_name_kana,      null: false, default: ""
      t.string :post_number,         null: false, default: ""
      t.string :phone_number,        null: false, default: ""
      t.text :address,               null: false, default: ""
      t.string :encrypted_password,  null: false, default: ""
      t.datetime :created_at,        null: false, default: ""
      t.datetime :updated_at,        null: false, default: ""
      t.boolean :deleated,           null: false, default: "false"
      t.boolean :admin,              null: false, default: "false"

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
       t.integer  :sign_in_count, default: 0, null: false
       t.datetime :current_sign_in_at
       t.datetime :last_sign_in_at
       t.string   :current_sign_in_ip
       t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.string :name
      t.timestamps null: false
    end

    add_index :users, :email
    add_index :users, :first_name
    add_index :users, :last_name
    add_index :users, :first_name_kana
    add_index :users, :last_name_kana
    add_index :users, :post_number
    add_index :users, :phone_number
    add_index :users, :address
    add_index :users, :encrypted_password
    add_index :users, :reset_password_token
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
