<?php
class PracticePage extends Page {

  private static $db = array(
  );

  private static $has_many = array(
    'NewsElements' => 'PracticeNewsElement',
    'PracticePersonElements' => 'PracticePersonElement'
  );

  private static $has_one = array(
  );

  function getCMSFields() {
    $fields = parent::getCMSFields();

    // News
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

    // People
    $configPeople = GridFieldConfig_RelationEditor::create();
    $configPeople->removeComponentsByType('GridFieldPaginator');
    $configPeople->removeComponentsByType('GridFieldPageCount');
    $configPeople->addComponent(new GridFieldSortableRows('SortID'));
    $practicePersonElementField = new GridField(
      'PracticePersonElements', // Field name
      'Person Element', // Field title
      $this->PracticePersonElements(),
      $configPeople
    );
    $fields->addFieldToTab('Root.People', $practicePersonElementField); 

    return $fields;
  }

}
class PracticePage_Controller extends Page_Controller {
  private static $allowed_actions = array (
  );

  public function init() {
    parent::init();

    function PracticePersonElements($ProfileElements) {
      $ProfileElementsEdited = new ArrayList();

      $nColsMini = 2;
      $nColsMaxi = 3;
      $nColMini = 0;
      $nColMaxi = 0;
      foreach($ProfileElements as $item) {
        $ProfileElementsEdited->push($item);

        if ($nColMini == $nColsMini-1) {
          $nColMini = 0;
          $item->MiniBreak = true;
        }
        else {
          $nColMini++;
        }

        if ($nColMaxi == $nColsMaxi-1) {
          $nColMaxi = 0;
          $item->Break = true;
        }
        else {
          $nColMaxi++;
        }
      }
      return $ProfileElementsEdited;
    }

    $this->PracticePersonElementsEdited = PracticePersonElements($this->PracticePersonElements());
  }
}
