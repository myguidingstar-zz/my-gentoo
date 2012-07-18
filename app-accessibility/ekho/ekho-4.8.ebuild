# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-accessibility/espeak/espeak-1.46.01.ebuild,v 1.2 2012/01/01 15:33:41 armin76 Exp $

EAPI="4"

inherit eutils

SRC_URI="mirror://sourceforge/e-guidedog/${P}.tar.bz2"
DESCRIPTION="Chinese text-to-speech (TTS) software supporting Cantonese, Mandarin, Zhaoan Hakka and Korean"
HOMEPAGE="http://www.eguidedog.net/ekho.php"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="alpha amd64 hppa ia64 ppc ppc64 sparc x86 amd64-linux x86-linux"
IUSE=""
RDEPEND="media-sound/pulseaudio
media-libs/libsndfile
media-libs/portaudio"
DEPEND="${RDEPEND}"
