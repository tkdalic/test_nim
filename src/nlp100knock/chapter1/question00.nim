import os

proc reverse(origin: string): string =
    result = ""
    for c in origin:
        result = c & result

if isMainModule:
    let origin = 
        if os.paramCount() > 0:
            os.commandLineParams()[0]
        else:
            "stressed"

    echo origin.reverse
