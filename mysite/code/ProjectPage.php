<?php
class ProjectPage extends Page {

  private static $db = array(
    'ProjectDate' => 'Date',  
    'Feature' => 'Boolean',
    'LabelFormatted' => 'Text',
    'LocationFormatted' => 'Text',
    'Synopsis' => 'Text',
    'TagArchitecture' => 'Boolean',
    'TagStrategiesAndFrameworks' => 'Boolean',
    'TagStreetsAndPublicRealm' => 'Boolean',
    'TagPublicInfrastructure' => 'Boolean',
    'TagParksAndOpenSpace' => 'Boolean',
    'TagWaterfronts' => 'Boolean',
    'TagGardens' => 'Boolean',
    'TagEducation' => 'Boolean',
    'TagSportAndRecreation' => 'Boolean',
    'TagEcologyAndEnvironment' => 'Boolean',
    'TagGreenfieldsDevelopments' => 'Boolean',
    'TagConsultation' => 'Boolean'
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
    $fields->addFieldToTab("Root.Main", new CheckboxField ('TagArchitecture', 'Architecture'), 'Content');
    $fields->addFieldToTab("Root.Main", new CheckboxField ('TagStrategiesAndFrameworks', 'Strategies & Frameworks'), 'Content');
    $fields->addFieldToTab("Root.Main", new CheckboxField ('TagStreetsAndPublicRealm', 'Streets & Public Realm'), 'Content');
    $fields->addFieldToTab("Root.Main", new CheckboxField ('TagPublicInfrastructure', 'Public Infrastructure'), 'Content');

    $fields->addFieldToTab("Root.Main", new CheckboxField ('TagParksAndOpenSpace', 'Parks & Open Space'), 'Content');
    $fields->addFieldToTab("Root.Main", new CheckboxField ('TagWaterfronts', 'Waterfronts'), 'Content');
    $fields->addFieldToTab("Root.Main", new CheckboxField ('TagGardens', 'Gardens'), 'Content');
    $fields->addFieldToTab("Root.Main", new CheckboxField ('TagEducation', 'Education'), 'Content');
    $fields->addFieldToTab("Root.Main", new CheckboxField ('TagSportAndRecreation', 'Sport & Recreation'), 'Content');
    $fields->addFieldToTab("Root.Main", new CheckboxField ('TagEcologyAndEnvironment', 'Ecology & Environment'), 'Content');
    $fields->addFieldToTab("Root.Main", new CheckboxField ('TagGreenfieldsDevelopments', 'Greenfields Developments'), 'Content');
    $fields->addFieldToTab("Root.Main", new CheckboxField ('TagConsultation', 'Consultation'), 'Content');
    
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
