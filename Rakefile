desc "Arrancar la aplicacion"
task :default  => :server

desc "run server"
task :server do	
  sh "rackup"
end
 

#Para su uso debemos arrancar el servido en una terminal y hacer rake rock en otra
desc "run the client with rock"
task :rock do
  sh %{curl -v 'http://localhost:9393?choice=rock'}
end

desc "run the client with paper"
task :paper do
  sh %q{curl -v 'http://localhost:9393?choice=paper'}
end

desc "run the client with scissors"
task :scissors do
  sh %q{curl -v 'http://localhost:9393?choice=scissors'}
end

#acceder a una pagina estatica
desc "acces to static file"
task :index do
  sh %q{curl -v 'http://localhost:9393/views/index.html.haml'}
end
