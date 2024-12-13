// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Belt_Array from "rescript/lib/es6/belt_Array.js";
import * as JsxRuntime from "react/jsx-runtime";

var context = React.createContext({
      isLogged: false,
      login: (function (_username, _password) {
          return false;
        }),
      signup: (function (_username, _password) {
          
        })
    });

var make = context.Provider;

var Provider = {
  make: make
};

function LoginContext$DefaultProvider(props) {
  var match = React.useState(function () {
        return false;
      });
  var setIsLogged = match[1];
  var isLogged = match[0];
  var match$1 = React.useState(function () {
        return [];
      });
  var setUsers = match$1[1];
  var users = match$1[0];
  console.log(isLogged ? "true" : "false");
  return JsxRuntime.jsx(make, {
              value: {
                isLogged: isLogged,
                login: (function (username, password) {
                    console.log("plop");
                    users.some(function (user) {
                          if (user.username === username) {
                            return user.password === password;
                          } else {
                            return false;
                          }
                        });
                    if (username === "admin@gmail.com" && password === "admin") {
                      setIsLogged(function (param) {
                            return true;
                          });
                      return true;
                    } else {
                      return false;
                    }
                  }),
                signup: (function (username, password) {
                    setUsers(function (users) {
                          return Belt_Array.concatMany([
                                      users,
                                      [{
                                          username: username,
                                          password: password
                                        }]
                                    ]);
                        });
                  })
              },
              children: props.children
            });
}

var DefaultProvider = {
  make: LoginContext$DefaultProvider
};

function useContext() {
  return React.useContext(context);
}

export {
  context ,
  Provider ,
  DefaultProvider ,
  useContext ,
}
/* context Not a pure module */
