include_recipe "applications::default"

case node["platform_family"]
    when 'mac_os_x'
      execute "oh my zsh install" do
        command "curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh"
        user node['current_user']
        not_if { File.exist?("/.oh-my-zsh") }
      end
    end
    when 'debian'
        Chef::Log.debug("This recipe is OSX only")
end
