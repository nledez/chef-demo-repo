require 'chefspec'

describe 'nginx_unicorn::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'nginx_unicorn::default' }
  it 'should deploy nginx' do
    runner = expect(chef_run)

    runner.to install_package "nginx"
  end
end
