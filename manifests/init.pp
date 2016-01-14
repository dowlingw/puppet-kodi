class kodi (
	Boolean $prerelease = false
) {

	case $::kernel {
		'Linux': {
			class { "${title}::linux":
				prerelease => $prerelease
			}
		}
		default: {
			fail("${title}: Kernel '${::kernel}' is not currently supported")
		}
	}
}
