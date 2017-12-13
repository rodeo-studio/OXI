<?php
class HomeNewsElement extends DataObject {
  private static $db = array(
    'Size'=>'Int',
    'Type'=>'Int',
    'InstagramShortcode' => 'Varchar',
    'PageLink' => 'Int',
    'SortID'=>'Int'
  );

  private static $has_one = array(
    'Home' => 'HomePage'
  );

  public function FormatSize() { 
    $source = array("50%", "100% (centre)", "100% (left)", "100% (right)");

    return $source[$this->Size]; 
  }
    
  public function FormatType() { 
    $source = array("News", "Event", "Instagram");

    return $source[$this->Type]; 
  }

  public static $summary_fields = array( 
    'FormatSize' => 'Size',
    'FormatType' => 'Type'
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
      new TreeDropdownField('PageLink', 'Page to link to', 'SiteTree'),
      new TextField('InstagramShortcode', 'Instagram Shortcode'));

    return $fields; 
  }

  function PageLinkPage(){
    $thisPage = DataObject::get_by_id("Page", $this->PageLink);
    return $thisPage;
  }
}
