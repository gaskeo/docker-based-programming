RUN echo -e '\
{\n\
  "name": "docker-app",\n\
  "version": "0.1.0",\n\
  "private": true,\n\
  "dependencies": {\n\
    "@testing-library/jest-dom": "^5.16.5",\n\
    "@testing-library/react": "^13.4.0",\n\
    "@testing-library/user-event": "^13.5.0",\n\
    "react": "^18.2.0",\n\
    "react-dom": "^18.2.0",\n\
    "react-scripts": "5.0.1",\n\
    "web-vitals": "^2.1.4"\n\
  },\n\
  "scripts": {\n\
    "start": "react-scripts start",\n\
    "build": "react-scripts build",\n\
    "test": "react-scripts test",\n\
    "eject": "react-scripts eject"\n\
  },\n\
  "eslintConfig": {\n\
    "extends": [\n\
      "react-app",\n\
      "react-app/jest"\n\
    ]\n\
  },\n\
  "browserslist": {\n\
    "production": [\n\
      ">0.2%",\n\
      "not dead",\n\
      "not op_mini all"\n\
    ],\n\
    "development": [\n\
      "last 1 chrome version",\n\
      "last 1 firefox version",\n\
      "last 1 safari version"\n\
    ]\n\
  }\n\
}\n\
' > package.json
