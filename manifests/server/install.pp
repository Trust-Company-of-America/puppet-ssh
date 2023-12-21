# @summary
#   Install ssh server package
#
# @api private
#
class ssh::server::install {
  assert_private()

  if $ssh::server::server_package_name {
    # Not compatible with stdlib < 9.
    # stdlib::ensure_packages ([
    ensure_packages ([
        $ssh::server::server_package_name,
      ], {
        'ensure' => $ssh::server::ensure,
    })
  }
}
