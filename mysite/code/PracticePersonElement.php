<?php
class PracticePersonElement extends DataObject {
  private static $db = array(
    'Name' => 'Varchar',
    'Title' => 'Varchar',
    'SortID'=>'Int',
    'ProfileInfo' => 'HTMLText',
    'Email' => 'Varchar',
    'Projects' => 'HTMLText'
  );

  private static $has_one = array(
    'HeroImage' => 'Image', 
    'Practice' => 'PracticePage'
  );
  
  // this function creates the thumbnail for the summary fields to use 
  public function ImageThumbnail() { 
    return $this->HeroImage()->SetHeight(100); 
  }

  public static $summary_fields = array( 
    'Name' => 'Name',
    'Title' => 'Title',
    'ImageThumbnail' => 'Thumbnail' 
  );
  
  private static $default_sort = "SortID ASC";
  
  function getCMSFields() {
    $uploadField = new UploadField($name = 'HeroImage', $title = 'Image');
    $uploadField->setCanUpload(false);
  
    $fields = new FieldList (
      new TextField('Name', 'Name'), 
      new TextField('Title', 'Title'), 
      $uploadField,
      new HtmlEditorField('ProfileInfo', 'Profile'),
      new TextField('Email', 'Email'),
      new HtmlEditorField('Projects', 'Projects'));

    return $fields; 
  }
}
