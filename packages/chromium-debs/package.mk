PKG_NAME="chromium-debs"
PKG_VERSION="c9619260fbc1c03e9121bf22795a8a1ea753ca45"
PKG_SHA256="366ef3e568354d76249ba8f5913efc6cb9e12e6bbd2966fec1ce3dc45fe50a7d"
PKG_SOURCE_DIR="${PKG_NAME}-${PKG_VERSION}*"
PKG_SITE="$GITHUB_URL/numbqq/${PKG_NAME}"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_ARCH="aarch64"
PKG_LICENSE="GPL"
PKG_SHORTDESC="chromium packages"
PKG_SOURCE_NAME="${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_NEED_BUILD="NO"


make_target() {
	:
}

makeinstall_target() {
	mkdir -p $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/chromium-debs
	# Remove old debs
	rm -rf $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/chromium-debs/*
	cp ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/*.deb $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/chromium-debs 2> /dev/null || \
	cp -rf ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/${KHADAS_BOARD}/${LINUX}/* $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/chromium-debs
}