# Class: user
# ===========================
#
# Authors
# -------
#
# Rudy YAYON <ryayon@outlook.com>
#
# Copyright
# ---------
#
# Copyright 2016 Rudy YAYON.
#
class user (
  $user_list = undef,
  $if_noop    = $::clientnoop,
) {

  $defaults = {
    noop => $if_noop,
  }

  if $user_list {
    create_resources ( user, hiera_hash('user::yum_repos_list'), $defaults )
  }

}
