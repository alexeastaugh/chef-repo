execute 'Install DO monitoring' do
  command 'curl -sSL https://agent.digitalocean.com/install.sh | sh'  
  not_if { ::File.exists?('/opt/digitalocean_monitoring_check')}
end

file '/opt/digitalocean_monitoring_check' do
  content '# File to stop DO agent always running on each Chef run'
  mode '0755'
  owner 'root'
  group 'root'
end
