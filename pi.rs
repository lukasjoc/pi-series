fn pi_nks(limit: u64) -> f64 {
    let mut pi = 3.0;
    let mut sign = 1;

    let mut i: u64 = 2;
    while i <= limit {
        pi += (sign * 4) as f64 / (i * (i + 1) * (i + 2)) as f64;
        sign = sign * -1;
        i += 2;
    }

    pi
}

fn pi_gls(limit: u64) -> f64 {
    let limit = limit as f64;

    let mut pi = 0.0;
    let mut divisor = 1.0;
    let mut sign = 1.0;

    while divisor <= limit {
        pi += (4.0 / divisor) * sign;
        sign = -sign;
        divisor += 2.0;
    }

    pi
}

const LIMIT: u64 = 100;
fn main() {
    println!("NKS: {0:.13}", pi_nks(LIMIT));
    println!("GLS: {0:.13}", pi_gls(LIMIT));
}
