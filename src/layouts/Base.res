@react.component
let make = (~children) => {
  let (isModalOpen, setIsModalOpen) = React.useState(() => false)

  let openModal = () => setIsModalOpen(_ => true)

  let closeModal = () => setIsModalOpen(_ => false)

  <div>
    <nav className="bg-gray-800 fixed top-0 left-0 right-0 z-50">
      <div className="mx-auto max-w-7xl px-2 sm:px-6 lg:px-8">
        <div className="relative flex h-16 items-center justify-between">
          <div className="flex items-center">
            <div className="flex flex-shrink-0 items-center">
              <img
                alt="Your Company"
                src="https://tailwindui.com/plus/img/logos/mark.svg?color=indigo&shade=500"
                className="h-8 w-auto"
              />
            </div>
            <div className="hidden sm:ml-6 sm:block">
              <div className="flex space-x-4">
                <a
                  href="/"
                  className="rounded-md bg-gray-900 px-3 py-2 text-sm font-medium text-white">
                  {React.string("Accueil")}
                </a>
                <a
                  href="#"
                  className="rounded-md px-3 py-2 text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white"
                  onClick={_ => openModal()}>
                  {React.string("Contact")}
                </a>
              </div>
            </div>
          </div>
          <div className="flex space-x-4 ml-auto">
            <a
              href="#"
              className="rounded-md px-3 py-2 text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white">
              {React.string("Connexion")}
            </a>
            <a
              href="#"
              className="rounded-md px-3 py-2 text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white">
              {React.string("Inscription")}
            </a>
          </div>
        </div>
      </div>
    </nav>
    {children}
    <ContactModal isOpen={isModalOpen} onClose={() => setIsModalOpen(_ => false)} />
    <div className="bg-gray-800 mx-auto max-w-1xl py-32 sm:py-48 lg:py-56">
      <div className="text-center">
        <h1 className="text-balance text-5xl font-semibold tracking-tight text-white sm:text-7xl">
          {React.string("Une plateforme permettant de vous mettre en contact")}
        </h1>
        <p className="mt-8 text-pretty text-lg font-medium text-white sm:text-xl/8">
          {React.string("avec des travailleurs qualifiés, proche de chez vous.")}
        </p>
        <div className="mt-10 flex items-center justify-center gap-x-6">
          <a
            href="/"
            className="rounded-md bg-indigo-600 px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">
            {React.string("Accueil")}
          </a>
          <a href="#" className="text-sm/6 font-semibold text-white" onClick={_ => openModal()}>
            {React.string("Contact")}
            <span />
          </a>
        </div>
      </div>
    </div>
  </div>
}
