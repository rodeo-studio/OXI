<?php
class ProjectPage extends Page {

  private static $db = array(
    'ProjectDate' => 'Date',  
    'Feature' => 'Boolean',
    'LabelFormatted' => 'Text',
    'LocationFormatted' => 'Text',
    'Synopsis' => 'Text',
    'TagSmallBuilds' => 'Boolean',
    'TagLandscape' => 'Boolean',
    'TagInfrastructure' => 'Boolean',
    'TagPublicSpace' => 'Boolean'
  );

  private static $has_many = array(
    'NewsElements' => 'ProjectNewsElement',
    'ProjectPhotoElements' => 'ProjectPhotoElement'
  );

  private static $has_one = array(
  );

  function getCMSFields() {
    $fields = parent::getCMSFields();

    //News
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

    $fields->addFieldToTab('Root.Main', new TextareaField('LabelFormatted','Label (formatted)'), 'Content'); 
    $fields->addFieldToTab('Root.Main', new CheckboxField('Feature', 'Feature on home page'), 'Content'); 

    $dateField = new DateField('ProjectDate', 'Date');
    $dateField->setConfig('showcalendar', true);
    $fields->addFieldToTab('Root.Main', $dateField, 'Content');

    $fields->addFieldToTab("Root.Main", new LiteralField ('literalfield', '<strong>Tags</strong>'), 'Content');
    $fields->addFieldToTab("Root.Main", new CheckboxField ('TagSmallBuilds', 'Small Builds'), 'Content');
    $fields->addFieldToTab("Root.Main", new CheckboxField ('TagLandscape', 'Landscape'), 'Content');
    $fields->addFieldToTab("Root.Main", new CheckboxField ('TagInfrastructure', 'Infrastructure'), 'Content');
    $fields->addFieldToTab("Root.Main", new CheckboxField ('TagPublicSpace', 'Public Space'), 'Content');
    
    $fields->addFieldToTab('Root.Main', new TextareaField('LocationFormatted', 'Location'), 'Content');
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
