class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      # for referencing

      t.string   :organization_code,    null: false

      # 第幾節, ex: %w(1 2 3 4 5 6 7 8 A B C)
      t.string   :code,                 null: false
      # 星期幾, ex: %w(一 二 三 四 五 六 日)
      t.string   :day,                  null: false

      t.string     :start_at,             null: false
      t.string     :end_at,               null: false

      t.timestamps null: false
    end
  end
end
