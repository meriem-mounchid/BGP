Vagrant.configure("2") do |config|
    config.vm.box = "bflance/ubuntu-20.10-desktop"
    config.vm.box_url = "bflance/ubuntu-20.10-desktop"
      config.vm.define "bgp" do |controle|
      controle.vm.hostname = "bgp"
      controle.vm.network "public_network", bridge: "en0: Ethernet"
      controle.vm.provider "virtualbox" do |v|
        v.customize ["modifyvm", :id, "--cpus", "4"]
        v.customize ["modifyvm", :id, "--memory", "4096"]
        v.customize ["modifyvm", :id, "--name", "bgp"]
      end
    end
  end