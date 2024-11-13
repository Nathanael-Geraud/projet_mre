@react.component
let make = (~isOpen, ~close) => {
  if !isOpen {
    React.null
  } else {

    let workers = WorkersData.data 

    workers->Belt.Array.map( worker => {
      let name = worker.nomComplet
      let sector = worker.secteurActivite
      let city = worker.villeDeResidence
      let rating = worker.nombreEtoile
      let image = worker.image
      let description = worker.descriptionActivite

      <div className="fixed inset-0 bg-black bg-opacity-50 flex justify-center items-center" onClick={_ => close()}>
      <div className="fixed inset-0 bg-gray-500 bg-opacity-100 flex justify-center items-center">
        <div className="bg-white rounded-lg overflow-hidden shadow-lg max-w-md w-full p-6 relative">
          <img className="w-full h-48 object-cover rounded mb-4" src={image}/>
          <h1 className="font-bold text-2xl mb-2 text-center">
            {React.string(name)}
          </h1>
          <div className="flex items-center justify-center text-gray-700 text-lg italic mb-2">
            <i className="fas fa-briefcase mr-2" />
            {React.string(sector)}
          </div>
          <div className="flex items-center justify-center text-gray-700 text-lg italic mb-2">
            <i className="fas fa-map-marker-alt mr-2" />
            {React.string(city)}
          </div>
          <div className="flex items-center justify-center text-yellow-500 text-lg mb-2">
            {React.string("(" ++ rating ++ ")")}
          </div>
          <p className="text-gray-700 text-base text-center">
            {React.string(description)}
          </p>
          <button className="mt-4 bg-red-500 text-white px-3 py-1 rounded" onClick={_ => close()}>
            {React.string("Fermer")}
          </button>
        </div>
      </div>
    </div>
    })->React.array
  }
}
