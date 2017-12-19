<?php
class ProjectNewsElement extends NewsElement {
  private static $db = array(
  );

  private static $has_one = array(
    'Project' => 'ProjectPage'
  );  
}
