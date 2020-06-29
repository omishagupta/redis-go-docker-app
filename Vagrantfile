Vagrant.configure("2") do |config|
  SERVICE_K8s = ENV['SERVICE'] == 'kubernetes'
    if SERVICE_K8s
        config.vm.box = 'mrvantage/centos7-minikube'
    else
        config.vm.box = 'hashicorp/bionic64'
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
