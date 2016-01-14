class kodi::linux::ubuntu (
	Boolean $prerelease = false
) {

	# Instead of keeping a list of what release can run stable/unstable
	# we will always set up the main ppa, and install the unstable one
	# in addition if unstable channel is selected.
	#
	# Combined with the ensure=>latest on the package statement, we'll
	# end up with the latest available package for a given Ubuntu release

	include apt

	apt::ppa { 'ppa:team-xbmc/ppa':
		package_manage => true
	}

	if $prerelease {
		apt::ppa { 'ppa:team-xbmc/unstable':
		}
	}

	ensure_resource( 'package', 'kodi', {
		'ensure' => 'latest',
		require => Class['apt::update']
	})

}
