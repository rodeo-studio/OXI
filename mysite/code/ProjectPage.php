<?php
class ProjectPage extends Page {

  private static $db = array(
    'Feature' => 'Boolean',
    'LabelFormatted' => 'Text',
    'Synopsis' => 'Text'
  );

  private static $has_many = array(
    'ProjectPhotoElements' => 'ProjectPhotoElement'
  );

  private static $has_one = array(
  );

  function getCMSFields() {
    $fields = parent::getCMSFields();

    $fields->addFieldToTab('Root.Main', new CheckboxField('Feature','Feature on home page'), 'Content'); 
    
    $fields->addFieldToTab('Root.Main', new TextareaField('LabelFormatted','Label (formatted)'), 'Content'); 
    $fields->addFieldToTab('Root.Main', new TextField('Synopsis', 'Synopsis'), 'Content');

    $config = GridFieldConfig_RelationEditor::create();
    $config->removeComponentsByType('GridFieldPaginator');
    $config->removeComponentsByType('GridFieldPageCount');
    $config->addComponent(new GridFieldSortableRows('SortID'));
    $projectPhotoElementField = new GridField(
      'ProjectPhotoElements', // Field name
      'Project Photo Element', // Field title
      $this->ProjectPhotoElements(),
      $config
    );
    $fields->addFieldToTab('Root.Elements', $projectPhotoElementField); 

    return $fields;
  }

}
class ProjectPage_Controller extends Page_Controller {
  private static $allowed_actions = array (
  );

  public function init() {
    parent::init();
  }
}
