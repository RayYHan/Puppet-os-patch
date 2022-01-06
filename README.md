# Puppet-os-patch
Create a puppet module to patch Red hat systems and add data to patch RHSA-2021:5206
https://access.redhat.com/errata/RHSA-2021:5206
1. Add the logic into `manifests/init.pp` to
  1. configure the rpm repo containering the packages needed for the path to target systems
    - The target systems do not have access to the Redhat repos directly
    - The packages for each patch are cloned from Redhat to a local yum repo
    - The same module also handles ensuring repos are configure for past and future patches
  2. install the packages **after** the repo has been configured
2. Add the data to `/data` for RHSA-2021:5206
  - The repo has been configured already with name `RHSA_2021:5206` and repo path of `/repos/RHSA_2021_5206`
  - The packages are listed on the Redhat errata page
  - The packages are already cloned into the local repo `RHSA_2021_5206`
