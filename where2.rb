require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
    # 42.0574063
    # -87.6722787
  # lat: ± 90
  # long: ± 180
  @lat = rand(-90.0..90.0)
  @long = rand(-180.0..180.0)
  @lat_long = "#{@lat}, #{@long}"
  view "where2"
end