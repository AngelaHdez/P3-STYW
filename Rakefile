desc "Arrancar la aplicacion"
task :default => :server

desc "run server"
task :server do	
  sh "rackup"
end
 

#Para su uso debemos arrancar el servido en una terminal y hacer rake rock en otra
desc "run the client with rock"
task :rock do
  sh %{curl -v 'http://localhost:8080?choice=rock'}
end

desc "run the client with paper"
task :paper do
  sh %q{curl -v 'http://localhost:8080?choice=paper'}
end

desc "run the client with scissors"
task :scissors do
<<<<<<< HEAD
  sh %q{curl -v 'http://localhost:8080?choice=scissors'}
end

#acceder a una pagina estatica
desc "acces to static file"
task :index do
  sh %q{curl -v 'http://localhost:8080/views/index.html.haml'}
end
=======
  sh %q{curl -v 'http://localhost:9292?choice=scissors'}
end
>>>>>>> 9bb98c52af5b2ed9ef26439e031e82d7cea43d4e
