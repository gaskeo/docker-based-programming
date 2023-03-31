RUN echo -e '\
import '"'"'./about.css'"'"'\n\
\n\
\n\
export const About = () => {\n\
    return (\n\
        <div className='"'"'about__container'"'"' id='"'"'main'"'"'>\n\
            <h1 className='"'"'header'"'"'>\n\
                No-code Dockerfile programming\n\
            </h1>\n\
            <p className='"'"'text'"'"'>\n\
                Each Dockerfile includes this line:\n\
            </p>\n\
            <div className='"'"'code__container'"'"'>\n\
                <code>\n\
                    COPY . .\n\
                </code>\n\
            </div>\n\
            <p className='"'"'text'"'"'>\n\
                We have to import <b>all</b> the code from the working directory into a Dockerfile.\n\
                Our team thinks this is a\n\
            </p>\n\
            <p className='"'"'text about__text--important'"'"'>very old-fashioned style</p>\n\
            <p className='"'"'text'"'"'>\n\
                We can improve it by writing code right inside the Dockerfile.\n\
            </p>\n\
            <h2 className='"'"'subheader'"'"'>Pros</h2>\n\
            <ul className='"'"'about__list'"'"'>\n\
                <li className='"'"'about__list__item'"'"'>\n\
                    <p className='"'"'text'"'"'>Clean repository. You don'"'"'t need any other file formats. Dockerfile only</p>\n\
                </li>\n\
                <li className='"'"'about__list__item'"'"'>\n\
                    <p className='"'"'text'"'"'>Easy to share. Share the working code with a single file</p>\n\
                </li>\n\
                <li className='"'"'about__list__item'"'"'>\n\
                    <p className='"'"'text'"'"'>\n\
                        An easy way to create files. You do not need to create files in the working directory,\n\
                        the files are created inside the Docker image\n\
                    </p>\n\
                </li>\n\
            </ul>\n\
        </div>\n\
    )\n\
}\n\
' > src/about/about.js
