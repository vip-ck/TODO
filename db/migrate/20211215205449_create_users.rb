class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users, comment: 'Пользователи системы' do |t|
      t.with_options index: { unique: true } do
        string :name, comment: 'Имя, которое используется для входа'
        string :email, comment: 'Электронный адрес пользователя'
      end
      t.boolean :active,
                default: true,
                comment: 'пользователь активен (true) или заблокирован (false)'

      t.timestamps
    end
  end
end
