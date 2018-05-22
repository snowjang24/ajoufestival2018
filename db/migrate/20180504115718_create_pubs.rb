class CreatePubs < ActiveRecord::Migration[5.0]
  def change
    create_table :pubs do |t|
      t.string :pub_booth
      t.string :major
      t.string :pubname
      t.integer :date
      #23 1 
      #24 2 
      #25 3 
      #2324 4 
      #2425 5
      
      #date라고 하지 말고 각 데이터마다 3개의 요일을 집어넣을까? ex Boolean type으로 월 화 수
      #t.:area
      #area detail 필요할까? by minkj
      t.text :pub_detail
      t.string :map
      t.string :pub_booth
      #A_1 A_2 A_3
      
      t.timestamps null:false
    end
  end
end
