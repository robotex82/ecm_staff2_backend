module Ecm
  module Staff
    module Backend
      class OrganisationsController < Itsf::Backend::Resource::BaseController
        def self.resource_class
          Ecm::Staff::Organisation
        end

        private

        def load_resource
          load_scope.friendly.find(params[:id])
        end
      end
    end
  end
end
