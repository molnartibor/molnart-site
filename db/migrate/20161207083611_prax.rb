class Prax < ActiveRecord::Migration
  def change
    create_table :praxes do |t|
      t.date :from #od
      t.date :till #do
      t.string :title #pozicia vyvojar
      t.text :description #popis 
      t.text :positiv #pozitiva
      t.string :company #zamestnavatel
      t.text :company_text #co firma robi
      #t.string :job #druh prace
      #t.string :sector #pracovny sektor
      
      t.timestamps
    end
  end
end
