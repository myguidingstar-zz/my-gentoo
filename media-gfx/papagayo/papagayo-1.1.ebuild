# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit eutils

DESCRIPTION="Papagayo is a lip-syncing program designed to help you line up phonemes (mouth shapes) with the actual recorded sound of actors speaking."
HOMEPAGE="http://papagayo.googlecode.com/"
SRC_URI="http://papagayo.googlecode.com/files/papagayo_src_r30.zip"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="dev-lang/python
	dev-python/wxpython"

src_compile() {
unzip ${DISTDIR}/papagayo_src_r30.zip -d ${WORKDIR}
}
src_install() {
	insinto "${INSTDIR}"
	doins -r ${WORKDIR}/*
}
