# This is a default distribution plug-in.
# Do not modify this file as your changes will be overwritten on next update.
# If you want customize installation, please make a copy.
DISTRO_NAME="Kali Linux (2021.2)"

TARBALL_URL['aarch64']="https://github.com/RandomCoderOrg/fs-cook/releases/download/kali-01/kali-rolling-raw-arm64.tar.gz"
TARBALL_SHA256['aarch64']="bcd311ae53fc6576881e5f8cbbc007fc7c49a5348894e03fa97cc2397ef24fff"
TARBALL_STRIP_OPT=0

distro_setup() {
	# Don't update gvfs-daemons and udisks2
	run_proot_cmd apt-mark hold gvfs-daemons udisks2
}
