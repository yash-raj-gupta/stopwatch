@react.component
let make = (~text, ~className, ~onClick) => {
    let className = `rounded-md px-4 py-8 w-64 text-5xl ` ++ className
    <button className={className} onClick={onClick} >
    {React.string(text)}
    </button>
}