// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Belt_Array from "rescript/lib/es6/belt_Array.js";
import * as WorkersData from "../data/WorkersData.res.mjs";
import * as JsxRuntime from "react/jsx-runtime";

function ContentModal(props) {
  if (!props.isOpen) {
    return null;
  }
  var close = props.close;
  return Belt_Array.map(WorkersData.data, (function (worker) {
                var name = worker.nomComplet;
                var sector = worker.secteurActivite;
                var city = worker.villeDeResidence;
                var rating = worker.nombreEtoile;
                var image = worker.image;
                var description = worker.descriptionActivite;
                return JsxRuntime.jsx("div", {
                            children: JsxRuntime.jsx("div", {
                                  children: JsxRuntime.jsxs("div", {
                                        children: [
                                          JsxRuntime.jsx("img", {
                                                className: "w-full h-48 object-cover rounded mb-4",
                                                src: image
                                              }),
                                          JsxRuntime.jsx("h1", {
                                                children: name,
                                                className: "font-bold text-2xl mb-2 text-center"
                                              }),
                                          JsxRuntime.jsxs("div", {
                                                children: [
                                                  JsxRuntime.jsx("i", {
                                                        className: "fas fa-briefcase mr-2"
                                                      }),
                                                  sector
                                                ],
                                                className: "flex items-center justify-center text-gray-700 text-lg italic mb-2"
                                              }),
                                          JsxRuntime.jsxs("div", {
                                                children: [
                                                  JsxRuntime.jsx("i", {
                                                        className: "fas fa-map-marker-alt mr-2"
                                                      }),
                                                  city
                                                ],
                                                className: "flex items-center justify-center text-gray-700 text-lg italic mb-2"
                                              }),
                                          JsxRuntime.jsx("div", {
                                                children: "(" + rating + ")",
                                                className: "flex items-center justify-center text-yellow-500 text-lg mb-2"
                                              }),
                                          JsxRuntime.jsx("p", {
                                                children: description,
                                                className: "text-gray-700 text-base text-center"
                                              }),
                                          JsxRuntime.jsx("button", {
                                                children: "Fermer",
                                                className: "mt-4 bg-red-500 text-white px-3 py-1 rounded",
                                                onClick: (function (param) {
                                                    close();
                                                  })
                                              })
                                        ],
                                        className: "bg-white rounded-lg overflow-hidden shadow-lg max-w-md w-full p-6 relative"
                                      }),
                                  className: "fixed inset-0 bg-gray-500 bg-opacity-100 flex justify-center items-center"
                                }),
                            className: "fixed inset-0 bg-black bg-opacity-50 flex justify-center items-center",
                            onClick: (function (param) {
                                close();
                              })
                          });
              }));
}

var make = ContentModal;

export {
  make ,
}
/* react/jsx-runtime Not a pure module */
