# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
inherit multilib

DESCRIPTION="Converting documents from old Vietnamese encodings to Unicode"
HOMEPAGE="http://extensions.libreoffice.org/extension-center/${PN}/"
SRC_URI="http://extensions.libreoffice.org/extension-center/${PN}/releases/${PV}/${PN}-${PV}.oxt"
INSTDIR="/usr/$(get_libdir)/libreoffice/share/extensions/${PN}"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="amd64 ppc -sparc x86"
IUSE=""
RDEPEND="virtual/ooo"
DEPEND="${RDEPEND}"

src_compile() {
unzip ${DISTDIR}/${PN}-${PV}.oxt -d ${WORKDIR}
}
src_install() {
	insinto "${INSTDIR}"
	doins -r ${WORKDIR}/*
}
