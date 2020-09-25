public class pi {

	public static double pi_nks(int limit) {
		double pi = 3.0;
		int s = 1;
		for(int i=2; i<=limit; i+=2) {
			pi += (double) s*4 /  (double)  (i * (i+1) * (i+2) );
			s = (s*(-1));
		}
		return pi;
	}

	public static double pi_gls(int limit) {
		double pi = 0.0;
		int s = 1;
		for(int i=1; i<=limit; i+=2) {
			pi += s * (double) 4/i;
			s = (s*(-1));
		}
		return pi;
	}

	public static void main(String[] args) {
		final int limit = 100;
		System.out.printf("NKS: %.13f%n", pi_nks(limit));
		System.out.printf("GLS: %.13f%n", pi_gls(limit));
	}
}
