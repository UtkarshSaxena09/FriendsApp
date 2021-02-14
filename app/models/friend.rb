class Friend < ApplicationRecord
    resourcify
    #acts_as_paranoid
    belongs_to :user
end
