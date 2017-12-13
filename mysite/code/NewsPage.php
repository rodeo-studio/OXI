<?php
class NewsPage extends Page {

  private static $db = array(
    'NewsDate' => 'Date'
  );

  private static $has_many = array(
    'NewsPhotoElements' => 'NewsPhotoElement'
  );

  private static $has_one = array(
  );

  function getCMSFields() {
    $fields = parent::getCMSFields();

    $dateField = new DateField('NewsDate', 'Date');
    $dateField->setConfig('showcalendar', true);
    $fields->addFieldToTab('Root.Main', $dateField, 'Content');

    $config = GridFieldConfig_RelationEditor::create();
    $config->removeComponentsByType('GridFieldPaginator');
    $config->removeComponentsByType('GridFieldPageCount');
    $config->addComponent(new GridFieldSortableRows('SortID'));
    $newsPhotoElementField = new GridField(
      'NewsPhotoElements', // Field name
      'News Photo Element', // Field title
      $this->NewsPhotoElements(),
      $config
    );
    $fields->addFieldToTab('Root.Elements', $newsPhotoElementField); 

    return $fields;
  }

}
class NewsPage_Controller extends Page_Controller {
  private static $allowed_actions = array (
  );

  public function init() {
    parent::init();
  }
}
