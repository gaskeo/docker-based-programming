RUN echo -e '\
import '"'"'./app.css'"'"';\n\
import {Header} from "./header/header";\n\
import {About} from "./about/about";\n\
import {Usage} from "./usage/usage";\n\
\n\
function App() {\n\
    return (\n\
        <div className="app">\n\
            <Header/>\n\
            <About/>\n\
            <Usage/>\n\
        </div>\n\
    );\n\
}\n\
\n\
export default App;\n\
' > src/app.js
