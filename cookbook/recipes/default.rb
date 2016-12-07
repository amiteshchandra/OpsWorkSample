package 'httpd' do
  action :install
end

service 'httpd' do
  action :start
end

directory "~/www/amitesh/test" do
  mode 0755
  owner 'root'
  group 'root'
  action :create
end