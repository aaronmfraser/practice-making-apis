require 'rubygems'
require 'sinatra'
require 'haml'

get "/upload" do
   haml :upload
end

post "/upload" do
   File.open('uploads/' + params['myfile'][:filename], "w") do |f|
      f.write(params['myfile'][:tempfile].read)
   end
   return "The file was successfull uploaded"
end


