class Recording < ApplicationRecord
  belongs_to :recordableable, polymorphic: true
end
