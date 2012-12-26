# Set default path for Exec calls
Exec {
    path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ]
}

node default {

    class{"project":

		host => 'project.client.dev',

		dbname => 'client_project',
		dbuser => 'project',
		dbpass => 'project_secret',

		dbdumppath => "/vagrant/db_snapshot",

		sitepath => "/vagrant/webroot",

    }
		
		class {"composer":
		command_name => 'composer',
		target_dir   => '/usr/local/bin'
	 }
}
