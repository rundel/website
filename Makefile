REMOTEUSER ?= cr173
REMOTEHOST ?= saxon.stat.duke.edu
REMOTEDIR ?= ~/.public_html/
REMOTE ?= $(REMOTEUSER)@$(REMOTEHOST):$(REMOTEDIR)

all:
	hugo

push: all
	rsync -az ./public/* $(REMOTE)
