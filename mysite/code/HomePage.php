<?php
class HomePage extends Page {

  private static $db = array(
    'SocialPhone' => 'Text',
    'SocialPhoneReal' => 'Text',
    'SocialEmail' => 'Text',
    'SocialMap' => 'Text',
    'SocialInstagram' => 'Text'
  );

  private static $has_many = array(
    'NewsElements' => 'HomeNewsElement'
  );

  private static $has_one = array(
  );

  function getCMSFields() {
    $fields = parent::getCMSFields();

    $fields->addFieldToTab('Root.Social', new TextField('SocialPhone', 'Phone number'));
    $fields->addFieldToTab('Root.Social', new TextField('SocialPhoneReal', 'Phone number (valid for dialling)'));
    $fields->addFieldToTab('Root.Social', new TextField('SocialEmail', 'Email address'));
    $fields->addFieldToTab('Root.Social', new TextField('SocialMap', 'Map URL'));
    $fields->addFieldToTab('Root.Social', new TextField('SocialInstagram', 'Instagram URL'));

    // remove fields
    $fields->removeFieldFromTab('Root.Main', 'Content');

    $config = GridFieldConfig_RelationEditor::create();
    $config->removeComponentsByType('GridFieldPaginator');
    $config->removeComponentsByType('GridFieldPageCount');
    $config->addComponent(new GridFieldSortableRows('SortID'));
    $newsElementField = new GridField(
      'NewsElements', // Field name
      'News Element', // Field title
      $this->NewsElements(),
      $config
    );
    $fields->addFieldToTab('Root.NewsElements', $newsElementField); 

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
