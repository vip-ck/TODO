# frozen_string_literal: true

class Events < Grape::API
  helpers FiltersHelper, EventsHelper, Pundit

  resource :events do
    desc 'Список дел'
    params do
      use :filters
    end
    get '/' do
      scope = policy_scope(events_scope(params[:all]))
      present scope, with: Entities::EventIndex
    end

    route_param :event_id, type: Integer do
      before do
        @event = Event.find params[:event_id]
      end

      get '/' do
        authorize @event, :show?
        present @event, with: Entities::Event
      end

      post '/' do
        @event.destroy
      end
    end
  end
end
