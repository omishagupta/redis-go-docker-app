Vagrant.configure("2") do |config|
  SERVICE_COMPOSE = ENV['SERVICE'] == 'compose'
    if SERVICE_COMPOSE
        config.vm.box = 'hashicorp/bionic64'
    else
        config.vm.box = 'mrvantage/centos7-minikube'
    end
    
  config.vm.network "forwarded_port", guest: 1234, host: 8080

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/playbook.yml"
    # ansible.verbose = "true"
    ansible.extra_vars = {
      SERVICE: ENV["SERVICE"]
    }
  end

end
