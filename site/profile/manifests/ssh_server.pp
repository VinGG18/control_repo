class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDLN2P3P/ub8cadb1WbsyE24FaOkZ4pt7PiyAHELyZSkz3uie1qZUDAZeh6vH6lPAC0Q0B6KnHHc0M5MqaX169tf0NiabMWC36ZOPIG1h3B6XAWaeYE3JfQM7ifahCf6+kxhj0meBYrZBMhiYHvounJeU2/bNZVOTMYnIy6F2uWT1eMa7hV7P6DEyL3j48zLqIp4tqlyssWRn0uuLOsN5Pzi3V8IFST0MoowJUuNEFNPIc1dmYM7DOdJafw/acHEnQwHriK8SzMGFQUtQS1dTkUnlQmoV5bdDACoIKe8q5LrnoRQySVfVQl4n9XR+23pXRqLpuGCLQ7JV237J2nAYob',
	}  
}
