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
projects[backup_migrate][version] = 2.2

projects[ctools][subdir] = contrib
projects[ctools][version] = 1.0-rc1

projects[contact_forms][subdir] = contrib
projects[contact_forms][version] = 1.2

projects[date][subdir] = contrib
projects[date][version] = 2.0-alpha5

projects[context][subdir] = contrib
projects[context][version] = 3.0-beta3

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


projects[libraries][subdir] = contrib
projects[libraries][version] = 1.0

projects[media][subdir] = contrib
projects[media][version] = 1.0-rc2

projects[migrate][subdir] = contrib
projects[migrate][version] = 2.2

projects[wordpress_migrate][subdir] = contrib
projects[wordpress_migrate][version] = 1.x-dev

projects[pathauto][subdir] = contrib
projects[pathauto][version] = 1.0

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

projects[styles][subdir] = contrib
projects[styles][version] = 2.0-alpha8

projects[token][subdir] = contrib
projects[token][version] = 1.0-beta7

projects[tweet][subdir] = contrib
projects[tweet][version] = 4.4

projects[views][subdir] = contrib
projects[views][version] = 3.0-rc1

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
projects[devel][version] = 1.2

projects[simpletest][subdir] = dev
projects[simpletest][version] = 2.0

projects[omega_tools][subdir] = dev
projects[omega_tools][version] = 3.0-rc4

projects[delta][subdir] = dev
projects[delta][version] = 3.0-beta9

; Themes
projects[tao][subdir] = contrib
projects[tao][version] = 3.0-beta4

projects[rubik][subdir] = contrib
projects[rubik][version] = 4.0-beta6

projects[omega][subdir] = contrib
projects[omega][version] = 3.x-dev

; Libraries
libraries[ckeditor][download][type] = get
libraries[ckeditor][download][url] = http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.2/ckeditor_3.6.2.zip
libraries[ckeditor][download][directory_name] = ckeditor
libraries[ckeditor][download][destination] = libraries

libraries[flexslider][download][type] = get
libraries[flexslider][download][url] = https://github.com/downloads/woothemes/FlexSlider/FlexSlider-1.8.zip
libraries[flexslider][download][directory_name] = flexslider
libraries[flexslider][download][destination] = libraries

