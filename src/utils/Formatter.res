let format = (time: int, divideBy: float, modBy: int ): string => {
    let floored = (Int.toFloat(time) /. divideBy)
    -> Math.floor
    ->Float.toInt

    let modded = mod(floored, modBy)
    let str = ("0" ++ Int.toString(modded))

    String.sliceToEnd(str, ~start=-2)

}
    
    let formatD1 = format(_ , 6000.0, 60)
    let formatD2 = format(_ , 1000.0, 60)
    let formatD3 = format(_ , 10.0, 100)