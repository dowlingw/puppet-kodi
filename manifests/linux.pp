class kodi::linux (
	Boolean $prerelease = false
) {

	case $::operatingsystem {
		'Ubuntu': {
			class { "${title}::ubuntu":
				prerelease => $prerelease
			}
		}
		default: {
			fail("${title}: Distribution '${::operatingsystem}' is not currently supported")
		}

	}
}
