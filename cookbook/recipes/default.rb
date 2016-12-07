package 'httpd' do
  action :install
end

directory "/home/ec2-user/amitesh" do
  mode 0755
  owner 'root'
  group 'root'
  action :create
end

cookbook_file "/var/www/index.html" do
  source "index.html"
  mode 0644
  action :create_if_missing
end

service 'httpd' do
  action :start
end

