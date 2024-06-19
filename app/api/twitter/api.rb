class Twitter::Api < Grape::API
  format :json
  prefix :api

  resource :statuses do
    desc 'Return a status.'

    params do
      requires :id, type: Integer, desc: 'Status ID.'
    end

    route_param :id do
      get do
        body false
      end
    end
  end
end
