; Bloggio makefile

core = 7.x
api = 2

; fix for dynamic titles in shortcuts menu. Refer http://drupal.org/node/686440
projects[drupal][patch][] = http://drupal.org/files/issues/shortcut-dynamic-link-titles-686440-13.patch

projects[bloggio_features][type] = module
projects[bloggio_features][download][type] = git
projects[bloggio_features][subdir] = custom
projects[bloggio_features][download][url] = git://github.com/druplug/bloggio_features.git

projects[backup_migrate][subdir] = contrib
projects[backup_migrate][version] = 2.4

projects[ctools][subdir] = contrib
projects[ctools][version] = 1.0

projects[contact_forms][subdir] = contrib
projects[contact_forms][version] = 1.3

projects[date][subdir] = contrib
projects[date][version] = 2.5

projects[context][subdir] = contrib
projects[context][version] = 3.0-beta3

projects[demo_views][type] = module
projects[demo_views][download][type] = git
projects[demo_views][subdir] = custom
projects[demo_views][download][url] = git@bitbucket.org:lakshminp/demo_views.git

projects[disqus][subdir] = contrib
projects[disqus][version] = 1.9

projects[entity][subdir] = contrib
projects[entity][version] = 1.0-rc1

projects[fblikebutton][subdir] = contrib
projects[fblikebutton][version] = 1.2

projects[features][subdir] = contrib
projects[features][version] = 1.0-beta4
; adding ability to import menu shortcuts as features, issue: http://drupal.org/node/986968
projects[features][patch][] = http://drupal.org/files/issues/features.shortcut_sets_0.patch

projects[file_entity][subdir] = contrib
projects[file_entity][version] = 2.x-dev

projects[flexslider][subdir] = contrib
projects[flexslider][version] = 1.0-rc3

projects[google_analytics][type] = module
projects[google_analytics][download][type] = git
projects[google_analytics][subdir] = custom
projects[google_analytics][download][url] = git://github.com/druplug/google_analytics.git


projects[jquery_update][subdir] = contrib
projects[jquery_update][version] = 2.2

projects[libraries][subdir] = contrib
projects[libraries][version] = 1.0

projects[media][subdir] = contrib
projects[media][version] = 1.1

projects[metatag][subdir] = contrib
projects[metatag][version] = 1.0-alpha6

projects[migrate][subdir] = contrib
projects[migrate][version] = 2.4

projects[wordpress_migrate][subdir] = contrib
projects[wordpress_migrate][version] = 1.x-dev

projects[pathauto][subdir] = contrib
projects[pathauto][version] = 1.1

projects[save_as_draft][type] = module
projects[save_as_draft][download][type] = git
projects[save_as_draft][subdir] = custom
projects[save_as_draft][download][url] = git://github.com/druplug/save_as_draft.git

projects[scheduler][subdir] = contrib
projects[scheduler][version] = 1.0

projects[simplify][type] = module
projects[simplify][download][type] = git
projects[simplify][subdir] = contrib
projects[simplify][download][url] = git://github.com/druplug/simplify.git

projects[strongarm][subdir] = contrib
projects[strongarm][version] = 2.0-beta4

projects[superfish][subdir] = contrib
projects[superfish][version] = 1.8

projects[styles][subdir] = contrib
projects[styles][version] = 2.0-alpha8

projects[token][subdir] = contrib
projects[token][version] = 1.0-beta7

projects[tweet][subdir] = contrib
projects[tweet][version] = 4.4

projects[views][subdir] = contrib
projects[views][version] = 3.0-rc1

projects[views_fluidgrid][type] = module
projects[views_fluidgrid][download][type] = git
projects[views_fluidgrid][subdir] = custom
projects[views_fluidgrid][download][url] = git://github.com/druplug/views_fluidgrid.git

projects[views_infinite_scroll][type] = module
projects[views_infinite_scroll][download][type] = git
projects[views_infinite_scroll][subdir] = custom
projects[views_infinite_scroll][download][url] = git://github.com/druplug/views_infinite_scroll.git

projects[views_isotope][subdir] = contrib
projects[views_isotope][version] = 1.0-beta2

projects[views_slideshow][subdir] = contrib
projects[views_slideshow][version] = 3.0

projects[views_accordion][subdir] = contrib
projects[views_accordion][version] = 1.0-rc1

projects[wysiwyg][subdir] = contrib
projects[wysiwyg][version] = 2.1

projects[wysiwyg_features][type] = module
projects[wysiwyg_features][download][type] = git
projects[wysiwyg_features][subdir] = custom
projects[wysiwyg_features][download][url] = git://github.com/druplug/wysiwyg_features.git

projects[xmlsitemap][type] = module
projects[xmlsitemap][download][type] = git
; Patch pending. So, adding it in custom even though it is a contrib module.
projects[xmlsitemap][subdir] = custom
projects[xmlsitemap][download][url] = git://github.com/druplug/xmlsitemap.git

; Development related
projects[coder][subdir] = dev
projects[coder][version] = 1.0

projects[devel][subdir] = dev
projects[devel][version] = 1.3

projects[simpletest][subdir] = dev
projects[simpletest][version] = 2.0

projects[omega_tools][subdir] = dev
projects[omega_tools][version] = 3.0-rc4

projects[delta][subdir] = dev
projects[delta][version] = 3.0-beta11

; Themes
projects[tao][subdir] = contrib
projects[tao][version] = 3.0-beta4

projects[rubik][subdir] = contrib
projects[rubik][version] = 4.0-beta6

projects[omega][subdir] = contrib
projects[omega][version] = 3.x-dev

projects[tiles][type] = theme
projects[tiles][download][type] = hg
projects[tiles][subdir] = custom
projects[tiles][download][url] = ssh://hg@bitbucket.org/lakshminp/tiles

; Libraries
libraries[ckeditor][download][type] = get
libraries[ckeditor][download][url] = http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.2/ckeditor_3.6.2.zip
libraries[ckeditor][download][directory_name] = ckeditor
libraries[ckeditor][download][destination] = libraries

libraries[flexslider][download][type] = get
libraries[flexslider][download][url] = https://github.com/downloads/woothemes/FlexSlider/FlexSlider-1.8.zip
libraries[flexslider][download][directory_name] = flexslider
libraries[flexslider][download][destination] = libraries

libraries[isotope][download][type] = get
libraries[isotope][download][url] = http://isotope.metafizzy.co/jquery.isotope.min.js
libraries[isotope][download][directory_name] = jquery.isotope
libraries[isotope][download][destination] = libraries

libraries[cycle][download][type] = get
libraries[cycle][download][url] = https://github.com/downloads/malsup/cycle/jquery.cycle.all.latest.min.js
libraries[cycle][download][directory_name] = jquery.cycle
libraries[cycle][download][destination] = libraries

libraries[autopager][download][type] = get
libraries[autopager][download][url] = http://jquery-autopager.googlecode.com/files/jquery.autopager-1.0.0.js 
libraries[autopager][download][directory_name] = autopager
libraries[autopager][download][destination] = libraries

libraries[modernizr][download][type] = get
libraries[modernizr][download][url] = http://52framework.googlecode.com/svn-history/r36/trunk/js/modernizr-1.7.min.js
libraries[modernizr][download][directory_name] = modernizr
libraries[modernizr][download][destination] = libraries

libraries[superfish][download][type] = get
libraries[superfish][download][url] = http://dl.dropbox.com/u/1971103/superfish.zip
libraries[superfish][download][directory_name] = superfish
libraries[superfish][download][destination] = libraries

