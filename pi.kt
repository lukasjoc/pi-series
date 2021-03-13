const val limit = 100

fun pi_nks(limit: Int): Double {
    var pi = 3.0
    var s = 1
    for (i in 2..limit step 2) {
        pi += s * 4.0 / (i * (i + 1) * (i + 2))
        s *= -1
    }
    return pi
}

fun pi_gls(limit: Int): Double {
    var pi = 0.0
    var s = 1
    for (i in 1..limit step 2) {
        pi += s * 4.0 / i
        s *= -1
    }
    return pi
}

fun main() {
    println("NKS: ${"%.13f".format(pi_nks(limit))}")
    println("GLS: ${"%.13f".format(pi_gls(limit))}")
}
