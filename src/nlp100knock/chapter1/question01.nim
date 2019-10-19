import os, unicode

proc extractOddChar(origin: string): string =
    result = ""
    for k, c in origin.toRunes:
        if k mod 2 == 1:
            result &= c

if isMainModule:
    let origin =
        if os.paramCount() > 0:
            os.commandLineParams()[0]
        else:
            "パタトクカシーー"

    echo origin.extractOddChar
