include_recipe 'applications::java'

package 'android-sdk' do
  action [:install, :upgrade]
end
