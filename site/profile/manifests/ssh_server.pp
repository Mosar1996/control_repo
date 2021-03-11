class profile::ssh_server {
      package {'openssh-server':
                ensure => present,
      }
      service { 'sshd':
              ensure => 'running',
              enable => 'true',
      }
      ssh_authorized_key { 'root@puppet.master.vm':
              ensure => present,
              user   => 'root',
              type   => 'ssh-rsa',
              key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABgQC0Dl6w2LKK/12Gk97VSmdudssAsOid0ElByam3FVsx+HkdCHYA2tMOYSJ2JnFMM1+N2cPFuHqn5suAxRnJtVINNrTrcgQfVN5ZwtzokKzl1HH+GixBDWzZkmd63tHzy+VatAtHoapBrIPiu2ttqWstXdmAj5UyBrjF1AncYi0EtbH+6V7bC3T8SBT59433XVmRYCyQhA9pJ7k9WypL/EAfrzsZSezOfFvquNfnaeBUN6fCBuW+O/4R+eJUglqJT2v9ej/5tFmxUZ1PsHy65vjdQ94uxAmIYp9Yux7zqb2qMA3TdSfDU8WttH267N6qNZ9hHSnYc2Tp1/eZDRorwUUSr9dIGwrMvpdtpLr4faWfSMwh3Mi02CH3Qbfrgo1802WXliIBDaDd0Kb+H44//AEefPoqnOqBXnbYeq1NFatlBW+ENAYfEDrsACD3ZkmmxUgj501bQXD/6WySq9ewByzkJ9VooTh++mYsvMJAzcAlJRAXu7c9N3z4kWjbfZZbM6U=',
      }
}
