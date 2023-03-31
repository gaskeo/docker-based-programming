RUN echo -e '\
.about__container {\n\
    width: 90vw;\n\
    max-width: 600px;\n\
}\n\
\n\
.about__text--important {\n\
    text-align: center;\n\
    text-transform: uppercase;\n\
    padding: 15px 0;\n\
    background-color: #003652;\n\
    border-radius: 10px;\n\
    font-size: min(5.4vw, 36px) !important;\n\
\n\
}\n\
\n\
.about__list {\n\
    padding-left: 20px;\n\
    list-style-type: none;\n\
}\n\
\n\
.about__list__item:before {\n\
    font-family: '"'"'Montserrat'"'"', sans-serif;\n\
\n\
    content: "✓";\n\
    display: flex;\n\
    justify-content: center;\n\
    align-items: center;\n\
    border: 1px solid #f1faee;\n\
    border-radius: 4px;\n\
    padding: 2px 2px 4px 3px;\n\
    margin-top: 6px;\n\
    box-sizing: border-box;\n\
    font-size: .8em;\n\
    margin-left: -20px;\n\
    position: absolute;\n\
    width: 15px;\n\
    height: 15px;\n\
}\n\
' > src/about/about.css
