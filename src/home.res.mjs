// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Base from "./layouts/Base.res.mjs";
import * as Header from "./layouts/Header.res.mjs";
import * as Content from "./Content.res.mjs";
import * as JsxRuntime from "react/jsx-runtime";

function Home(props) {
  return JsxRuntime.jsxs(Base.make, {
              children: [
                JsxRuntime.jsx("div", {
                      children: JsxRuntime.jsx(Header.make, {
                            interval: 3600
                          }),
                      className: "pt-16"
                    }),
                JsxRuntime.jsx("div", {
                      children: JsxRuntime.jsx(Content.make, {}),
                      className: "mx-auto max-w-7xl px-2 sm:px-6 lg:px-8"
                    })
              ]
            });
}

var make = Home;

export {
  make ,
}
/* Base Not a pure module */
