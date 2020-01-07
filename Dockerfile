FROM golang:latest
ARG BRANCH
RUN git clone --branch $BRANCH https://github.com/pdoyle5000/rbrunellelaw.git
#COPY . .
#RUN go mod download
WORKDIR rbrunellelaw/
RUN go build -o main .
EXPOSE 8080
CMD ["./main"]
