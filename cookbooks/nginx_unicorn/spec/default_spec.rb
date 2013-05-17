require 'chefspec'

describe 'nginx_unicorn::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'nginx_unicorn::default' }
  it 'should deploy & configure nginx + monit' do
    runner = expect(chef_run)

    [ "nginx", "monit" ].each do |p|
      runner.to install_package p
    end

    [ "nginx", "monit" ].each do |s|
      runner.to set_service_to_start_on_boot s
      runner.to start_service s
    end

    monitrc = "/etc/monit/monitrc"
    runner.to create_cookbook_file monitrc
    file = chef_run.cookbook_file monitrc
    expect(file).to be_owned_by('root', 'root')
    expect(file.mode).to eq("0440")
  end
end
