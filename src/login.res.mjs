// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Base from "./layouts/Base.res.mjs";
import * as React from "react";
import * as LoginContext from "./LoginContext.res.mjs";
import * as JsxRuntime from "react/jsx-runtime";
import * as RescriptReactRouter from "@rescript/react/src/RescriptReactRouter.res.mjs";

function Login(props) {
  var match = React.useState(function () {
        return "";
      });
  var setEmail = match[1];
  var email = match[0];
  var match$1 = React.useState(function () {
        return "";
      });
  var setPassword = match$1[1];
  var password = match$1[0];
  var match$2 = React.useState(function () {
        return "";
      });
  var setError = match$2[1];
  var error = match$2[0];
  var match$3 = LoginContext.useContext();
  var login = match$3.login;
  var handleSubmit = function ($$event) {
    $$event.preventDefault();
    if (login(email, password)) {
      RescriptReactRouter.push("/");
      console.log("Connexion réussie !");
      return ;
    } else {
      return setError(function (param) {
                  return "Identifiants incorrects. Veuillez réessayer.";
                });
    }
  };
  return JsxRuntime.jsx(Base.make, {
              children: JsxRuntime.jsx("div", {
                    children: JsxRuntime.jsx("div", {
                          children: JsxRuntime.jsx("div", {
                                children: JsxRuntime.jsx("div", {
                                      children: JsxRuntime.jsxs("div", {
                                            children: [
                                              JsxRuntime.jsx("h2", {
                                                    children: "Connexion :"
                                                  }),
                                              error !== "" ? JsxRuntime.jsx("p", {
                                                      children: error,
                                                      style: {
                                                        color: "red"
                                                      }
                                                    }) : null,
                                              JsxRuntime.jsxs("form", {
                                                    children: [
                                                      JsxRuntime.jsxs("div", {
                                                            children: [
                                                              JsxRuntime.jsx("label", {
                                                                    children: "Email :"
                                                                  }),
                                                              JsxRuntime.jsx("input", {
                                                                    className: "block w-fill rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1",
                                                                    required: true,
                                                                    type: "email",
                                                                    value: email,
                                                                    onChange: (function (e) {
                                                                        setEmail(function (param) {
                                                                              return e.target.value;
                                                                            });
                                                                      })
                                                                  })
                                                            ]
                                                          }),
                                                      JsxRuntime.jsxs("div", {
                                                            children: [
                                                              JsxRuntime.jsx("label", {
                                                                    children: "Mot de passe :"
                                                                  }),
                                                              JsxRuntime.jsx("input", {
                                                                    className: "block w-fill rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1",
                                                                    required: true,
                                                                    type: "password",
                                                                    value: password,
                                                                    onChange: (function (e) {
                                                                        setPassword(function (param) {
                                                                              return e.target.value;
                                                                            });
                                                                      })
                                                                  })
                                                            ]
                                                          }),
                                                      JsxRuntime.jsx("button", {
                                                            children: JsxRuntime.jsx("div", {
                                                                  children: "Se connecter",
                                                                  style: {
                                                                    backgroundColor: "#007BFF",
                                                                    border: "none",
                                                                    color: "white",
                                                                    cursor: "pointer;",
                                                                    marginTop: "10px",
                                                                    padding: "10px 20px",
                                                                    borderRadius: "5px"
                                                                  }
                                                                }),
                                                            className: "inline-block rounded bg-primary px-6 pb-2 pt-2.2 text-xs font-medium uppercase ",
                                                            type: "submit"
                                                          })
                                                    ],
                                                    onSubmit: handleSubmit
                                                  }),
                                              JsxRuntime.jsx("div", {
                                                    children: JsxRuntime.jsx("a", {
                                                          children: "Mot de passe oublié ?",
                                                          style: {
                                                            color: "#007BFF",
                                                            textDecoration: "none"
                                                          },
                                                          href: "/forgot-password"
                                                        }),
                                                    style: {
                                                      marginTop: "10px",
                                                      textAlign: "center"
                                                    }
                                                  })
                                            ],
                                            style: {
                                              border: "1px solid #ccc;",
                                              margin: "0 auto",
                                              maxWidth: "400px",
                                              padding: "20px"
                                            }
                                          }),
                                      style: {
                                        backgroundColor: "white",
                                        display: "flex",
                                        height: "95%",
                                        padding: "20px",
                                        width: "95%",
                                        borderRadius: "2px",
                                        boxShadow: "0 2px 4px rgba(0, 0, 0, 0.1)",
                                        alignItems: "center;",
                                        flexDirection: "column",
                                        justifyContent: "center"
                                      }
                                    }),
                                style: {
                                  backgroundColor: "#007BFF",
                                  display: "flex",
                                  height: "400px",
                                  width: "500px",
                                  borderRadius: "2px;",
                                  alignItems: "center",
                                  justifyContent: "center"
                                }
                              }),
                          style: {
                            display: "flex",
                            height: "100vh;",
                            alignItems: "center",
                            justifyContent: "center"
                          }
                        }),
                    style: {
                      backgroundColor: "#f8f9fa;",
                      display: "flex",
                      height: "100vh",
                      alignItems: "center",
                      justifyContent: "center"
                    }
                  })
            });
}

var make = Login;

export {
  make ,
}
/* Base Not a pure module */
