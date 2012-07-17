# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"

inherit eutils toolchain-funcs
PSV=${PV//\./}
MY_P=${PN}${PSV}
SRC_URI="mirror://sourceforge/swissfileknife/1-swissfileknife/${PV}/${MY_P}.tar.gz"
DESCRIPTION="The Swiss File Knife: Command Line Tools Collection"
HOMEPAGE="http://swissfileknife.sourceforge.net/"
LICENSE="BSD"
SLOT="0"
KEYWORDS="alpha amd64 hppa ia64 ppc ppc64 sparc x86 amd64-linux x86-linux"
IUSE=""
REQUIRED_USE=""
RDEPEND=""
DEPEND=""

S=${WORKDIR}/${MY_P}

src_install() {
	exeinto /usr/bin/
	doexe sfk
	dodoc COPYING README
}
