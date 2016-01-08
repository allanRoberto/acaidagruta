# Set the deployment directory on the target hosts.
set :deploy_to, "/home/artezzo/sites/#{application}-#{stage}" 

# Use the correct branch on github. Uncomment this if you have set up seperate branches for each staging area
set :branch, "dev" 

# The hostnames to deploy to.
role :web, "artezzo.com.br" #FIXME

# Specify one of the web servers to use for database backups or updates.
# This server should also be running Wordpress.
role :db, "artezzo.com.br", :primary => true #FIXME

# The path to wp-cli
set :wp, "cd #{current_path}/#{app_root} ; /home/bin/wp" 
# The username on the target system, if different from your local username
ssh_options[:user] = 'artezzo' #FIXME
