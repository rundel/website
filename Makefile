REMOTEUSER ?= cr173
REMOTEHOST ?= monster.stat.duke.edu
REMOTEDIR ?= ~/.public_html/
REMOTE ?= $(REMOTEUSER)@$(REMOTEHOST):$(REMOTEDIR)

all: public/index.html static/CV/Rundel-CV.pdf

public/index.html:
	hugo

static/CV/Rundel-CV.pdf: static/CV/Rundel-CV.tex static/CV/settings.tex
	cd static/CV && xelatex Rundel-CV.tex

open: all
	open public/index.html

push: all
	rsync -az ./public/* $(REMOTE)

cv: static/CV/Rundel-CV.pdf
