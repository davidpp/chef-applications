include_recipe "applications::default"

case node["platform_family"]
    when 'mac_os_x'
        package "macvim" do
          action [:install, :upgrade]
        end
    when 'debian'
        Chef::Log.debug("This recipe is OSX only")
end
