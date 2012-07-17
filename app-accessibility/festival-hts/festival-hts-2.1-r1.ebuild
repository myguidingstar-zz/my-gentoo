# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-accessibility/festival-hts/festival-hts-2.1.ebuild,v 1.1 2010/06/30 16:29:41 neurogeek Exp $

EAPI=2

DESCRIPTION="HTS voices for Festival"
HOMEPAGE="http://hts.sp.nitech.ac.jp/"
SITE="http://hts.sp.nitech.ac.jp/archives/${PV}"
SRC_URI="${SITE}/festvox_nitech_us_awb_arctic_hts-${PV}.tar.bz2
	${SITE}/festvox_nitech_us_bdl_arctic_hts-${PV}.tar.bz2
	${SITE}/festvox_nitech_us_clb_arctic_hts-${PV}.tar.bz2
	${SITE}/festvox_nitech_us_jmk_arctic_hts-${PV}.tar.bz2
	${SITE}/festvox_nitech_us_rms_arctic_hts-${PV}.tar.bz2
	${SITE}/festvox_nitech_us_slt_arctic_hts-${PV}.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

DEPEND=">=app-accessibility/festival-2.1"
RDEPEND="${DEPEND}"

src_prepare() {
  for voice in awb bdl clb jmk rms slt
  do
    voicefile=lib/voices/us/nitech_us_${voice}_arctic_hts/festvox/nitech_us_${voice}_arctic_hts.scm
    sed "s@(require 'hts)@(require 'hts21compat)@g" ${voicefile} -i
    sed "s@(Parameter.set 'Synth_Method 'HTS)@(Parameter.set 'Synth_Method 'HTS21)@g" ${voicefile} -i
  done
}

src_install() {
	insinto /usr/share/festival/voices/
	doins -r lib/voices/*
}
