# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
inherit eutils
#Source Releases/1.5/PosteRazor-1.5-Source.zip

MY_P=PosteRazor-${PV}-Source
SRC_URI="mirror://sourceforge/${PN}/Source Releases/${PV}/${MY_P}.zip"

DESCRIPTION="PosteRazor cuts raster images into multipage PDF documents."
HOMEPAGE="http://posterazor.sourceforge.net/"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=""

src_compile() {
unzip ${DISTDIR}/${MY_P}.zip -d ${WORKDIR}
}
src_install() {
	cd ${WORKDIR}/${MY_P}/
	cmake
	rm ${WORKDIR}/${MY_P}/papagayo.ic*
	insinto /usr/share/${PN}
	doins -r ${WORKDIR}/${MY_P}/*
	exeinto /usr/bin
	doexe ${FILESDIR}/papagayo
	dodoc ${WORKDIR}/${MY_P}/*.txt ${WORKDIR}/${MY_P}/rsrc/*.html 
	doicon ${WORKDIR}/${MY_P}/rsrc/papagayo.jpg
	make_desktop_entry papagayo Papagayo
}