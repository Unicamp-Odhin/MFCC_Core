def calc_fmax(clock_period_ns: float, wns_ns: float) -> float:
    """
    Calcula o Fmax em MHz dado o período de clock e o WNS.

    :param clock_period_ns: Período do clock (ns)
    :param wns_ns: Worst Negative Slack (ns)
    :return: Fmax em MHz
    """
    effective_period = clock_period_ns - wns_ns
    if effective_period <= 0:
        raise ValueError("Design não fecha timing: período efetivo <= 0 ns")
    return 1000.0 / effective_period


if __name__ == "__main__":
    clock_period = 20.0  # ns
    wns = 2.113         # ns

    fmax = calc_fmax(clock_period, wns)
    print(f"Clock alvo: {1000/clock_period:.2f} MHz")
    print(f"WNS: {wns} ns")
    print(f"Fmax estimado: {fmax:.2f} MHz")
