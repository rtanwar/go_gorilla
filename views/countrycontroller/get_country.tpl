<!DOCTYPE html>

<html>
  	<head>
    	<title>Beego</title>
    	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

		<style type="text/css">
			body {
				margin: 0px;
				font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
				font-size: 14px;
				line-height: 20px;
				color: rgb(51, 51, 51);
				background-color: rgb(255, 255, 255);
			}

			.hero-unit {
				padding: 60px;
				margin-bottom: 30px;
				border-radius: 6px 6px 6px 6px;
			}

			.container {
				width: 940px;
				margin-right: auto;
				margin-left: auto;
			}

			.row {
				margin-left: -20px;
			}

			h1 {
				margin: 10px 0px;
				font-family: inherit;
				font-weight: bold;
				text-rendering: optimizelegibility;
			}

			.hero-unit h1 {
				margin-bottom: 0px;
				font-size: 60px;
				line-height: 1;
				letter-spacing: -1px;
				color: inherit;
			}

			.description {
				padding-top: 5px;
				padding-left: 5px;
				font-size: 18px;
				font-weight: 200;
				line-height: 30px;
				color: inherit;
			}

			p {
				margin: 0px 0px 10px;
			}
		</style>
	</head>

  	<body>
  		<header class="hero-unit" style="background-color:#A9F16C">
			<div class="container">
			<div class="row">
			  <div class="hero-text">
			    <h1>Welcome <<<.user>>>! on details page!</h1>
			    <p class="description">
			    	Beego is a simple & powerful Go web framework which is inspired by tornado and sinatra.
			    
			    Here is <a href="/">Main Page</a>
			    <br/>
			    <<< if .country>>>
			    <table border=1>			    
			    <caption><h4>Country details:</h4></caption>
			    <tr><td>Name:</td><td>Name: <<<.country.Name>>></td></tr>
				<tr><td>Continent: </td><td><<<.country.Continent>>></td></tr>
				<tr><td>Region:</td><td><<<.country.Region>>></td></tr>
				<tr><td>Population:</td><td><<<.country.Population>>></td></tr>
				</table>
				<<< else >>>
					No Data Found! Please check code.
				<<< end >>>
			  </div>
			</div>
			</div>
		</header>
	</body>
</html>
