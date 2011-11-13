 Stub makefile for Bloggio
; Get Drupal  7 core and the profile which contains a .make file that will
; download all the required projects/libraries.

core = 7.x
api = 2

projects[] = drupal


; Setup the videola profile from this make file stub.
projects[bloggio][type] = "profile"
projects[bloggio][download][type] = git
projects[bloggio][download][url] = https://github.com/druplug/bloggio.git

