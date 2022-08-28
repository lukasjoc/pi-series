def pi_nks(limit: int) -> float:
    pi: float = 3.0
    s: int = 1
    for i in range(2, limit, 2):
        pi += (s*4/(i*(i+1)*(i+2)))
        s = s*(-1)
    return pi


def pi_gls(limit: int) -> float:
    pi: float = 0.0
    s: int = 1
    for i in range(1, limit, 2):
        pi += (s*(4/i))
        s = s*(-1)
    return pi


if __name__ == "__main__":
    LIMIT: int = 100
    print(f"NKS: {pi_nks(limit=LIMIT):.13f}")
    print(f"GLS: {pi_gls(limit=LIMIT):.13f}")
