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

projects[features][subdir] = "contrib"
projects[features][version] = "1.0-beta4"

projects[media][subdir] = "contrib"
projects[media][version] = "1.0-rc1"

projects[pathauto][subdir] = "contrib"
projects[pathauto][version] = "1.0-rc2"

projects[scheduler][subdir] = "contrib"
projects[scheduler][version] = "1.0"

projects[social_share][download][type] = "git"
projects[social_share][subdir] = "contrib"
projects[social_share][download][url] = git://github.com/lakshminp/social_share.git

projects[token][subdir] = "contrib"
projects[token][version] = "1.0-beta5"

projects[views][subdir] = "contrib"
projects[views][version] = "3.0-rc1"

projects[wysiwyg][subdir] = "contrib"
projects[wysiwyg][version] = "2.1"

projects[xmlsitemap][subdir] = "contrib"
projects[xmlsitemap][version] = "2.0-beta3"

; Themes
; projects[blogbuzz][type] = theme
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

