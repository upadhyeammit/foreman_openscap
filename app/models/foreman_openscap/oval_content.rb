module ForemanOpenscap
  class OvalContent < ApplicationRecord
    audited :except => [:scap_file]
    include Authorizable
    include Taxonomix
    include ScapFileContent

    scoped_search :on => :name, :complete_value => true

    validates :name, :presence => true, :length => { :maximum => 255 }, uniqueness: true
  end
end