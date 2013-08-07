# $Id$
# Author:	Daniel Bosk <daniel@bosk.se>
# Date:		5 Aug 2013

SERVER= 	secure.itm.miun.se
PUBDIR= 	/home/danbos/www
CATEGORY= 	pub

DOCUMENTS=	matematik-3.pdf
FILES=		matematik-3.tex frontmatter.tex backmatter.tex matematik-3.bib
FILES+= 	preface.tex
FILES+= 	intro.tex
FILES+= 	mertal.tex polynom.tex cirkeln.tex
FILES+= 	kontdiskfunk.tex polynomfunk.tex
FILES+= 	derivata.tex andraderivatan.tex
FILES+= 	eulerstal.tex extremvarde.tex
FILES+= 	integral.tex

USE_LATEXMK= 	yes
USE_BIBLATEX= 	yes

matematik-3.pdf matematik-3.ps: ${FILES}

clean:
	${RM} figs/*-converted-to.pdf
	${RM} matematik-3-1.asy matematik-3-1.pdf matematik-3.pre

miun.depend.mk:
ifeq (${MAKE},gmake)
	lynx -dump http://ver.miun.se/build/$@ > $@
else
	wget http://ver.miun.se/build/$@
endif

include miun.depend.mk
include miun.docs.mk
