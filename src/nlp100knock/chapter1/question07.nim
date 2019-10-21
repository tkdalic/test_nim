import os

if isMainModule:
    var x, y, z: string
    if os.paramCount() > 3:
        x = os.commandLineParams()[0]
        y = os.commandLineParams()[1]
        z = os.commandLineParams()[2]
    else:
        x = "x"
        y = "y"
        z = "z"
    echo x, "時の", y, "は", z
