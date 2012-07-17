# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit autotools

DESCRIPTION="Nautilus Terminal is a terminal embedded in Nautilus"
HOMEPAGE="http://projects.flogisoft.com/nautilus-terminal/"
SRC_URI="http://projects.flogisoft.com/nautilus-terminal/download/${PN}_${PV}_src.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="=gnome-base/nautilus-2*
=dev-python/nautilus-python-0.7*
x11-libs/vte[introspection]
"

DEPEND="${EPEND}"

S="${WORKDIR}/${PN}-${PV}"

src_install(){
	./install.sh -p ${D}
}

