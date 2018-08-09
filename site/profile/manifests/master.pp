class profile::master {
  exec { 'docker exec web.puppet.vm /opt/puppetlabs/bin/puppet agent -t':
	path	=> '/bin',
  }
  
  exec { 'docker exec db.puppet.vm /opt/puppetlabs/bin/puppet agent -t':
	path	=> '/bin:/usr/bin',
  }
}
