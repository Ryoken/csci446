User.delete_all
Role.delete_all

User.create(
   :username => "administrator",
   :password => "password",
   :password_confirmation => "password",
   :role_id => Role.create(:name => "admin").id)

User.create(
   :username => "member",
   :password => "password",
   :password_confirmation => "password",
   :role_id => Role.create(:name => "member").id)