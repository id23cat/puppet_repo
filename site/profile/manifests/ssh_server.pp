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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDSgIuVvcrKKlMXabi4LPZ+E8QxpYAR/su5rau2qHm8txE1mAIifzdnOOob2QrwUfavolc+lOQ5qu41xiFoaK2bY6fQeR5MeJ/75pO40Clqe4s1k7AGq1jqrW6QRNfWRW1hfhX5+F4LYWpeJWQnP9B6zarDSu+p3IBJKTnHPHMidjq+SIQWk9FV0HiOv80oJMAvhfvjSzhGZcwBuEh5Blik2032+iiGeFZ/suOR1VR6fsH0gjubTLDnAO/6hiyyhGnvmDFe1OaKCuFVIyg1pZqDn7ihJ6CNpH7J4b5f0JaTqD4xjRBjbNK1QvAZQoPiOwQF3z2dSd6g5V/0YfhmgU1T',
  }  
}
