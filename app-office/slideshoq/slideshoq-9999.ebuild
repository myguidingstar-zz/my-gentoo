# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

SNAPSHOT="yes"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
DESCRIPTION="SlideShoQ is a PDF presentation software that supports two-screen presentations: One screen shows the current slide fullscreen, i.e. what you want to show on the projector for the audience, the second screen is your computer, which shows the current, next and previous slides, current time and other useful information."
IUSE=""

inherit git-2

EGIT_REPO_URI="git://gitorious.org/slideshoq/slideshoq.git"
PATCHES=""

SRC_URI=""
S=${WORKDIR}/${PN}

RDEPEND="x11-libs/qt-gui"
RDEPEND="${DEPEND}"

src_compile() {
	qmake
	emake
}
src_install() {
	exeinto /usr/bin
	doexe slideshoq
}
