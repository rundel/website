REMOTEUSER ?= cr173
REMOTEHOST ?= monster.stat.duke.edu
REMOTEDIR ?= ~/.public_html/
REMOTE ?= $(REMOTEUSER)@$(REMOTEHOST):$(REMOTEDIR)

all:
	hugo

open: all
	open public/index.html

push: all
	rsync -az ./public/* $(REMOTE)
