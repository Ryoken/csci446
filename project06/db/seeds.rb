User.delete_all
Role.delete_all
Game.delete_all

Game.create(
	:name => "admin_game",
	:rating => 4,
	:author =>
User.create(
   :username => "administrator",
   :password => "password",
   :password_confirmation => "password",
   :role_id =>
Role.create(
	:name => "admin").id).id)

Game.create(
	:name => "member_game",
	:rating => 0,
	:author =>
User.create(
   :username => "member",
   :password => "password",
   :password_confirmation => "password",
   :role_id =>
Role.create(
	:name => "member").id).id)