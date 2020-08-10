class Student < ApplicationRecord
    has_many :ducks, :dependent => :destroy
    validates :name, presence:true
    validates :mod, :inclusion => {:in => [1,2,3,4,5]}
end
