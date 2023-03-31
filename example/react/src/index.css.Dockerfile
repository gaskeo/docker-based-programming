RUN echo -e '\
@import url('"'"'https://fonts.googleapis.com/css2?family=DM+Mono&family=Montserrat&family=Mukta:wght@700&display=swap'"'"');\n\
\n\
body, html {\n\
    margin: 0;\n\
    font-family: -apple-system, BlinkMacSystemFont, '"'"'Segoe UI'"'"', '"'"'Roboto'"'"', '"'"'Oxygen'"'"',\n\
    '"'"'Ubuntu'"'"', '"'"'Cantarell'"'"', '"'"'Fira Sans'"'"', '"'"'Droid Sans'"'"', '"'"'Helvetica Neue'"'"',\n\
    sans-serif;\n\
    -webkit-font-smoothing: antialiased;\n\
    -moz-osx-font-smoothing: grayscale;\n\
    background-color: #0a1128;\n\
    overflow-x: hidden;\n\
}\n\
\n\
p, h1, h2, h3, code, ul, li {\n\
    color: #f1faee;\n\
}\n\
\n\
.code__container {\n\
    background-color: #042d3a;\n\
    border-radius: 10px;\n\
    box-sizing: border-box;\n\
    padding: 20px 10px;\n\
    overflow-x: auto;\n\
}\n\
\n\
code {\n\
    font-family: '"'"'DM Mono'"'"', monospace;\n\
    width: max-content;\n\
    display: block;\n\
    color: #a7c957;\n\
\n\
}\n\
\n\
.header {\n\
    height: auto !important;\n\
    font-family: '"'"'Mukta'"'"', sans-serif;\n\
    word-wrap: break-word;\n\
    line-height: 1.2em;\n\
}\n\
\n\
.subheader {\n\
    font-family: '"'"'Mukta'"'"', sans-serif;\n\
}\n\
\n\
.text {\n\
    font-family: '"'"'Montserrat'"'"', sans-serif;\n\
    line-height: 1.8em;\n\
}\n\
\n\
a {\n\
    font-family: '"'"'Montserrat'"'"', sans-serif;\n\
    color: #dda15e;\n\
}\n\
\n\
span {\n\
    font-family: '"'"'DM Mono'"'"', monospace;\n\
    background-color: #042d3a;\n\
    padding: 2px 8px;\n\
    border-radius: 4px;\n\
}\n\
' > src/index.css
