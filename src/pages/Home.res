
@react.component
let make = () => {
  let {isLogged} = LoginContext.useContext()
  <span>{React.string("isLogged: " ++ (isLogged ? "true" : "false") )}</span>
}
