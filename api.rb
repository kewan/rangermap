class API < Grape::API
  format :json

  get :points do
    Point.order(:date_there)
  end

  params do
    requires :latitude, type: String, desc: 'The latitude'
    requires :longitude, type: String, desc: 'The longitude'
    requires :date_there, type: String, desc: 'The date that the reading was taken'
    optional :heading, type: String, desc: 'The compass bearing that the vehicle was heading in'
    optional :speed, type: String, desc: 'The speed the vehicle was travelling at'
    optional :altitude, type: String, desc: 'The altitude that the reading was taken at'
  end
  post :points do
    Point.create!(latitude: params[:latitude], longitude: params[:longitude], 
                  date_there: params[:date_there], speed: params[:speed], 
                  heading: params[:heading], altitude: params[:altitude])
  end

end