@react.component
let make = () => {
  let (isModalOpen, setIsModalOpen) = React.useState(() => false)
  let (modalContent, setModalContent) = React.useState(() => "")

  let openModal = content => {
    setModalContent(_ => content)
    setIsModalOpen(_ => true)
  }

  let closeModal = () => setIsModalOpen(_ => false)

  let workers = WorkersData.data

  <div className="py-4 px-4 pt-3.5 mt-0">
    <div className="p-10 grid grid-cols-1 sm:grid-cols-1 md:grid-cols-3 lg:grid-cols-3 xl:grid-cols-3 gap-5">
      {
        workers->Belt.Array.map(worker => {
          let name = worker.nomComplet
          let sector = worker.secteurActivite
          let city = worker.villeDeResidence
          let rating = worker.nombreEtoile
          let image = worker.image

          <div className="rounded overflow-hidden shadow-lg hover:cursor-pointer p-6">
            <img className="w-full h-48 object-cover" src={image} alt="Travailleur" />
            <div className="px-6 py-4">
              <h1 className="font-bold text-2xl mb-2 text-center">{React.string(name)}</h1>
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
              <div className="flex justify-center mt-4">
                <button
                  className="bg-indigo-600 text-white px-4 py-2 rounded"
                  onClick={_ => openModal("Détails du travailleur")}>
                  {React.string("Voir détails")}
                </button>
              </div>
            </div>
          </div>
        }) -> React.array 
      }
    </div>
    <ContentModal isOpen={isModalOpen} close={closeModal} />
  </div>
}
