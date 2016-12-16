# Makefile for project
REPO_USER=mtulio
PROJECTS="documentation firmware linux noobs target_fs tools userland"
REPO_URL=git@github.com:${REPO_USER}

.PHONY: mod-init
mod-init:
	for P in ${PROJECTS} ; do \
		git submodule add --name external/${P} ${REPO_URL}/${P}.git external/${P} ; \
	done

.PHONY: mod-update
mod-update:
	#git submodules foreach git pull origin master
	git submodule update --recursive --remote
