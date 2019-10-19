import os, unicode, sequtils, strutils, sugar

proc countWordLength(origin: string): string =
    origin.split(" ").map(word => word.len).join("")

if isMainModule:
    let origin =
        if os.paramCount() > 0:
            os.commandLineParams()[0]
        else:
            "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
    echo origin.countWordLength
