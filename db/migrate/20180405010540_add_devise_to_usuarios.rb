# frozen_string_literal: true

class AddDeviseToUsuarios < ActiveRecord::Migration[5.0]
  def self.up
    change_table :usuarios do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :senha_criptografada, null: false, default: ""

      ## Recoverable
      t.string   :token_de_reenvio_de_senha
      t.datetime :reset_de_senha_enviado_em

      ## Rememberable
      t.datetime :cricao_de_lembranca_em

      ## Trackable
      t.integer  :logado_na_conta, default: 0, null: false
      t.datetime :login_atual_em
      t.datetime :ultimo_login_em
      t.string   :ip_atual_logado
      t.string   :ultimo_ip_logado

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      # Uncomment below if timestamps were not included in your original model.
      # t.timestamps null: false
    end

    add_index :usuarios, :email,                unique: true
    add_index :usuarios, :token_de_resete_de_senha, unique: true
    # add_index :usuarios, :confirmation_token,   unique: true
    # add_index :usuarios, :unlock_token,         unique: true
  end

  def self.down
    # By default, we don't want to make any assumption about how to roll back a migration when your
    # model already existed. Please edit below which fields you would like to remove in this migration.
    raise ActiveRecord::IrreversibleMigration
  end
end
