<?php
class HomeNewsElement extends NewsElement {
  private static $db = array(
  );

  private static $has_one = array(
    'Home' => 'HomePage'
  );  
}
