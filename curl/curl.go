package main

import (
	"io/ioutil"
	"log"
	"net/http"
)

const URL = "http://localhost:18888"

func main() {
	resp, err := http.Get(URL)
	if err != nil {
		panic(err)
	}
	defer resp.Body.Close()
	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		panic(err)
	}
	log.Println(string(body))
}
