<?php
class NewsElement extends DataObject {
  private static $db = array(
    'Size'=>'Int',
    'Type'=>'Int',
    'InstagramShortcode' => 'Varchar',
    'PageLink' => 'Int',
    'SortID'=>'Int'
  );

  private static $has_one = array(
  );

  public function FormatSize() { 
    $source = array("50%", "100% (centre)", "100% (left)", "100% (right)");

    return $source[$this->Size]; 
  }
    
  public function FormatType() { 
    $source = array("News", "Event", "Instagram");

    return $source[$this->Type]; 
  }

  public function FormatTitle() { 
    $title = '';
    switch ($this->Type) {
      case 0:
      case 1:
        $page = DataObject::get_by_id("Page", $this->PageLink);
        $title = $page->MenuTitle;
        break;

      case 2:
        $title = 'Short Code - ' . $this->InstagramShortcode;
        break;
    }
    return $title; 
  }

  public static $summary_fields = array( 
    'FormatSize' => 'Size',
    'FormatType' => 'Type',
    'FormatTitle' => 'Content'
  );
  
  private static $default_sort = "SortID ASC";
  
  function getCMSFields() {
    $sizeField = new OptionsetField(
      $name = "Size",
      $title = "Size",
      $source = array("50%", "100% (centre)", "100% (left)", "100% (right)"),
      $value = 0
    );

    $typeField = new OptionsetField(
      $name = "Type",
      $title = "Type",
      $source = array("News", "Event", "Instagram"),
      $value = 0
    );

    $fields = new FieldList (
      $sizeField,
      $typeField,
      new DropdownField('PageLink', 'Related Products Link', NewsPage::get()->map()),
      new TextField('InstagramShortcode', 'Instagram Shortcode'));

    return $fields; 
  }

  function PageLinkPage(){
    $thisPage = DataObject::get_by_id("Page", $this->PageLink);

    return $thisPage;
  }
}
