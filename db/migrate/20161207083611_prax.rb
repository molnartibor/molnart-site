class Prax < ActiveRecord::Migration
  def change
    create_table :praxes do |t|
      t.string :from #od
      t.string :till #do
      t.string :title #pozicia
      t.text :description #popis
      t.string :company #zamestnavatel
      t.string :job #druh prace
      t.string :sector #pracovny sektor
      t.timestamps
    end
  end
end
