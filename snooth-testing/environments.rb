configure :development do
 set :database, 'sqlite:///dev.db'
 set :show_exceptions, true
 set :snooth_api_key, 'z3m0wyt8ysglkvu7wgbgxbzsfrp89lozzhaa1s1v4itzhely'
end

configure :production do
 db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///localhost/mydb')

 ActiveRecord::Base.establish_connection(
   :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
   :host     => db.host,
   :username => db.user,
   :password => db.password,
   :database => db.path[1..-1],
   :encoding => 'utf8'
 )
end