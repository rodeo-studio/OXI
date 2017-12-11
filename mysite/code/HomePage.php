<?php
class HomePage extends Page {

  private static $db = array(
    'SocialInstagram' => 'Text'
  );

  private static $has_many = array(
  );

  private static $has_one = array(
  );

  function getCMSFields() {
    $fields = parent::getCMSFields();

    $fields->addFieldToTab('Root.Social', new TextField('SocialInstagram', 'Instagram User'));

    // remove fields
    $fields->removeFieldFromTab('Root.Main', 'Content');

    return $fields;
  }

}
class HomePage_Controller extends Page_Controller {
  private static $allowed_actions = array (
  );

  public function init() {
    parent::init();

    $this->Projects = DataObject::get( 
    $callerClass = "ProjectPage", 
    $filter = "Feature = 1", 
    $sort = "",
    $join = "",
    $limit = "" 
    );
  }
}
