class kodi::linux (
	Boolean $prerelease => false
) {

	case $::operatingsystem {
		'Ubuntu': {
			class { "${title}::ubuntu":
				prerelease => $preprelease
			}
		}
		default: {
			fail("${title}: Distribution '${::operatingsystem}' is not currently supported")
		}

	}
}
