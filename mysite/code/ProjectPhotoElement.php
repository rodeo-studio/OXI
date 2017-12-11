<?php
class ProjectPhotoElement extends DataObject {
  private static $db = array(
    'Size'=>'Int',
    'Style'=>'Int',
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

  public function FormatStyle() { 
    $source = array("Big", "Small");

    return $source[$this->Style]; 
  }
  
  // this function creates the thumbnail for the summary fields to use 
  public function ImageThumbnail() { 
    return $this->HeroImage()->SetHeight(100); 
  }
  
  public static $summary_fields = array( 
    'FormatSize' => 'Size',
    'FormatStyle' => 'Style',
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
  
    $styleField = new OptionsetField(
      $name = "Style",
      $title = "Style",
      $source = array("Big", "Small"),
      $value = 0
    );

    $fields = new FieldList (
      $sizeField, 
      $styleField,
      new LiteralField ('literalfield', '<strong>Image Element</strong>'), 
      $uploadField);

    return $fields; 
  }
}
