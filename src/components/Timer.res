@react.component
let make = (~time) => {
    let d1 = Formatter.formatD1(time)
    let d2 = Formatter.formatD2(time)
    let d3 = Formatter.formatD3(time)


    <div >
    <Digit className="" digit={d1}/>
    <Digit className="" digit={":"}/>
    <Digit className="" digit={d2}/>
    <Digit className="" digit={":"}/>
    <Digit className="" digit={d3}/>
    </div>
}