module Ecm
  module Staff
    module Backend
      class PositionsController < Itsf::Backend::Resource::BaseController
        include Controller::FriendlyIdConcern

        def self.resource_class
          Ecm::Staff::Position
        end

        private

        def permitted_params
          params.require(:position).permit(:markup_language, :parent_id, :name, :description)
        end
      end
    end
  end
end
