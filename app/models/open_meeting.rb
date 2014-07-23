class OpenMeeting < ActiveRecord::Base
 
  def self.establish_connection
    super(:openmeetings_dev)
  end

  establish_connection
  
  def self.create_user(user)
    sql = ("INSERT INTO users (firstname, lastname, login, password) VALUES ('#{user.firstname}', '#{user.lastname}', '#{user.email}', '#{user.new_password}')")
    connection.execute(sql) 
  end
end