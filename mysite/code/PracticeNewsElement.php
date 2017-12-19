<?php
class PracticeNewsElement extends NewsElement {
  private static $db = array(
  );

  private static $has_one = array(
    'Practice' => 'PracticePage'
  );  
}
