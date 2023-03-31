RUN echo -e '\
import React from '"'"'react'"'"';\n\
import ReactDOM from '"'"'react-dom/client'"'"';\n\
import '"'"'./index.css'"'"';\n\
import App from '"'"'./app'"'"';\n\
\n\
const root = ReactDOM.createRoot(document.getElementById('"'"'root'"'"'));\n\
root.render(\n\
  <React.StrictMode>\n\
    <App />\n\
  </React.StrictMode>\n\
);\n\
' > src/index.js
