# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3

MY_PV="0.1-git12"
DESCRIPTION="A design and authoring tool for digital artists interested in 2D."
HOMEPAGE="http://www.maefloresta.com/"
SRC_URI="http://download.berlios.de/${PN}/${PN}_${MY_PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="ffmpeg"

DEPEND=">=x11-libs/qt-gui-4.7.0
dev-lang/ruby
app-text/aspell
media-video/ffmpeg
sys-libs/zlib"

RDEPEND="${DEPEND}"
src_configure() {
	econf
}
src_install() {
	qmake -r
	./configure --prefix=${D}usr/local/${PN} --debian-build=something > quiet
	emake DESTDIR="${D}" install || die
	dodoc README COPYING TODO
	mv ${D}usr/local/tupi/share/pixmaps ${D}usr/share/pixmaps
	rm -r ${D}usr/local/tupi/share/applications
	rm ${D}usr/local/tupi/bin/tupi
	exeinto /usr/share/applications
	doexe ${FILESDIR}/tupi.desktop
	exeinto /usr/bin
	doexe ${FILESDIR}/tupi
	
}
