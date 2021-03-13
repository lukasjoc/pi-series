use strict;
use warnings;

sub pi_nks {
  my $pi = 3.0;
  my $s = 1;
  for (my $i = 2; $i<= $_[0]; $i+=2) {
    $pi += ($s*4/($i*($i+1)*($i+2)));
    $s = $s*(-1);
  }
  return $pi;
}

sub pi_gls {
  my $pi = 0.0;
  my $s = 1;
  for(my $i=1; $i<=$_[0]; $i+=2) {
    $pi += ($s*4/$i);
    $s = ($s*(-1));
  }
  return $pi;
}

my $limit = 100;
printf("NKS: %.13f\n", pi_nks $limit);
printf("GLS: %.13f\n", pi_gls $limit);
