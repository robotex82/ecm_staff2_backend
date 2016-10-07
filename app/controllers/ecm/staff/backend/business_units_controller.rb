module Ecm
  module Staff
    module Backend
      class BusinessUnitsController < Itsf::Backend::Resource::BaseController
        def self.resource_class
          Ecm::Staff::BusinessUnit
        end

        private

        def load_resource
          load_scope.friendly.find(params[:id])
        end
      end
    end
  end
end
