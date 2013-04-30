current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "nledez-demo"
client_key               "#{current_dir}/nledez-demo.pem"
validation_client_name   "nledez-demo-validator"
validation_key           "#{current_dir}/nledez-demo-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/nledez-demo"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
