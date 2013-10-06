desc "Arrancar la aplicacion"
task :default  => :server

desc "run server"
task :server do	
	sh "rackup"
end
 
 
#no funcionan de aqui para abajo
desc "run the client with rock"
task :rock do
  sh %{curl -v 'http://localhost:9292?choice=rock'}
end

desc "run the client with paper"
task :paper do
  sh %q{curl -v 'http://localhost:9292?choice=paper'}
end

desc "run the client with scissors"
task :scissors do
  sh %q{curl -v 'http://localhost:9292?choice=scissors'}
end

#acceder a una pagina estatica
desc "acces to static file"
task :index do
  sh %q{curl -v 'http://localhost:9292/views/index.html.haml'}
end