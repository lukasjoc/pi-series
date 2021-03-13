<?php declare(strict_types=1);

/**
 * pi_nks
 *
 * @param int $limit
 * @access public
 * @return float
 */
function pi_nks(int $limit): float {
  $pi = 3.0;
  $s = 1;
  for($i=2; $i<=$limit; $i+=2) {
    $pi += ($s*4/($i*($i+1)*($i+2)));
    $s = ($s*(-1));
  }
  return $pi;
}

/**
 * pi_gls
 *
 * @param int $limit
 * @access public
 * @return float
 */
function pi_gls(int $limit): float {
  $pi = 0.0;
  $s = 1;
  for($i=1; $i<=$limit; $i+=2) {
    $pi += ($s*4/$i);
    $s = ($s*(-1));
  }
  return $pi;
}

const LIMIT = 100;
printf("NKS: %.13f\n", pi_nks(LIMIT));
printf("GLS: %.13f\n", pi_gls(LIMIT));
