proc setalarm*(employed: bool, vacation: bool): bool =
    return employed and not vacation
