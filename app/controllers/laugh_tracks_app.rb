class LaughTracksApp < Sinatra::Base

  get "/comedians" do
    @comedians = Comedian.all
    @specials = Special.all
    erb :index
  end

  get "/locations" do
    @locations = Location.all

    erb :"locations/index"
  end

  get "/locations/:id" do
    @location = Location.find(params[:id])
    @specials = Special.where(location_id: params[:id])
    erb :"locations/show"
  end
end
