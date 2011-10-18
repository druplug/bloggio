; Bloggio makefile

core = 7.x
api = 2

projects[admin][subdir] = "contrib"

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

projects[features][subdir] = "contrib"
projects[features][version] = "1.0-beta4"

projects[file_entity][subdir] = contrib
projects[file_entity][version] = 1.x-dev

projects[media][subdir] = "contrib"
projects[media][version] = "1.0-rc1"

projects[pathauto][subdir] = "contrib"
projects[pathauto][version] = "1.0-rc2"

projects[scheduler][subdir] = "contrib"
projects[scheduler][version] = "1.0"

projects[social_share][type] = module
projects[social_share][download][type] = "git"
projects[social_share][subdir] = "contrib"
projects[social_share][download][url] = git://github.com/lakshminp/social_share.git

projects[styles][subdir] = contrib
projects[styles][version] = 2.0-alpha8

projects[token][subdir] = "contrib"
projects[token][version] = "1.0-beta5"

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
projects[wysiwyg_features][download][url] = git://github.com/lakshminp/wysiwyg_features.git

projects[xmlsitemap][subdir] = "contrib"
projects[xmlsitemap][version] = "2.0-beta3"

; Development related
projects[coder][subdir] = "dev"
projects[coder][version] = "1.0"

projects[devel][subdir] = "dev"
projects[devel][version] = "1.2"

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

