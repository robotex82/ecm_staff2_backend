module Ecm
  module Staff
    module Backend
      class PositionsController < Itsf::Backend::Resource::BaseController
        def self.resource_class
          Ecm::Staff::Position
        end

        private

        def load_resource
          load_scope.friendly.find(params[:id])
        end

        def permitted_params
          params.require(:position).permit(:markup_language, :parent_id, :name, :description)
        end
      end
    end
  end
end
