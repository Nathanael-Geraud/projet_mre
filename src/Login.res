@react.component
  let make = () => {
    let (email, setEmail) = React.useState(() => "");
    let (password, setPassword) = React.useState(() => "");
    let (error, setError) = React.useState(() => "");
    let {login} = LoginContext.useContext()
    let handleSubmit = (event) => {
      event->ReactEvent.Form.preventDefault;

      if (login(email, password)) {
        RescriptReactRouter.push("/")
        Js.log("Connexion réussie !");
      } else {
        setError(_ => "Identifiants incorrects. Veuillez réessayer.");
      };
    };
    <Base>
    <div style={ReactDOM.Style.make(~display= "flex", ~justifyContent= "center", ~alignItems= "center", ~height= "100vh", ~backgroundColor= "#f8f9fa;", ())}>
 <div style={ReactDOM.Style.make(~display="flex", ~justifyContent = "center", ~alignItems= "center" , ~height= "100vh;", ())}>
  <div style={ReactDOM.Style.make(~width="500px" , ~height= "400px", ~backgroundColor= "#007BFF", ~display= "flex", ~justifyContent= "center", ~alignItems= "center", ~borderRadius= "2px;", ())}>
    <div style={ReactDOM.Style.make(~width= "95%", ~height= "95%", ~backgroundColor= "white", ~padding= "20px", ~borderRadius= "2px", ~boxShadow= "0 2px 4px rgba(0, 0, 0, 0.1)", ~display= "flex", ~flexDirection= "column", ~justifyContent= "center", ~alignItems= "center;", ())}>
    <div style={ReactDOM.Style.make(~maxWidth="400px", ~margin="0 auto", ~padding="20px", ~border="1px solid #ccc;", ())}>
      <h2>{React.string("Connexion :")}</h2>
      {if(error !== "") {<p style={ReactDOM.Style.make(~color="red", ())}>{React.string(error)}</p>} else {React.null}}
      <form onSubmit={handleSubmit}>
        <div>
          <label>{React.string("Email :")}</label>
          <input
            type_="email"
            value={email}
            onChange={e => setEmail(_ => (e->ReactEvent.Form.target)["value"])}
            required=true
            className="block w-fill rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1"
          />
        </div>
        <div>
        <label>{React.string("Mot de passe :")}</label>
          <input
            type_="password"
            value={password}
            onChange={e => setPassword(_ => (e->ReactEvent.Form.target)["value"])}
            required=true
            className="block w-fill rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1"
          />
        </div>
        <button type_="submit" className="inline-block rounded bg-primary px-6 pb-2 pt-2.2 text-xs font-medium uppercase ">
        <div style={ReactDOM.Style.make(~backgroundColor = "#007BFF", ~color = "white", ~padding = "10px 20px", ~border = "none", ~borderRadius = "5px", ~cursor = "pointer;", ~marginTop = "10px", ())}>
        {"Se connecter"->React.string}
        </div>
        </button>
      </form>
       <div style={ReactDOM.Style.make(~marginTop= "10px", ~textAlign= "center" , ())}>
        <a href="/forgot-password" style={ReactDOM.Style.make(~color="#007BFF", ~textDecoration="none" , ())}>{React.string("Mot de passe oublié ?")}</a>
      </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </Base>
  };