class Anuncio < ApplicationRecord 
    has_many :comments
    belongs_to :usuario
end
