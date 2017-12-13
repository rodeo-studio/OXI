<?php
class HomePage extends Page {

  private static $db = array(
    'SocialInstagram' => 'Text'
  );

  private static $has_many = array(
    'HomeNewsElements' => 'HomeNewsElement'
  );

  private static $has_one = array(
  );

  function getCMSFields() {
    $fields = parent::getCMSFields();

    $fields->addFieldToTab('Root.Social', new TextField('SocialInstagram', 'Instagram URL'));

    // remove fields
    $fields->removeFieldFromTab('Root.Main', 'Content');

    $config = GridFieldConfig_RelationEditor::create();
    $config->removeComponentsByType('GridFieldPaginator');
    $config->removeComponentsByType('GridFieldPageCount');
    $config->addComponent(new GridFieldSortableRows('SortID'));
    $homeNewsElementField = new GridField(
      'HomeNewsElements', // Field name
      'News Element', // Field title
      $this->HomeNewsElements(),
      $config
    );
    $fields->addFieldToTab('Root.NewsElements', $homeNewsElementField); 

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
