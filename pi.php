<?php declare(strict_types=1);


/**
 * pi_nks
 *
 * @param limit: int $limit: int
 * @access public
 * @return float
 */
function pi_nks($limit): float {
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
 * @param mixed $limit
 * @access public
 * @return float
 */
function pi_gls($limit): float {
	$pi = 0.0;
	$s = 1;
	for($i=1; $i<=$limit; $i+=2) {
		$pi += ($s*4/$i);
		$s = ($s*(-1));
	}
	return $pi;
}

$limit = 100;

printf("NKS: %.13f\n", pi_nks($limit));
printf("GLS: %.13f\n", pi_gls($limit));
