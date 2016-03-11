# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "kylef"
client_key               "#{current_dir}/kylef.pem"
validation_client_name   "kylefinc-validator"
validation_key           "#{current_dir}/kylefinc-validator.pem"
chef_server_url          "https://api.chef.io/organizations/kylefinc"
cookbook_path            ["#{current_dir}/../cookbooks"]
