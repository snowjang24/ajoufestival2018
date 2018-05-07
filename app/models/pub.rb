class Pub < ActiveRecord::Base
#class Pub < ApplicationRecord
    
    require 'carrierwave/orm/activerecord'
    
    
    #ImageUploader를 통해서 image_url이라는 column에 넣어줄거다.
    mount_uploader :image_url, ImageUploader
    
end
