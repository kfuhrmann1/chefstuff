#Creates a general user for access

user 'testguy' do
  comment 'This is a test user.'
  home '/home/testguy'
  shell '/bin/bash'
  password '123456'
end
