# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2
WX_GTK_VER=2.8

inherit wxwidgets

DESCRIPTION="Espeak voice editor."
HOMEPAGE="http://espeak.sourceforge.net/"
SRC_URI="mirror://sourceforge/espeak/${P}.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 hppa ppc sparc x86"
IUSE=""

RDEPEND="x11-libs/wxGTK
media-libs/portaudio
=app-accessibility/espeak-${PV}"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"

src_compile() {
	cp ${FILESDIR}/* ${S}/src
	cd ${S}/src
	rm portaudio*.h
	epatch format.diff
	aclocal
	autoconf
	./configure
	emake || die
}

src_install() {
	cd ${S}
	exeinto /usr/bin
	doexe ${S}/src/espeakedit
	insinto /usr/share/espeak-data
	doins -r phsource praat-mod
	dodoc License.txt ReadMe
	dohtml -r docs/*
}
