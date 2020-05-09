package main

import (
    "fmt"
    "net/http"
	log "github.com/sirupsen/logrus"
)

func main() {

    log.WithFields(log.Fields{
      "function": "main",
    }).Info("Spinning up the server!")

    http.HandleFunc("/", HelloServer)
    http.ListenAndServe(":8080", nil)
}

func HelloServer(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hello, %s!", r.URL.Path[1:])
}
