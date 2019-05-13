module PaperTrail
  class Version < ActiveRecord::Base
    include PaperTrail::VersionConcern

    def user
      User.find(self.whodunnit.to_i)
    end
  end
end