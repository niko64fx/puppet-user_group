# Class: user_group
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
class user_group (
  $user_list = undef,
  $group_list = undef,
  $if_noop   = $::clientnoop,
) {

  $defaults = {
    noop => $if_noop,
  }

  if $user_list {
    create_resources ( user, hiera_hash('user_group::user_list'), $defaults )
  }

  if $group_list {
    create_resources ( group, hiera_hash('user_group::group_list'), $defaults )
  }

}
