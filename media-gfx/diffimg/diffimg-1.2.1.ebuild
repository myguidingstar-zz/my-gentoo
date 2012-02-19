# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3

MY_PN="DiffImg"
DESCRIPTION="DiffImg is a simple image comparison tool which take two images with the same size as input. Some statitics are computed and the positions where pixel differ are displayed as a color mask."
HOMEPAGE="http://thehive.xbee.net/"
SRC_URI="mirror://sourceforge/project/${PN}/${PV}/${MY_PN}-${PV}.zip"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="app-text/dos2unix
x11-libs/qt-gui"

RDEPEND="${DEPEND}"
S=${WORKDIR}/${MY_PN}-${PV}

src_configure() {
	dos2unix tounix.sh
	chmod +x tounix.sh
	./tounix.sh
	cd ./build
	qmake -recursive
}
src_install() {
	cd ./build
	emake INSTALL_ROOT="${D}" install || die
}
