class Project < ActiveRecord::Base
has_many :todo_lists
has_many :todo
validates :title, presence: true,
                    length: { minimum: 1 }
end
