RUN echo -e '\
.header {\n\
    width: 100vw;\n\
    height: 50px;\n\
}\n\
\n\
.header__nav {\n\
    width: 100vw;\n\
    height: 50px;\n\
    display: flex;\n\
    flex-direction: row;\n\
    align-items: center;\n\
    justify-content: center;\n\
    gap: 40px;\n\
}\n\
\n\
.header__link {\n\
    padding: 8px;\n\
    box-sizing: border-box;\n\
    cursor: pointer;\n\
}\n\
' > src/header/header.css
