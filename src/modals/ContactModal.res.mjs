// Generated by ReScript, PLEASE EDIT WITH CARE

import * as JsxRuntime from "react/jsx-runtime";

function ContactModal(props) {
  if (!props.isOpen) {
    return null;
  }
  var onClose = props.onClose;
  return JsxRuntime.jsx("div", {
              children: JsxRuntime.jsxs("div", {
                    children: [
                      JsxRuntime.jsx("h2", {
                            children: "Contactez-nous",
                            className: "text-xl font-bold mb-4"
                          }),
                      JsxRuntime.jsxs("form", {
                            children: [
                              JsxRuntime.jsxs("div", {
                                    children: [
                                      JsxRuntime.jsx("label", {
                                            children: "Nom",
                                            className: "block text-gray-700 text-sm font-bold mb-2",
                                            htmlFor: "name"
                                          }),
                                      JsxRuntime.jsx("input", {
                                            className: "shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-indigo-600",
                                            id: "name",
                                            placeholder: "Votre nom",
                                            type: "text"
                                          })
                                    ],
                                    className: "mb-4"
                                  }),
                              JsxRuntime.jsxs("div", {
                                    children: [
                                      JsxRuntime.jsx("label", {
                                            children: "Email",
                                            className: "block text-gray-700 text-sm font-bold mb-2",
                                            htmlFor: "email"
                                          }),
                                      JsxRuntime.jsx("input", {
                                            className: "shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-indigo-600",
                                            id: "email",
                                            placeholder: "Votre email",
                                            type: "email"
                                          })
                                    ],
                                    className: "mb-4"
                                  }),
                              JsxRuntime.jsxs("div", {
                                    children: [
                                      JsxRuntime.jsx("label", {
                                            children: "Sujet",
                                            className: "block text-gray-700 text-sm font-bold mb-2",
                                            htmlFor: "subject"
                                          }),
                                      JsxRuntime.jsx("input", {
                                            className: "shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-indigo-600",
                                            id: "subject",
                                            placeholder: "Sujet du message",
                                            type: "text"
                                          })
                                    ],
                                    className: "mb-4"
                                  }),
                              JsxRuntime.jsxs("div", {
                                    children: [
                                      JsxRuntime.jsx("label", {
                                            children: "Message",
                                            className: "block text-gray-700 text-sm font-bold mb-2",
                                            htmlFor: "message"
                                          }),
                                      JsxRuntime.jsx("textarea", {
                                            className: "shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-indigo-600",
                                            id: "message",
                                            placeholder: "Votre message",
                                            rows: 4
                                          })
                                    ],
                                    className: "mb-4"
                                  }),
                              JsxRuntime.jsxs("div", {
                                    children: [
                                      JsxRuntime.jsx("button", {
                                            children: "Envoyer",
                                            className: "bg-indigo-600 hover:bg-indigo-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:ring-2 focus:ring-indigo-600",
                                            type: "submit"
                                          }),
                                      JsxRuntime.jsx("button", {
                                            children: "Annuler",
                                            className: "text-gray-500 hover:text-gray-700",
                                            type: "button",
                                            onClick: (function (param) {
                                                onClose();
                                              })
                                          })
                                    ],
                                    className: "flex items-center justify-between"
                                  })
                            ]
                          })
                    ],
                    className: "bg-white p-6 rounded-lg shadow-lg max-w-md w-full"
                  }),
              className: "fixed inset-0 bg-gray-600 bg-opacity-50 flex items-center justify-center z-50",
              onClick: (function (param) {
                  onClose();
                })
            });
}

var make = ContactModal;

export {
  make ,
}
/* react/jsx-runtime Not a pure module */
