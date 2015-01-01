package controller

import (
	_ "github.com/dmdcilantro/cilantro/app/common"
	"html/template"
	_ "log"
	"net/http"

	_ "time"
)

type Controller struct {
	TplNames string
	Name     string
	Data     map[string]interface{}
}

type CountryConroller struct {
	Controller
}

func (c *CountryConroller) Get_countries(rw http.ResponseWriter, req *http.Request) {
	type Page struct {
		Title string
	}

	p := Page{
		Title: "home",
	}
	Templates := template.Must(template.ParseFiles("views/countrycontroller/get_country.tpl"))
	Templates.ExecuteTemplate(rw, "base", p)
	// common.CheckError(err, 2)

}

// country := c.GetString("country")
// c.Data["Countries"], _ = models.GetAllCountry(country)
// // fmt.Println(c.Data["Countries"])
// c.Data["Website"] = "beego.me"
// c.Data["Email"] = "astaxie@gmail.com"
// c.Data["country"] = country

// c.Data["user"] = c.user
// c.TplNames = "index.tpl"
