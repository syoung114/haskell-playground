FROM haskell

WORKDIR /app

RUN cabal update
COPY ./app.cabal /app/app.cabal
RUN cabal build --only-dependencies -j4

COPY . /app
RUN cabal install

CMD ["app"]
