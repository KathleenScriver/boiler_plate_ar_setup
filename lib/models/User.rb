class User < ActiveRecord::Base
    has_many :favorites
    has_many :jokes, through: :favorites
end