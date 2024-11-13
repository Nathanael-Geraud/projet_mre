@react.component
let make = (~isOpen, ~onClose) => {
  if !isOpen {
    React.null
  } else {
    <div className="fixed inset-0 bg-gray-600 bg-opacity-50 flex items-center justify-center z-50" onClick={_ => onClose()}>
      <div className="bg-white p-6 rounded-lg shadow-lg max-w-md w-full">
        <h2 className="text-xl font-bold mb-4"> {React.string("Contactez-nous")} </h2>
        <form>
          <div className="mb-4">
            <label className="block text-gray-700 text-sm font-bold mb-2" htmlFor="name">
              {React.string("Nom")}
            </label>
            <input
              id="name"
              className="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-indigo-600"
              type_="text"
              placeholder="Votre nom"
            />
          </div>
          <div className="mb-4">
            <label className="block text-gray-700 text-sm font-bold mb-2" htmlFor="email">
              {React.string("Email")}
            </label>
            <input
              id="email"
              className="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-indigo-600"
              type_="email"
              placeholder="Votre email"
            />
          </div>
          <div className="mb-4">
            <label className="block text-gray-700 text-sm font-bold mb-2" htmlFor="subject">
              {React.string("Sujet")}
            </label>
            <input
              id="subject"
              className="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-indigo-600"
              type_="text"
              placeholder="Sujet du message"
            />
          </div>
          <div className="mb-4">
            <label className="block text-gray-700 text-sm font-bold mb-2" htmlFor="message">
              {React.string("Message")}
            </label>
            <textarea
              id="message"
              className="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-indigo-600"
              rows=4
              placeholder="Votre message"
            />
          </div>
          <div className="flex items-center justify-between">
            <button
              type_="submit"
              className="bg-indigo-600 hover:bg-indigo-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:ring-2 focus:ring-indigo-600">
              {React.string("Envoyer")}
            </button>
            <button
              type_="button" className="text-gray-500 hover:text-gray-700" onClick={_ => onClose()}>
              {React.string("Annuler")}
            </button>
          </div>
        </form>
      </div>
    </div>
  }
}
