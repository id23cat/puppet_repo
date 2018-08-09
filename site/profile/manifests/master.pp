class profile::master {
  exec { 'docker exec -ti web.puppet.vm bash -c "/opt/puppetlabs/bin/puppet agent -t"':
	cwd		=> '/bin',
  }
  exec { 'docker exec -ti db.puppet.vm bash -c "/opt/puppetlabs/bin/puppet agent -t"':
	cwd		=> '/bin',
  }
}
