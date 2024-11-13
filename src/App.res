@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()
  <LoginContext.DefaultProvider>
 
 
 {switch url.path{
    | list{"login"} => <Login />
    | list{"signup"} => <Signup />
    |_ => <Home />
  }}
  </LoginContext.DefaultProvider>
}