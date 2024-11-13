// Un hook permet de manipuler ou modifier l'etat d'un composant
@react.component
let make = () => {
    <Base>

      <div className="pt-16">
        <Header interval=3600 />
      </div>

      <div className="mx-auto max-w-7xl px-2 sm:px-6 lg:px-8">
        <Content />
      </div>
      
    </Base>
}
