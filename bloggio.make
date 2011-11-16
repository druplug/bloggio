; Bloggio makefile

core = 7.x
api = 2

projects[admin][subdir] = "contrib"

projects[bloggio_features][type] = module
projects[bloggio_features][download][type] = "git"
projects[bloggio_features][subdir] = "custom"
projects[bloggio_features][download][url] = git://github.com/druplug/bloggio_features.git

projects[ctools][subdir] = "contrib"
projects[ctools][version] = "1.0-rc1"

projects[contact_forms][subdir] = "contrib"
projects[contact_forms][version] = "1.2"

projects[date][subdir] = "contrib"
projects[date][version] = "2.0-alpha4"

projects[disqus][subdir] = "contrib"
projects[disqus][version] = "1.9"

projects[entity][subdir] = contrib
projects[entity][version] = 1.0-beta10

projects[fblikebutton][subdir] = contrib
projects[fblikebutton][version] = 1.2

projects[features][subdir] = "contrib"
projects[features][version] = "1.0-beta4"

projects[file_entity][subdir] = contrib
projects[file_entity][version] = 1.x-dev

projects[media][subdir] = "contrib"
projects[media][version] = "1.0-rc1"

projects[pathauto][subdir] = "contrib"
projects[pathauto][version] = "1.0-rc2"

projects[save_as_draft][type] = module
projects[save_as_draft][download][type] = "git"
projects[save_as_draft][subdir] = "contrib"
projects[save_as_draft][download][url] = git://github.com/druplug/save_as_draft.git

projects[scheduler][subdir] = "contrib"
projects[scheduler][version] = "1.0"

projects[simplify][type] = module
projects[simplify][download][type] = "git"
projects[simplify][subdir] = "contrib"
projects[simplify][download][url] = git://github.com/druplug/simplify.git

projects[strongarm][subdir] = contrib
projects[strongarm][version] = 2.0-beta4

projects[styles][subdir] = contrib
projects[styles][version] = 2.0-alpha8

projects[token][subdir] = "contrib"
projects[token][version] = "1.0-beta5"

projects[tweet][subdir] = contrib
projects[tweet][version] = 4.4

projects[views][subdir] = "contrib"
projects[views][version] = "3.0-rc1"

projects[workbench][subdir] = "contrib"
projects[workbench][version] = "1.0"

projects[workbench_access][subdir] = "contrib"
projects[workbench_access][version] = "1.0"

projects[workbench_files][subdir] = "contrib"
projects[workbench_files][version] = "1.0"

projects[workbench_media][subdir] = "contrib"
projects[workbench_media][version] = "1.0"

projects[workbench_moderation][subdir] = "contrib"
projects[workbench_moderation][version] = "1.0"

projects[wysiwyg][subdir] = "contrib"
projects[wysiwyg][version] = "2.1"

projects[wysiwyg_features][type] = module
projects[wysiwyg_features][download][type] = "git"
projects[wysiwyg_features][subdir] = "custom"
projects[wysiwyg_features][download][url] = git://github.com/druplug/wysiwyg_features.git

projects[xmlsitemap][type] = module
projects[xmlsitemap][download][type] = "git"
projects[xmlsitemap][subdir] = "custom"
projects[xmlsitemap][download][url] = git://github.com/druplug/xmlsitemap.git

; Development related
projects[coder][subdir] = "dev"
projects[coder][version] = "1.0"

projects[devel][subdir] = "dev"
projects[devel][version] = "1.2"

projects[simpletest][subdir] = "dev"
projects[simpletest][version] = "2.0"

; Themes
projects[blogbuzz][subdir] = "contrib"
projects[blogbuzz][version] = "1.0-rc2"

; Libraries
libraries[tinymce][download][type] = "get"
libraries[tinymce][download][url] = "http://www.tinymce.com/track.php?url=http://github.com/downloads/tinymce/tinymce/tinymce_3.4.6.zip"
libraries[tinymce][download][directory_name] = "tinymce"
libraries[tinymce][download][destination] = "libraries"

libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.2/ckeditor_3.6.2.zip"
libraries[ckeditor][download][directory_name] = "ckeditor"
libraries[ckeditor][download][destination] = "libraries"

