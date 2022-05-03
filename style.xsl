<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		
		<html lang="en">
			<head>
				<title>Telepizza</title>
				<!-- Required meta tags -->
				<meta charset="utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
				
				<!-- Bootstrap CSS -->
				<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
			</head>
			<body>
				<header class="bg-danger py-3">
					<div class="container">
						<div class="row justify-content-between">
							<img src="img/telepizzalogo.png" alt=""/>
							<div>
								<img src="img/work.svg" alt="" class="ml-3"/>
								<img src="img/user.svg" alt="" class="ml-3"/>
								<img src="img/cart.svg" alt="" class="ml-3"/>
							</div>
						</div>
					</div>
				</header>
				<div class="container shadow">
					<h2 class="mt-3">Entrantes</h2>
					<xsl:for-each select="entrantes/categoria">
						<h4 class="my-4 text-secondary"><xsl:value-of select="@nombre"/></h4>
						<div class="row">
							<xsl:for-each select="entrante">
								<div class="col-md-6 col-lg-4 mb-4">
									<div class="card">
										<img class="card-img-top" src="https://images.telepizza.com/vol/es/images/content/productos/new/{imagen}.jpg" alt=""/>
										<div class="card-body">
											<h5 class="card-title"><xsl:value-of select="@nombre"/></h5>
											<div class="row justify-content-between px-3">
												<a href="#" class="text-secondary">Ver más</a>
												<h5 class="card-text text-right text-secondary"><xsl:value-of select="precio"/> &euro;</h5>
											</div>
											<div class="text-right"><button class="btn btn-danger mt-3 px-4 py-2">AÑADIR</button></div>
										</div>
									</div>
								</div>
							</xsl:for-each>
						</div>
					</xsl:for-each>
					
					
				</div>
				<footer class="bg-danger py-3">
					<h2 class="bg-danger text-white text-center py-2"><xsl:value-of select="entrantes/@fuente"/> - Azarquiel</h2>
				</footer>
				<!-- Optional JavaScript -->
				<!-- jQuery first, then Popper.js, then Bootstrap JS -->
				<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
				<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
			</body>
		</html>
		
	</xsl:template>
</xsl:stylesheet>