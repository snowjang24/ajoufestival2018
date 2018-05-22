class Lost < ApplicationRecord


 self.per_page = 10

 require 'carrierwave/orm/activerecord'
    
    
    #ImageUploader를 통해서 lost라는 column에 넣어줄거다.
    mount_uploader :lost, ImageUploader
    

end
