<?php
/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
function bloggio_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = t('My Blog');
} 

function bloggio_install_select_profile_form_alter(&$form, $form_state) {
    unset($form['profile']['standard']);
}

