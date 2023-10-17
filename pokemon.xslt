<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
xmlns:searchParams="http://panax.io/site/searchParams"
xmlns="http://www.w3.org/1999/xhtml"
>
	<xsl:param name="searchParams:id">101</xsl:param>
	<xsl:template match="/*">
		<style>
			:root { --image: url(https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/<xsl:value-of select="$searchParams:id"/>.png) }
		</style>
		<main id="app">

			<h1>Pokemon Card, Holo Effect</h1>
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<li class="page-item" onclick="xo.site.searchParams.set('id',{number($searchParams:id) - 1})">
						<a class="page-link" href="#">Previous</a>
					</li>
					<li class="page-item" onclick="xo.site.searchParams.set('id',{number($searchParams:id) - 1})">
						<a class="page-link" href="#">
							<xsl:value-of select="$searchParams:id - 1"/>
						</a>
					</li>
					<li class="page-item active" onclick="xo.site.searchParams.set('id',{number($searchParams:id)})">
						<a class="page-link" href="#">
							<xsl:value-of select="$searchParams:id"/>
						</a>
					</li>
					<li class="page-item" onclick="xo.site.searchParams.set('id',{number($searchParams:id) + 1})">
						<a class="page-link" href="#">
							<xsl:value-of select="$searchParams:id + 1"/>
						</a>
					</li>
					<li class="page-item" onclick="xo.site.searchParams.set('id',{number($searchParams:id) + 1})">
						<a class="page-link" href="#pokemon">Next</a>
					</li>
				</ul>
			</nav>

			<div class="card">
			</div>
			<span class="operator">+</span>
			<div class="card">
				<span>+ color-dodge</span>
			</div>
			<span class="operator">+</span>
			<div class="card">
				<span>+ color-dodge</span>
			</div>
			<span class="operator">=</span>
			<div class="card"></div>

			<style class="hover"></style>

		</main>
	</xsl:template>
</xsl:stylesheet>