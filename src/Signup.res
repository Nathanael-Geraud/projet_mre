@react.component
let make = () => {
  let (username, setUsername) = React.useState(() => "")
  let (email, setEmail) = React.useState(() => "")
  let (password, setPassword) = React.useState(() => "")
  let (confirmPassword, setConfirmPassword) = React.useState(() => "")
  let (error, setError) = React.useState(() => "")

 let (phone, setPhone) = React.useState(() => "")
 let {login, signup} = LoginContext.useContext()
  // Fonction de validation de mot de passe
  let validateForm = () => {
    if password !== confirmPassword {
      setError(_ =>"Les mots de passe ne correspondent pas.")
      false
    } else if username == "" || email == "" || password == "" {
      setError(_ =>"Tous les champs sont obligatoires.")
      false
    } else {
        signup(email, password)
        RescriptReactRouter.push("/")
      setError(_ =>"")
      true
    }
  }

  // Gérer la soumission du formulaire
  let handleSubmit = event => {
    event->ReactEvent.Form.preventDefault;
    if validateForm() {
      // Ici, on peut appeler une API d'inscription
      Js.log("Inscription réussie")
      RescriptReactRouter.push("/login") // Redirige vers la page de connexion
    }
     
  }
  <Base>


 <div style={ReactDOM.Style.make(~display="flex", ~justifyContent = "center", ~alignItems= "center" , ~height= "100vh;", ~marginTop="100px", ~marginBottom="100px", ())}>
  <div style={ReactDOM.Style.make(~width="500px" , ~height= "400px", ~backgroundColor= "#007BFF", ~display= "flex", ~justifyContent= "center", ~alignItems= "center", ~borderRadius= "2px;", ())}>
    <div style={ReactDOM.Style.make(~width= "95%", ~height= "95%", ~backgroundColor= "white", ~padding= "20px", ~borderRadius= "2px", ~boxShadow= "0 2px 4px rgba(0, 0, 0, 0.1)", ~display= "flex", ~flexDirection= "column", ~justifyContent= "center", ~alignItems= "center;", ())}>
  <div style={ReactDOM.Style.make(~maxWidth="400px", ~margin="0 auto", ~padding="20px", ~border="1px solid #ccc;", ())}>
    <h2> {React.string ("INSCRIPTION") }</h2>
    {switch error {
      | "" => React.null
      | msg => <p style={ReactDOM.Style.make(~color = "red" ,())}> {msg->React.string} </p>
    }}
    <form onSubmit={handleSubmit}>
      <div>
        <label> {React.string("Nom d'utilisateur :")} </label>
        <input
          type_="text"
          value=username
          onChange={e => setUsername(_ => (e->ReactEvent.Form.target)["value"])}
          required=true
          className="block w-fill rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1"
        />
      </div>
      <div>
        <label> {React.string("Email :")} </label>
        <input
          type_="email"
          value=email
          onChange={e => setEmail(_ => (e->ReactEvent.Form.target)["value"])}
          required=true
          className="block w-fill rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1"
        />
      </div>
      <div>
        <label> {React.string("Mot de passe :")} </label>
        <input
          type_="password"
          value=password
          onChange={e => setPassword(_ => (e->ReactEvent.Form.target)["value"])}
          required=true
          className="block w-fill rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1"
        />
      </div>
      <div>
        <label> {React.string("Confirmer le mot de passe :")} </label>
        <input
          type_="password"
          value=confirmPassword
          onChange={e => setConfirmPassword(_ => (e->ReactEvent.Form.target)["value"])}
          required=true
          className="block w-fill rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1"
        />
      </div>
      <button type_="submit">
        <div style={ReactDOM.Style.make(~backgroundColor = "#007BFF", ~color = "white", ~padding = "10px 20px", ~border = "none", ~borderRadius = "5px", ~cursor = "pointer;", ~marginTop = "10px", ())}>
            {React.string("S'inscrire")} 
        </div> 
      </button> 
    </form>
    
    
    <p>
      {React.string("Avez-vous déjà un compte ? ")}
      <a href="/login" style={ReactDOM.Style.make(~color="#007BFF", ~textDecoration="none" , ())}>
        {React.string("Cliquez ici")}
      </a>
      {" pour vous connecter"->React.string}
    </p>
    </div>
  </div>
  </div>
  </div>
</Base>
};