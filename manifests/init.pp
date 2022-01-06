class os_patch (
  $repos,
  $packages,
) {
  #each repo can be added with
  yumrepo { $repo_name:
    ensure   => present,
    descr    => $repo_nam,
    baseurl  => $repo_path,
    enabled  => true,
    gpgcheck => false,
  }

  #each package can be installed with
  package { $package_name:
    ensure => latest,
  }
}
