remote_dir := /Volumes/webdav/Groups/Jahrgang 9 Informatik 17-18 Sch

MAKEFLAGS = --silent
.PHONY: sync diff

sync:
	[ -d "$(remote_dir)" ]
	rsync --archive --verbose --update --exclude='.*' dist/. "$(remote_dir)"

diff:
	[ -d "$(remote_dir)" ]
	colordiff --unified --recursive --exclude=.DS_Store --exclude=Homepage dist "$(remote_dir)"
