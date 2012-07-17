# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

MYSPELL_SPELLING_DICTIONARIES=(
"vi,VN,vi_VN,Vietnamese (Vietnam),vi_VN.zip"
)

MYSPELL_HYPHENATION_DICTIONARIES=(
)

MYSPELL_THESAURUS_DICTIONARIES=(
)

inherit myspell
SRC_URI="http://hunspell-spellcheck-vi.googlecode.com/files/vi_VN.zip"
DESCRIPTION="Vietnamese dictionaries for myspell/hunspell"
LICENSE="LGPL-2.1"
HOMEPAGE="http://lingucomponent.openoffice.org/ http://translate.sourceforge.net/"

KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 sh sparc x86 ~x86-fbsd"
