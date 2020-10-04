import Foundation

func pi_nks(limit: Int) -> Double {
    var pi: Double = 3.0
    var s: Int = 1
    for i in stride(from: 2, to: limit, by: 2) {
        pi += Double(s*4) / Double((i * (i+1)*(i+2)))
        s = (s*(-1))
    }
    return pi
}

func pi_gls(limit: Int ) -> Double {
    var pi: Double = 0.0
    var s: Int = 1
    for i in stride(from: 1, to: limit, by: 2) {
        pi += Double(s*4) / Double(i)
        s = (s*(-1))
    }
    return pi
}

let LIMIT = 100
print(NSString(format:"NKS: %.13f", pi_nks(limit: LIMIT)))
print(NSString(format:"GLS: %.13f", pi_gls(limit: LIMIT)))
