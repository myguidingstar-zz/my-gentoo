# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
MY_P=papagayo_src_r30
inherit eutils

DESCRIPTION="Papagayo is a lip-syncing program designed to help you line up phonemes (mouth shapes) with the actual recorded sound of actors speaking."
HOMEPAGE="http://papagayo.googlecode.com/"
SRC_URI="http://papagayo.googlecode.com/files/${MY_P}.zip"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="dev-lang/python
	dev-python/wxpython"

src_compile() {
unzip ${DISTDIR}/${MY_P}.zip -d ${WORKDIR}
}
src_install() {
	rm ${WORKDIR}/${MY_P}/setup*.py
	rm ${WORKDIR}/${MY_P}/papagayo.ic*
	insinto /usr/share/${PN}
	doins -r ${WORKDIR}/${MY_P}/*
	exeinto /usr/bin
	doexe ${FILESDIR}/papagayo
	dodoc ${WORKDIR}/${MY_P}/*.txt ${WORKDIR}/${MY_P}/rsrc/*.html 
	doicon ${WORKDIR}/${MY_P}/rsrc/papagayo.jpg
	make_desktop_entry papagayo Papagayo
}
