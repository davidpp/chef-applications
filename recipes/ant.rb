include_recipe "applications::default"

package 'ant' do
  action [:install, :upgrade]
end
