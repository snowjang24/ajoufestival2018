class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.text :content
      t.references :pub, index: true, foreign_key: true
      t.timestamps
      #comment라는 테이블을 생성할 때, pub과의 관계를 표현하기 위해서 외래키 제약조건이 추가
    end
  end
end
