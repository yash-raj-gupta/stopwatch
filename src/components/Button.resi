@react.component
let make: (~text: string, ~className: string, ~onClick: (JsxEvent.Mouse.t) => unit) => Jsx.element