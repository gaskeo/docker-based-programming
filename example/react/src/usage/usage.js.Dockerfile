RUN echo -e '\
import "./usage.css"\n\
\n\
\n\
export const Usage = () => {\n\
    return (\n\
        <div className="usage__container" id="usage">\n\
            <h1 className="header">\n\
                Usage\n\
            </h1>\n\
            <p className="text">You need a root file called Dockerfile.</p>\n\
            <p className="text">\n\
                You can split a Dockerfile into multiple files using the new directive:\n\
            </p>\n\
            <div className="code__container">\n\
                <code># INCLUDE any-dir/Dockerfile</code>\n\
            </div>\n\
            <p className="text">\n\
                And after that, you can compile your Dockerfile using <a\n\
                href="https://github.com/gaskeo/docker-based-programming/blob/main/compile.sh">the compiler</a>.\n\
            </p>\n\
            <div className="code__container">\n\
                <code>\n\
                    ./compile\n\
                </code>\n\
            </div>\n\
\n\
            <p className="text">The compiler will replace <b>all</b> <span>INCLUDE</span> directives with\n\
                the code that is inside the files.</p>\n\
            <h2 className="subheader">\n\
                Simple example\n\
            </h2>\n\
            <div className="code__container">\n\
                <code># ./Dockerfile<br/><br/>\n\
                    FROM alpine:latest<br/><br/># INCLUDE files/simple-file.Dockerfile<br/>\n\
                </code>\n\
            </div>\n\
            <p></p>\n\
            <div className="code__container">\n\
                <code># ./files/simple-file.Dockerfile<br/><br/>\n\
\n\
                    RUN echo '"'"'it is very simple file'"'"' >> simple-file<br/>\n\
                    RUN echo '"'"'with two lines'"'"' >> simple-file<br/>\n\
                </code>\n\
            </div>\n\
            <p className="text">\n\
                <b>Note:</b> you can create nested <span># INCLUDE</span> directives, for example, <\n\
                span>./files/simple-file.Dockerfile</span> can contain <span># INCLUDE</span> directive too.\n\
            </p>\n\
            <p className="text">\n\
                Run compile script:\n\
            </p>\n\
            <div className="code__container">\n\
                <code>\n\
                    very-cool-user: ./compile<br/>\n\
                    - copy Dockerfile to .compiled./Dockerfile.compiled<br/><br/>\n\
\n\
                    - start checking Dockerfile.compiled file N1<br/>\n\
                    --- found 1 INCLUDE directives<br/>\n\
                    --- touch files/simple-file.Dockerfile<br/>\n\
                    - save tmp in .compiled/Dockerfile.compiled<br/><br/>\n\
\n\
                    - start checking Dockerfile.compiled file N2<br/><br/><br/>\n\
\n\
                    -=- compile finished in 2 iterations -=-\n\
                </code>\n\
            </div>\n\
            <p className="text">\n\
                After that, the <span>./compiled</span> directory will be created with one\n\
                file <span>./Dockerfile.compiled</span>.<br/>\n\
            </p>\n\
            <div className="code__container">\n\
                <code># ./.compiled/Dockerfile.compiled<br/><br/>\n\
                    FROM alpine:latest<br/><br/>\n\
                    RUN echo '"'"'it is very simple file'"'"' >> simple-file<br/>\n\
                    RUN echo '"'"'with two lines'"'"' >> simple-file<br/>\n\
                </code>\n\
            </div>\n\
            <p className="text">You can use this file for docker or send it to teammates.</p>\n\
        </div>\n\
    )\n\
}\n\
' > src/usage/usage.js
