RUN echo -e '\
import "./header.css"\n\
\n\
export const Header = () => {\n\
    return (\n\
        <header className="header">\n\
            <nav className="header__nav">\n\
                <a href="#main" className="header__link">\n\
                    Main\n\
                </a>\n\
                <a href="#usage" className="header__link">\n\
                    Usage\n\
                </a>\n\
                <a href="https://github.com/gaskeo/docker-based-programming" className="header__link">\n\
                    Github\n\
                </a>\n\
            </nav>\n\
        </header>\n\
    )\n\
}\n\
' > src/header/header.js
