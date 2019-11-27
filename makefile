GIT = git submodule update --init --recursive --remote
SH 	= bash
DEPEND = bash/install.sh
CP = bash/cp.sh
DEPLOY = bash/setup-deploy.sh

all: sync install resource deploy

sync:
	$(GIT)

install:
	$(SH) $(DEPEND)

resource:
	$(SH) $(CP)

deploy:
	$(SH) $(DEPLOY)