# @summary
#   Install ssh client package
#
# @api private
#
class ssh::client::install {
  assert_private()

  if $ssh::client::client_package_name {
    # Not compatible with stdlib < 9.
    # stdlib::ensure_packages ([
    ensure_packages ([
        $ssh::client::client_package_name,
      ], {
        'ensure' => $ssh::client::ensure,
    })
  }
}
