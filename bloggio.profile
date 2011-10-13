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

/**
 * Implements of hook_install_tasks().
 */
function bloggio_install_tasks() {
  $tasks = array(
    'bloggio_configure_blog' => array(
      'display_name' => st('Configure your blog'),
      'type' => 'form',
      'function' => 'bloggio_config_form',
    ),
  );
  return $tasks;
}


function bloggio_config_form($form, &$form_state) {
 $form['student_type'] = array(
    '#type' => 'radios',
    '#options' => drupal_map_assoc(array(t('High School'), t('Undergraduate'), t('Graduate'))),
    '#title' => t('What type of student are you?')
  );
  $form['high_school'] = array(
    '#type' => 'fieldset',
    '#title' => t('High School Information'),
    // This #states rule says that the "high school" fieldset should only
    // be shown if the "student_type" form element is set to "High School".
    '#states' => array(
      'visible' => array(
        ':input[name="student_type"]' => array('value' => t('High School')),
      ),
    ),
  );

  // High school information.
  $form['high_school']['tests_taken'] = array(
    '#type' => 'checkboxes',
    '#options' => drupal_map_assoc(array(t('SAT'), t('ACT'))),
    '#title' => t('What standardized tests did you take?'),
    // This #states rule says that this checkboxes array will be visible only
    // when $form['student_type'] is set to t('High School').
    // It uses the jQuery selector :input[name=student_type] to choose the
    // element which triggers the behavior, and then defines the "High School"
    // value as the one that triggers visibility.
    '#states' => array(
      'visible' => array(   // action to take.
        ':input[name="student_type"]' => array('value' => t('High School')),
      ),
    ),
  );

  $form['high_school']['sat_score'] = array(
    '#type' => 'textfield',
    '#title' => t('Your SAT score:'),
    '#size' => 4,

    // This #states rule limits visibility to when the $form['tests_taken']
    // 'SAT' checkbox is checked."
    '#states' => array(
      'visible' => array(  // action to take.
        ':input[name="tests_taken[SAT]"]' => array('checked' => TRUE),
      ),
    ),
  );
  $form['high_school']['act_score'] = array(
    '#type' => 'textfield',
    '#title' => t('Your ACT score:'),
    '#size' => 4,

    // Set this element visible if the ACT checkbox above is checked.
    '#states' => array(
      'visible' => array(  // action to take.
        ':input[name="tests_taken[ACT]"]' => array('checked' => TRUE),
      ),
    ),
  );

  // Undergrad information.
  $form['undergraduate'] = array(
    '#type' => 'fieldset',
    '#title' => t('Undergraduate Information'),
    // This #states rule says that the "undergraduate" fieldset should only
    // be shown if the "student_type" form element is set to "Undergraduate".
    '#states' => array(
      'visible' => array(
        ':input[name="student_type"]' => array('value' => t('Undergraduate')),
      ),
    ),
  );

  $form['undergraduate']['how_many_years'] = array(
    '#type' => 'select',
    '#title' => t('How many years have you completed?'),
    // The options here are integers, but since all the action here happens
    // using the DOM on the client, we will have to use strings to work with
    // them.
    '#options' => array(
      1 => t('One'),
      2 => t('Two'),
      3 => t('Three'),
      4 => t('Four'),
      5 => t('Lots'),
    ),
  );

  $form['undergraduate']['comment'] = array(
    '#type' => 'item',
    '#description' => t("Wow, that's a long time."),
    '#states' => array(
      'visible' => array(
        // Note that '5' must be used here instead of the integer 5.
        // The information is coming from the DOM as a string.
        ':input[name="how_many_years"]' => array('value' => '5'),
      ),
    ),
  );
  $form['undergraduate']['school_name'] = array(
    '#type' => 'textfield',
    '#title' => t('Your college or university:'),
  );
  $form['undergraduate']['school_country'] = array(
    '#type' => 'select',
    '#options' => drupal_map_assoc(array(t('UK'), t('Other'))),
    '#title' => t('In what country is your college or university located?'),
  );
  $form['undergraduate']['country_writein'] = array(
    '#type' => 'textfield',
    '#size' => 20,
    '#title' => t('Please enter the name of the country where your college or university is located.'),

    // Only show this field if school_country is set to 'Other'.
    '#states' => array(
      'visible' => array(  // Action to take: Make visible.
        ':input[name="school_country"]' => array('value' => t('Other')),
      ),
    ),
  );

  $form['undergraduate']['thanks'] = array(
    '#type' => 'item',
    '#description' => t('Thanks for providing both your school and your country.'),
    '#states' => array(
      // Here visibility requires that two separate conditions be true.
      'visible' => array(
        'input[name="school_country"]' => array('value' => t('Other')),
        'input[name="country_writein"]' => array('filled' => TRUE),
      ),
    ),
  );
  $form['undergraduate']['go_away'] = array(
    '#type' => 'submit',
    '#value' => t('Done with form'),
    '#states' => array(
      // Here visibility requires that two separate conditions be true.
      'visible' => array(
        'input[name="school_country"]' => array('value' => t('Other')),
        'input[name="country_writein"]' => array('filled' => TRUE),
      ),
    ),
  );

  // Graduate student information.
  $form['graduate'] = array(
    '#type' => 'fieldset',
    '#title' => t('Graduate School Information'),
    // This #states rule says that the "graduate" fieldset should only
    // be shown if the "student_type" form element is set to "Graduate".
    '#states' => array(
      'visible' => array(
        ':input[name="student_type"]' => array('value' => t('Graduate')),
      ),
    ),
  );
  $form['graduate']['more_info'] = array(
    '#type' => 'textarea',
    '#title' => t('Please describe your graduate studies'),
  );

  $form['graduate']['info_provide'] = array(
    '#type' => 'checkbox',
    '#title' => t('Check here if you have provided information above'),
    '#disabled' => TRUE,
    '#states' => array(
      // Mark this checkbox checked if the "more_info" textarea has something
      // in it, if it's 'filled'.
      'checked' => array(      // Action to take: check the checkbox.
        ':input[name="more_info"]' => array('filled' => TRUE),
      ),
    ),
  );

  $form['expand_more_info'] = array(
    '#type' => 'checkbox',
    '#title' => t('Check here if you want to add more information.'),
  );
  $form['more_info'] = array(
    '#type' => 'fieldset',
    '#title' => t('Additional Information'),
    '#collapsible' => TRUE,
    '#collapsed' => TRUE,

    // Expand the expand_more_info fieldset if the box is checked.
    '#states' => array(
      'expanded' => array(
        ':input[name="expand_more_info"]' => array('checked' => TRUE),
      ),
    ),
  );
  $form['more_info']['feedback'] = array(
    '#type' => 'textarea',
    '#title' => t('What do you have to say?'),
  );

  $form['submit'] = array(
    '#type' => 'submit',
    '#value' => t('Submit your information'),
  );

  return $form;
}

/**
 * Submit handler for bloggio_config_form().
 */
function bloggio_config_form_submit($form, &$form_state) {
  drupal_set_message(t('Submitting values: @values', array('@values' => var_export($form_state['values'], TRUE))));
}

