package main

import (
	_ "github.com/dmdcilantro/cilantro/app/common"
	"github.com/gorilla/mux"
	"github.com/rtanwar/go_gorilla/controllers"
	"log"
	"net/http"
	"time"
)

var (
	countrycontroller *controller.CountryConroller
)

var router *mux.Router

func main() {

	router = mux.NewRouter()
	http.HandleFunc("/", httpInterceptor)

	router.HandleFunc("/", countrycontroller.Get_countries).Methods("GET", "POST")
	// router.HandleFunc("/user{_:/?}", user.GetHomePage).Methods("GET")
	// router.HandleFunc("/user/view/{id:[0-9]+}", user.GetViewPage).Methods("GET")
	// router.HandleFunc("/user/{id:[0-9]+}", user.GetViewPage).Methods("GET")
	// router.HandleFunc("/test", home.GetTestingPost).Methods("POST")

	// fileServer := http.StripPrefix("/static/", http.FileServer(http.Dir("static")))
	// http.Handle("/static/", fileServer)
	http.Handle("/static/", http.FileServer(http.Dir(".")))

	log.Println("Attempting to start web server.")
	err := http.ListenAndServe(":8080", nil)
	if err != nil {
		log.Fatal("ListenAndServe: ", err)
	}

}

func httpInterceptor(w http.ResponseWriter, req *http.Request) {
	startTime := time.Now()

	router.ServeHTTP(w, req)

	finishTime := time.Now()
	elapsedTime := finishTime.Sub(startTime)
	log.Printf("Host:%s Method:%s:%s Time:%s", req.Host, req.Method, req.RequestURI, elapsedTime)
	// We may not always want to StatusOK

	// switch req.Method {
	// case "GET":
	// 	// common.LogAccess(w, req, elapsedTime)
	// case "POST":
	// 	// here we might use http.StatusCreated
	// 	// common.LogAccess(w, req, elapsedTime)
	// }
}
