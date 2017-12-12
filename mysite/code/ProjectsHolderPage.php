<?php
class ProjectsHolderPage extends Page {
  static $allowed_children = array("ProjectPage");

  private static $db = array(
  );

  private static $has_many = array(
  );

  private static $has_one = array(
  );

  function getCMSFields() {
    $fields = parent::getCMSFields();

    // remove fields
    $fields->removeFieldFromTab('Root.Main', 'Content');

    return $fields;
  }

}

class ProjectsHolderPage_Controller extends Page_Controller {
  private static $allowed_actions = array (
  );

  public function init() {
    parent::init();

    $this->Projects = DataObject::get( 
    $callerClass = "ProjectPage", 
    $filter = "", 
    $sort = "",
    $join = "",
    $limit = "" 
    );
  }
}

class ProjectsFilterPage_Controller extends Page_Controller {
  private static $allowed_actions = array (
  );

  public function init() {
    parent::init();

    $ProjectFilter = '';

    if ($this->getRequest()->param('ProjectFilter')) {
      switch ($this->getRequest()->param('ProjectFilter')) {
        case 'smallbuilds':
          $ProjectFilter = 'TagSmallBuilds = 1';
          break;

        case 'landscape':
          $ProjectFilter = 'TagLandscape = 1';
          break;

        case 'infrastructure':
          $ProjectFilter = 'TagInfrastructure = 1';
          break;

        case 'publicspace':
          $ProjectFilter = 'TagPublicSpace = 1';
          break;
      }
    }

    $Projects = DataObject::get( 
    $callerClass = "ProjectPage", 
    $filter = $ProjectFilter, 
    $sort = "ProjectDate DESC",
    $join = "",
    $limit = "" 
    );

    $EditedProjects = new ArrayList();
    $strCurrYear = '';
    foreach($Projects as $item) {
      $strYear = substr($item->ProjectDate, 0, 4);
      if ($strYear != $strCurrYear) {
        $strCurrYear = $strYear;
        $item->GroupYear = $strCurrYear;
      }
      $EditedProjects->push($item);
    }
    $this->Projects = $EditedProjects;
  }

  public function index($request) {
    return $this->renderWith('AjaxProjectsHolderPage');
  }
}
