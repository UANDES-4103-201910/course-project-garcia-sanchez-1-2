class Admin < ApplicationRecord
	belongs_to :dumpster
	belongs_to :black_list
end
