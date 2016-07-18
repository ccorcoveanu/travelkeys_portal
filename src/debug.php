<?php
function echopre($variable, $label='') {
    echo "<pre class='debug-stuff' style='border: 1px solid red;background-color: wheat;color: red;font-size: 11px;'>";
    if($label != '')
        echo '<span style="display: block; font-weight: bold">'.$label.'</span>';
    print_r($variable);
    echo "</pre>\n";
}