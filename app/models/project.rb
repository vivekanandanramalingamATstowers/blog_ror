class Project < ActiveRecord::Base
has_many :todo
has_ancestry
validates :title, presence: true,
                    length: { minimum: 1 }
end
