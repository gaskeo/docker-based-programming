RUN echo "from fastapi import FastAPI" >> main.py
RUN echo "app = FastAPI()" >> main.py

RUN echo '@app.get("/")' >> main.py
RUN echo 'def hello_world():' >> main.py
RUN echo '    return "hello world"' >> main.py
