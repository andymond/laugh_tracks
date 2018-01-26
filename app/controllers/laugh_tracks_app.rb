class LaughTracksApp < Sinatra::Base

  get "/comedians" do
    @comedians = Comedian.all
    @specials = Special
    erb :index
  end
end
