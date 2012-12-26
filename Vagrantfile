Vagrant::Config.run do |config|

	# Every Vagrant virtual environment requires a box to build off of.
	config.vm.box = "precise64"

	# The url from where the 'config.vm.box' box will be fetched if it
	# doesn't already exist on the user's system.
	config.vm.box_url = "http://files.vagrantup.com/precise64.box"


	config.vm.define :web1 do |web1_config|
		#Forward the VM port 80 to your host 8080 port
		web1_config.vm.forward_port 80, 8080
		web1_config.vm.host_name = "project.client.dev"
	end

	#Provision the box with puppet
	config.vm.provision :puppet do |puppet|
		puppet.manifests_path = "puppet/manifests"
		puppet.manifest_file = "project.pp"
		puppet.module_path = "puppet/modules"
		puppet.options = [
			'--verbose',
		]
	end
end
