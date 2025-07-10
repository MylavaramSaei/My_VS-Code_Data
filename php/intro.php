<?php $a = 5; $b = 3; echo "Difference = " . ($a - $b); ?>

<?php
// --- Multiplication Table (1 to 100) ---
for ($i = 1; $i <= 100; $i++) {
    echo "Table of $i:\n";
    for ($j = 1; $j <= 10; $j++) {
        echo "$i x $j = " . ($i * $j) . "\n";
    }
    echo "\n";
}
?>
// Calculator program not supported for: php/intro.php
