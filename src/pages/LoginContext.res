// Fichier LoginContext.res

type loginContext = {
  isLogged: bool,
  login: (string, string) => bool,
  signup: (string, string) => unit
};

let context = React.createContext({
  isLogged: false,
  login: (_username, _password) => false,
  signup: (_username, _password) => (),
});

module Provider = {
  let make = React.Context.provider(context)
}

type user = {
    username: string,
    password: string
}

module DefaultProvider = {
  @react.component
  let make = (~children) => {
    let (isLogged, setIsLogged) = React.useState(() => false);
    let (users, setUsers) = React.useState(() => [])

    Console.log(isLogged ? "true" : "false")
    <Provider value={{
      isLogged,
      login: (username, password) => {
        Console.log("plop")
        let hasUser = users -> Array.some(user => user.username == username && user.password == password)
        if (username === "admin@gmail.com" && password === "admin") {
          setIsLogged(_ => true);
          true
        } else {
            false
        }
      },
      signup: (username, password) => {
        setUsers(users => [...users, {username, password}] )
      }
    }}>
      {children}
    </Provider>
  }
}

let useContext = () => {
  React.useContext(context);
};