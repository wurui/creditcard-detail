<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.creditcard-detail">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-creditcard-detail" ox-mod="creditcard-detail">
            <xsl:variable select="data/ecom-products/i[1]" name="detail"/>

            <xsl:for-each select="$detail">
	            <section>
	            	<div class="maininfo">
	            		<img src="{media/i[type = 'image']/src}"/>
	            		<h3>
	            			<xsl:value-of select="title"/>
	            		</h3>
	            		<p class="brief">
	            			<xsl:value-of select="brief"/>
	            		</p>
	            		<p>
	            			<a class="btn  skin-bgcolor" href="{LINK/apply}">立即申请</a>
	            		</p>
	            	</div>
	            </section>
	            <section>
	            	<div class="richtext">
		            	<xsl:value-of select="description" disable-output-escaping="yes" />
		            </div>
	            </section>
	            <section class="center">
	            	<a class="btn skin-bgcolor" href="{LINK/apply}">立即申请</a>
	            </section>
	        </xsl:for-each>
        </div>
    </xsl:template>
</xsl:stylesheet>
