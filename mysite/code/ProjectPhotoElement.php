<?php
class ProjectPhotoElement extends DataObject {
  private static $db = array(
    'Size'=>'Int',
    'SortID'=>'Int'
  );

  private static $has_one = array(
    'HeroImage' => 'Image', 
    'Project' => 'ProjectPage'
  );

  public function FormatSize() { 
    $source = array("33%", "66%", "100%");

    return $source[$this->Size]; 
  }
  
  // this function creates the thumbnail for the summary fields to use 
  public function ImageThumbnail() { 
    return $this->HeroImage()->SetHeight(100); 
  }
  
  public static $summary_fields = array( 
    'FormatSize' => 'Size',
    'ImageThumbnail' => 'Thumbnail' 
  );
  
  private static $default_sort = "SortID ASC";
  
  function getCMSFields() {
    $sizeField = new OptionsetField(
      $name = "Size",
      $title = "Size",
      $source = array("33%", "66%", "100%"),
      $value = 2
    );

    $uploadField = new UploadField($name = 'HeroImage', $title = 'Image');
    $uploadField->setCanUpload(false);
  
    $fields = new FieldList (
      $sizeField, 
      new LiteralField ('literalfield', '<strong>Image Element</strong>'), 
      $uploadField);

    return $fields; 
  }
}
