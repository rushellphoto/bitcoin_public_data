http://www.smarty.net/docsv2/fr/language.function.popup.tpl
HTTP/1.1 200 OK
Date: Thu, 24 Jul 2014 12:23:17 GMT
Server: Apache/2.2.22 (Ubuntu)
X-Powered-By: PHP/5.3.10-1ubuntu3.13
Vary: Accept-Encoding
Content-Encoding: gzip
Content-Length: 8456
Connection: close
Content-Type: text/html

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>{popup} | Smarty</title>
    <meta name="description" content="Smarty is a template engine for PHP.">
    <meta name="keywords" content="smarty, template, engine, php">
    <style type="text/css" media="screen">
    @import "/css/screen/global.css";
    @import "/css/typography.css";
    </style>
    
    <!--[if lt IE 7]>
    <style type="text/css" media="screen">
    @import "/css/screen/fix_ie.css";
    </style>
    <![endif]-->
    
    <!--[if IE 7]>
    <style type="text/css" media="screen">
    @import "/css/screen/fix_ie7.css";
    </style>
    <![endif]-->
    
    <link rel="stylesheet" type="text/css" media="print" href="/css/typography.css">
    <link rel="stylesheet" type="text/css" media="print" href="/css/print/global.css">
    <link rel="stylesheet" type="text/css" media="screen" href="/js/bbedit.css">
    
    <script type="text/javascript" src="http://www.google.com/jsapi?key=ABQIAAAAtNLTcaiYcFN-f4XrzpVY_RSkE6bExsEa6fcoWABjZpep9Iy-rxQHKn32rDn2QOaRGdO78OCTegXQvw"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.4/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/js/jquery.bbedit.min.js"></script>

    <link href="/js/prettify/prettify.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="/js/prettify/prettify.js"></script>    
    
    <script type="text/JavaScript"> 
     $(document).ready(function(){
       prettyPrint();
              $("#commentFormBodyText").bbedit({
           highlight: true,
           enableSmileybar: false,
           tags: 'b,i,url,code,quote'
       });
       $("#commentPreviewText").hide();
       $("#commentPostedText").hide();
       $("#commentBusyIcon").hide();
       $("#commentForm").submit(function() { return false; });
       $("#commentFormPreviewButton").click(function(){
         $("#commentBusyIcon").show();
         $.post("/comments/preview", { body: $("#commentFormBodyText").val(), author: $("#commentFormAuthorText").val() },
            function(data){
              var options = {};
              if($("#commentPreviewText").is(":visible")) {
                $("#commentPreviewText").hide('blind',options,500,function() {
                  $("#commentPreviewText").html(data);
                  $("#commentPreviewText").show('blind',options,500,function() {
                    $("#commentBusyIcon").hide();
                  });                  
                });
              } else {
                $("#commentPreviewText").html(data);
                $("#commentPreviewText").show('blind',options,500,function() {
                  $("#commentBusyIcon").hide();
                });                  
              }
            });
       }); 
       $("#commentFormPostButton").click(function(){
         $("#commentBusyIcon").show();
         $.post("/comments/post", { body: $("#commentFormBodyText").val(), author: $("#commentFormAuthorText").val(), page_id: $("#commentFormPageID").val(), email: $("#commentFormEmailText").val(), challenge: $("#commentFormChallengeText").val(), obf: $("#commentFormChallengeObf").val()},
            function(data){
              var options = {};
              $("#commentPostedText").html(data);
              if($("#commentPreviewText").is(":visible")) {
                $("#commentPreviewText").hide('blind',options,500,function() {
                  $("#commentPostedText").show('blind',options,500,function() {
                    $("#commentBusyIcon").hide();
                    $("#commentFormPostButton").attr('disabled','true'); 
                    $("#commentFormPreviewButton").attr('disabled','true'); 
                  });
                });
              } else {
                $("#commentPostedText").show('blind',options,500,function() {
                  $("#commentBusyIcon").hide();
                  $("#commentFormPostButton").attr('disabled','true'); 
                  $("#commentFormPreviewButton").attr('disabled','true'); 
                });
              }                  
            });
       });
            });
          function clearDefaultandCSS(el) {
     	if (el.defaultValue==el.value) el.value = ""
     	// If Dynamic Style is supported, clear the style
     	if (el.style) el.style.cssText = ""
     }
         </script>
    
    <script type="text/javascript" src="/js/smarty.js"></script>
  	<script type="text/javascript" src="http://partner.googleadservices.com/gampad/google_service.js"> 
  	</script> 
  	<script type="text/javascript"> 
  	  GS_googleAddAdSenseService("ca-pub-8878956630941543");
  	  GS_googleEnableAllServices();
  	</script> 
  	<script type="text/javascript"> 
  	  GA_googleAddSlot("ca-pub-8878956630941543", "smarty_footer");
  	  GA_googleAddSlot("ca-pub-8878956630941543", "smarty_left_box");
  	  GA_googleAddSlot("ca-pub-8878956630941543", "smarty_right_skyscraper");
  	  GA_googleAddSlot("ca-pub-8878956630941543", "smarty_top_banner");
  	</script> 
  	<script type="text/javascript"> 
  	  GA_googleFetchAds();
  	</script>
  </head>
  <body>
  <a class="skiplink" accesskey="S" href="#mainContent">Skip over navigation</a>
  <div id="wrapper">
      <div id="header">
        <div id="header_logo">
          <div id="logo"><a href="/"><img src="/images/logo_print.gif" width="249" height="74" alt="Smarty Template Engine"></a></div>
        </div>
        <div id="header_ad" style="float: right;">
      		<script type="text/javascript"> 
      		  GA_googleFillSlot("smarty_footer");
      		</script>
      	</div>
        <div class="clear"></div>
      </div>
      <div id="nav">
        <ul class="nav navHorz">
		  		  		  		  		  		              		<li><a href="/" accesskey="1">Home</a></li>
					  		              		<li><a href="/download" >Download</a></li>
					  		              		<li><a href="/documentation" accesskey="6">Documentation</a></li>
					  		              		<li><a href="http://smarty.incutio.com/?page=SmartyFrequentlyAskedQuestions" >FAQ</a></li>
					  		              		<li><a href="/forums/" >Forum</a></li>
					  		              		<li><a href="/mailinglists" >Mailing Lists</a></li>
					          </ul>
        
        <form action="/search" method="get">
          <p>
            <input type="text" name="q" size="30" value="Search..." accesskey="4" class="field" onclick="smarty.removeDefaultValue(this, 'Search...');" onfocus="smarty.removeDefaultValue(this, 'Search...');" onblur="smarty.restoreDefaultValue(this, 'Search...');">
            in
            <select name="show" class="field">
              <optgroup label="Documentation">
                <option value="manual-en">English</option>
                <option value="manual-de">German</option>
                <option value="manual-es">Spanish</option>
                <option value="manual-fr">French</option>
                <option value="manual-it">Italian</option>
                <option value="manual-ja">Japanese</option>
                <option value="manual-pt_BR">Portuguese</option>
                <option value="manual-ru">Russian</option>
              </optgroup>
              <optgroup label="Mailing Lists">
                <option value="smarty-general-list">General</option>
                <option value="smarty-dev-list">Development</option>
              </optgroup>
            </select>
            <input type="image" src="/images/search.png" alt="Submit Search" class="button">
          </p>
        </form>
        <div class="clear"></div>
      </div>
     
      <div class="col colSecondary">
        <div class="box box1">
          <h1 class="boxHead">Get Smarty</h1>
          <ul class="nav navVert"
            ><li><a href="/download">Download</a></li
          ></ul>
        </div>
        
        <div class="box box1">
          <h1 class="boxHead">About Smarty</h1>
          <ul class="nav navVert"
          ><li><a href="/about_smarty">All About Smarty</a></li
            ><li><a href="/why_use">Why use it?</a></li
              ><li><a href="/use_cases">Use Cases and Work Flow</a></li
            ><li><a href="/syntax_comparison">Syntax Comparison</a></li
            ><li><a href="/inheritance">Template Inheritance</a></li
            ><li><a href="/best_practices">Best Practices</a></li
            ><li><a href="/crash_course">Crash Course</a></li
            ><li><a href="/v3_overview">Version 3 Overview</a></li
            ><li><a href="/forums/viewforum.php?f=12">Testimonials</a></li
              ><li><a href="http://smarty.incutio.com/?page=SitesUsingSmarty">Sites Using Smarty</a></li
          ></ul>
        </div>
        
        <div class="box box1">
          <h1 class="boxHead">Resources</h1>
          <ul class="nav navVert"
          ><li><a href="http://smarty-php.googlecode.com/svn/trunk/distribution/SMARTY_2_BC_NOTES.txt">Smarty 2-&gt;3 upgrade notes</a></li
            ><li><a href="http://smarty-php.googlecode.com/svn/trunk/distribution/README">README (from distro)</a></li
          ><li><a href="/quick_install">Quick Install</a></li
	      ><li><a href="/documentation">Documentation</a></li
		  ><li><a href="/forums/">Discussion Forums</a></li
	      ><li><a href="/sampleapp1">Example App</a></li
          ><li><a href="irc://irc.freenode.net/smarty">IRC (chat)</a></li
          ><li><a href="/mailinglists">Mailing Lists</a></li
          ><li><a href="http://smarty.incutio.com/">Community Wiki</a></li
          ><li><a href="http://smarty.incutio.com/?page=SmartyFrequentlyAskedQuestions">FAQ (wiki)</a></li
          ><li><a href="http://www.smarty.net/forums/viewforum.php?f=23" accesskey="5">FAQ (forums)</a></li
          ><li><a href="http://www.jdoqocy.com/click-4355642-10718312?url=http%3A%2F%2Fwww.odesk.com%2Fcontractors%2Fskill%2Fsmarty%2Ffb%2F4.5-5.0-stars.4.0-4.5-stars%2Fsort%2Fadjusted-score%2Bdesc?vt_cmp=smarty">Hire Smarty Developers</a></li
          ></ul>
        </div>
        <div class="box box1">
          <h1 class="boxHead">Links</h1>
          <ul class="nav navVert"
          ><li><a href="http://www.php.net/">www.php.net</a></li
            ><li><a href="http://www.phpinsider.com/">www.phpinsider.com</a></li
            ><li><a href="http://www.ellysdirectory.com/">www.ellysdirectory.com</a></li
              
              
          ></ul>
        </div>
        <div class="box box1" id="bitcoin">
          <h1 class="boxHead">Donate</h1>
          <div align="center" class="boxContent">
            <div>
            <a href="javascript:void(0);" onclick="javascript:window.prompt ('Copy and paste address to your bitcoin software:', '19fEr3YYkGoHrT2zu4e2GBasdrJu6wwAze');"><img src="/images/bitcoin.png" width="25" height="25" alt="Donate Bitcoin" style="vertical-align:middle"> Bitcoin</a>
            </div>
            <div>
            <form action="https://www.paypal.com/cgi-bin/webscr" method="post">
            <input type="hidden" name="cmd" value="_s-xclick">
            <input type="hidden" name="hosted_button_id" value="AK2ZWFVSNJEDE">
            <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif" border="0" name="submit" alt="PayPal Donate" style="vertical-align:middle"> Paypal
            <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
            </form>
            </div>
          </div>
        </div>
        <div class="box box1" id="smartyIcons">
          <h1 class="boxHead">Smarty Icon</h1>
          <div align="center" class="boxContent">
            <p style="text-align: left">You may use the Smarty logo according to the <a href="/copyright">trademark notice</a>.</p>
            <p>
              <img src="/images/icons/smarty_icon.gif" width="88" height="31" alt="Smarty Template Engine">
              <img src="/images/icons/smarty-80x15.png" width="80" height="15" alt="Smarty Template Engine">
            </p>
            <p style="text-align: left">
              For sponsorship, advertising, news or other inquiries, contact us at: <script type="text/javascript" language="javascript">
{document.write(String.fromCharCode(60,97,32,104,114,101,102,61,34,109,97,105,108,116,111,58,119,101,98,109,97,115,116,101,114,64,115,109,97,114,116,121,46,110,101,116,34,32,62,119,101,98,109,97,115,116,101,114,64,115,109,97,114,116,121,46,110,101,116,60,47,97,62))}
</script>

            </p>
          </div>
        </div>        
        <div class="box box1" id="sitesUsingSmarty">
          <h1 class="boxHead">Sites Using Smarty</h1>
          <div align="center" class="boxContent">
               <p>Largest classified with thousands of ads at <a href="http://www.shoppok.com">Shoppok</a></p>
			   <p>Buy <a href="http://www.cheapglasses123.com/">cheap eyeglasses</a> from <a href="http://www.cheapglasses123.com/">Cheapglasses123.com</a> and save up to 80%.</p>
			   <p>Buy wedding dresses on SiteSteer.com - <a href="http://www.sitesteer.com/">Best Online Wedding Dress Store</a></p>
      			<p>
      			  Buy <a href="http://www.australiaglasses.com/">prescription glasses</a> from <a href="http://www.australiaglasses.com/">www.australiaglasses.com</a> and save.
				</p>
				<p>
  					<a href="http://www.glassespeople.com/">Cheap Glasses</a> Now On Sale at <a href="http://www.glassespeople.com/">GlassesPeople.com</a>. Starts At $7.95.
      			</p>
      			<p>
      			Where to buy <a href="http://www.weddingdresstrend.com/">discount wedding dresses</a> and cheap smart dresses free shipping - <a href="http://www.weddingdresstrend.com/">Weddingdresstrend.com</a>
      			</p>
      			<p>
                	<script type="text/javascript"> 
      			  GA_googleFillSlot("smarty_left_box");
      			</script>
      			</p>
          </div>
        </div>        

      </div><!-- end colSecondary -->
      
      <div class="col colMain" id="mainContent">
      
<div class="navheader">
<table width="100%" summary="Navigation header">
<tr><th colspan="3" align="center">{popup}</th></tr>
<tr>
<td width="20%" align="left">
<a accesskey="p" href="language.function.math.tpl">Prev</a> </td>
<th width="60%" align="center">Chapter 8. Fonctions utilisateur</th>
<td width="20%" align="right"> <a accesskey="n" href="language.function.popup.init.tpl">Next</a>
</td>
</tr>
</table>
<hr>
</div>
<div class="sect1" title="{popup}">
<div class="titlepage"><div><div><h2 class="title" style="clear: both">
<a name="language.function.popup"></a>{popup}</h2></div></div></div>
<p>
  <code class="varname">{popup}</code> est utilisé pour créer une fenêtre popup javascript.
  <a class="link" href="language.function.popup.init.tpl" title="{popup_init}"><code class="varname">{popup_init}</code></a>
  DOIT être appelé en premier pour que cela fonctionne.
 </p>
<div class="informaltable"><table border="1">
<colgroup>
<col align="center">
<col align="center">
<col align="center">
<col align="center">
<col>
</colgroup>
<thead><tr>
<th align="center">Nom attribut</th>
<th align="center">Type</th>
<th align="center">Requis</th>
<th align="center">Defaut</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td align="center">text</td>
<td align="center">chaîne de caractères</td>
<td align="center">Oui</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Le texte/code html à afficher dans la popup</td>
</tr>
<tr>
<td align="center">trigger</td>
<td align="center">chaîne de caractères</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>onMouseOver</em></span></td>
<td>L'évènement utilisé pour rendre la popup active,
     onMouseOver ou onClick.</td>
</tr>
<tr>
<td align="center">sticky</td>
<td align="center">booléen</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em><code class="constant">FALSE</code></em></span></td>
<td>Rends la popup active jusqu'a ce qu'elle soit
     explicitement fermée.</td>
</tr>
<tr>
<td align="center">caption</td>
<td align="center">chaîne de caractères</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Défini le libellé du titre</td>
</tr>
<tr>
<td align="center">fgcolor</td>
<td align="center">chaîne de caractères</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Couleur interne de la popup</td>
</tr>
<tr>
<td align="center">bgcolor</td>
<td align="center">chaîne de caractères</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Couleur de la bordure de la popup</td>
</tr>
<tr>
<td align="center">textcolor</td>
<td align="center">chaîne de caractères</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Couleur du texte à l'intérieur de la
     popup</td>
</tr>
<tr>
<td align="center">capcolor</td>
<td align="center">chaîne de caractères</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Couleur du libellé de la popup</td>
</tr>
<tr>
<td align="center">closecolor</td>
<td align="center">chaîne de caractères</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Couleur du texte de fermeture</td>
</tr>
<tr>
<td align="center">textfont</td>
<td align="center">chaîne de caractères</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>La police à utiliser dans le texte principal</td>
</tr>
<tr>
<td align="center">captionfont</td>
<td align="center">chaîne de caractères</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>La police à utiliser dans le libellé</td>
</tr>
<tr>
<td align="center">closefont</td>
<td align="center">chaîne de caractères</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>La police pour le texte de fermeture</td>
</tr>
<tr>
<td align="center">textsize</td>
<td align="center">chaîne de caractères</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Taille de la police texte prinicpal</td>
</tr>
<tr>
<td align="center">captionsize</td>
<td align="center">chaîne de caractères</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Taille de la police du libellé</td>
</tr>
<tr>
<td align="center">closesize</td>
<td align="center">chaîne de caractères</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Taille de la police du bouton "fermer"</td>
</tr>
<tr>
<td align="center">width</td>
<td align="center">entier</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Longeur de la popup</td>
</tr>
<tr>
<td align="center">height</td>
<td align="center">entier</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Hauteur de la popup</td>
</tr>
<tr>
<td align="center">left</td>
<td align="center">booléen</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em><code class="constant">FALSE</code></em></span></td>
<td>La popup va à gauche de la souris</td>
</tr>
<tr>
<td align="center">right</td>
<td align="center">booléen</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em><code class="constant">FALSE</code></em></span></td>
<td>La popup va à droite de la souris</td>
</tr>
<tr>
<td align="center">center</td>
<td align="center">booléen</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em><code class="constant">FALSE</code></em></span></td>
<td>La popup est centrée par rapport à la
     position de la souris</td>
</tr>
<tr>
<td align="center">above</td>
<td align="center">booléen</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em><code class="constant">FALSE</code></em></span></td>
<td>la popup est au dessus de la souris. NOTE:
     possible uniquement si la hauteur est définie</td>
</tr>
<tr>
<td align="center">below</td>
<td align="center">booléen</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em><code class="constant">FALSE</code></em></span></td>
<td>La popup apparait en dessous de la souris</td>
</tr>
<tr>
<td align="center">border</td>
<td align="center">entier</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Rends la bordure de la popup plus épaisse ou plus
     fine</td>
</tr>
<tr>
<td align="center">offsetx</td>
<td align="center">entier</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>A quelle distance du curseur la popup apparaitra horizontalement.</td>
</tr>
<tr>
<td align="center">offsety</td>
<td align="center">entier</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>A quelle distance du curseur la popup apparaitra verticalement.</td>
</tr>
<tr>
<td align="center">fgbackground</td>
<td align="center">url vers l'image</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Une image à utiliser à la place de la couleur de
     fonds dans la popup</td>
</tr>
<tr>
<td align="center">bgbackground</td>
<td align="center">url vers l'image</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Image à utiliser à la place de la bordure de la
      popup. NOTE: vous veillerez à définir bgcolor à "" ou la
      couleur apparaitra de même. NOTE: Lorsque vous avez un
      lien de fermeture, Netscape effectuera un nouveau rendu
     des cellules du tableau, affichant mal les éléments</td>
</tr>
<tr>
<td align="center">closetext</td>
<td align="center">chaîne de caractères</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Définit le texte de fermeture par autre chose
     que "Close"</td>
</tr>
<tr>
<td align="center">noclose</td>
<td align="center">booléen</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>N'affiche pas le bouton "Close" pour les fenêtres
      "collantes".
     </td>
</tr>
<tr>
<td align="center">status</td>
<td align="center">chaîne de caractères</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Défini le texte de la barre de statut
     du navigateur</td>
</tr>
<tr>
<td align="center">autostatus</td>
<td align="center">booléen</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Défini le texte de la barre de statut au contenu
     de la popup. NOTE: Ecrase l'attribut status.</td>
</tr>
<tr>
<td align="center">autostatuscap</td>
<td align="center">chaîne de caractères</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Défini le texte de la barre de statut au libellé
     de la popup. NOTE: Ecrase l'attribut status.</td>
</tr>
<tr>
<td align="center">inarray</td>
<td align="center">entier</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Indique à overLib de lire le texte à cet index dans le
      tableau ol_text, situé dans overlib.js. Ce paramètre peut être
     utilisé à la place de text.</td>
</tr>
<tr>
<td align="center">caparray</td>
<td align="center">entier</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Indique à overlib de lire le libellé depuis le
     tableau ol_caps</td>
</tr>
<tr>
<td align="center">capicon</td>
<td align="center">url</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Affiche l'image spécifiée avant le libellé de la
     popup</td>
</tr>
<tr>
<td align="center">snapx</td>
<td align="center">entier</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Aligne la popup sur une grille horizontale</td>
</tr>
<tr>
<td align="center">snapy</td>
<td align="center">entier</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Aligne la popup sur une grille verticale</td>
</tr>
<tr>
<td align="center">fixx</td>
<td align="center">entier</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Vérrouille la popup à une position horizontale.
      Note:	remplace les autres paramètres de position
     horizontale</td>
</tr>
<tr>
<td align="center">fixy</td>
<td align="center">entier</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Vérouille la popup à une position verticale
      Note: remplace les autres paramètres de position
     verticale</td>
</tr>
<tr>
<td align="center">background</td>
<td align="center">url</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Défini l'image à utiliser plutôt que le tableau
     de fond</td>
</tr>
<tr>
<td align="center">padx</td>
<td align="center">entier, entier</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Écarte l'image de fond du reste des éléments
      avec un espace horizontal, pour le positionnement du texte.
     Note: c'est un attribut à deux paramètres.</td>
</tr>
<tr>
<td align="center">pady</td>
<td align="center">entier, entier</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Écarte l'image de fond du reste des éléments
      avec un espace vertical, pour le positionnement du texte.
     Note: c'est un attribut à deux paramètres.</td>
</tr>
<tr>
<td align="center">fullhtml</td>
<td align="center">booléen</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Vous autorise à placer du code html en tant que
      contenu de la popup. Le code html est attendu dans
     l'attribut text.</td>
</tr>
<tr>
<td align="center">frame</td>
<td align="center">chaîne de caractères</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Contrôle la popup dans un cadre différent.
      Voir la documentation d'overlib pour plus de détails
     sur cette fonction.</td>
</tr>
<tr>
<td align="center">function</td>
<td align="center">chaîne de caractères</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Appelle la fonction javascript spécifiée et prends
      sa valeur de retour comme texte devant être affiché
     dans la popup.</td>
</tr>
<tr>
<td align="center">delay</td>
<td align="center">entier</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>La popup se comporte comme une infobulle.
      Elle disparaitra au bout d'un certain délai, en
     millisecondes.</td>
</tr>
<tr>
<td align="center">hauto</td>
<td align="center">booléen</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Détermine automatiquement si la popup doit être
     à gauche ou à droite de la souris</td>
</tr>
<tr>
<td align="center">vauto</td>
<td align="center">booléen</td>
<td align="center">Non</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>Détermine automatiquement si la popup doit être
     au-dessus ou au-dessous de la souris</td>
</tr>
</tbody>
</table></div>
<div class="example">
<a name="id2982392"></a><p class="title"><b>Example 8.25. {popup}</b></p>
<div class="example-contents"><pre class="programlisting">

{* popup_init doit être appelé en haut de votre page *}
{popup_init src='/javascripts/overlib.js'}

{* création d'un lien avec une popup qui apparait sur l'évènement onMouseOver *}
&lt;A href="mypage.html" {popup text='Ce lien vous amène sur ma page!'}&gt;mypage&lt;/A&gt;

{* vous pouvez utiliser du html, des liens, etc. dans vos popup *}
&lt;a href="mypage.html" {popup sticky=true caption='Contenu de la page'
text="&lt;ul&gt;&lt;li&gt;links&lt;/li&gt;&lt;li&gt;pages&lt;/li&gt;&lt;li&gt;images&lt;/li&gt;&lt;/ul&gt;"
snapx=10 snapy=10 trigger='onClick'}&gt;ma page&lt;/a&gt;

{* un popup via une cellule du tableau *}
&lt;tr&gt;&lt;td {popup caption='Détails de cette partie' text=$part_long_description}&gt;{$part_number}&lt;/td&gt;&lt;/tr&gt;

  </pre></div>
</div>
<br class="example-break"><p>
  Il y a également un autre bon exemple sur la page de la documentation de
 <a class="link" href="language.builtin.functions.tpl#language.function.capture" title="{capture}">{capture}</a>.
 </p>
<p>
  Voir aussi
  <a class="link" href="language.function.popup.init.tpl" title="{popup_init}">{popup_init}</a> et
  <a class="ulink" href="http://www.bosrup.com/web/overlib/" target="_top">overLib</a>.
 </p>
</div>
<div class="navfooter">
<hr>
<table width="100%" summary="Navigation footer">
<tr>
<td width="40%" align="left">
<a accesskey="p" href="language.function.math.tpl">Prev</a> </td>
<td width="20%" align="center"><a accesskey="u" href="language.custom.functions.tpl">Up</a></td>
<td width="40%" align="right"> <a accesskey="n" href="language.function.popup.init.tpl">Next</a>
</td>
</tr>
<tr>
<td width="40%" align="left" valign="top">{math} </td>
<td width="20%" align="center"><a accesskey="h" href="index.tpl">Home</a></td>
<td width="40%" align="right" valign="top"> {popup_init}</td>
</tr>
</table>
</div>

		
		  <div class="comments">
      
                  <div id="commentHeader"><strong>Comments</strong></div>
          <div class="commentInfo">
          
                                <div class="commentWrapperEven">
              <div class="commentBody"><emphasis>No comments for this page.</emphasis></div>
            </div>          
                    </div>
          <div id="commentFormWrapper">
            <div id="commentFormHeader"><strong>Post a Comment</strong></div>
            <div id="commentFormElements">
            <form id="commentForm" method="post" action="/comments/post">
              <div id="commentText" style="font-style: italic; color:#f00">All comments are moderated. Support questions are ignored, use the <a href="/forums/">forums</a> instead.</div>
              <div id="commentFormAuthor">Author: <input id="commentFormAuthorText" type="text" name="author" size="40" value="anonymous" style="color: grey" onFocus="clearDefaultandCSS(this)"></div>
              <div id="commentFormEmail">Email: <input id="commentFormEmailText" type="text" name="email" size="30" value="your@email.com" style="color: grey" onFocus="clearDefaultandCSS(this)"> <span style="font-style: italic">(not shown)</span></div>
              
              <div id="commentFormChallenge">What is 2 plus 13? <input id="commentFormChallengeText" type="text" name="challenge" size="30" value="" style="color: grey"> <span style="font-style: italic">(Are you human?)</span></div>
              <input id="commentFormChallengeObf" type="hidden" name="obf" value="cd2331f7946a72fd38cbb24b30c61e0c">
              <div id="commentFormBody"><textarea id="commentFormBodyText" name="body" rows="8" cols="60"></textarea></div>
              <div id="commentFormSubmitButtons">
                <input id="commentFormPostButton" type="submit" value="Post Comment">
                <input id="commentFormPreviewButton" type="submit" value="Preview">
                <img id="commentBusyIcon" src="/images/busy.gif">
              </div>
              <input id="commentFormPageID" type="hidden" name="page_id" value="docsv2/fr/language.function.popup.tpl">
            </form>
            </div>
          </div>
          <div id="commentPreviewText">
          </div>
          <div id="commentPostedText">
          </div>
              
      </div>
      
      </div><!-- end colMain -->
      
      <div class="col colAdditional" align="left">
        <div id="skyscraper">
    		<script type="text/javascript"> 
    		  GA_googleFillSlot("smarty_right_skyscraper");
    		</script>
    		</div>
  		  <div class="box box1" id="smartySponsors">
          <h1 class="boxHead">Sponsors <a href="/sponsors">[info]</a></h1>
          <div class="boxContent">
						  <a href="http://www.webhost.uk.net/">UK Web Hosting</a> <span style="font-size: .7em">@webhost.uk.net</span><br>
						  <a href="http://www.rshosting.com/">Best Web Hosting</a> <span style="font-size: .7em">@rshosting.com</span><br>
						  <a href="http://www.webhostinguk.com/">Web Hosting UK</a> <span style="font-size: .7em">@webhostinguk.com</span><br>
						  <a href="http://www.infrenion.com/">Unlimited Web Hosting</a> <span style="font-size: .7em">@infrenion.com</span><br>
						  <a href="http://www.morphodo.com/de/app-entwicklung.html">App Entwicklung</a> <span style="font-size: .7em">@morphodo.com</span><br>
						  <a href="http://www.dhgate.com/">Buy from China</a> <span style="font-size: .7em">@dhgate.com</span><br>
						  <a href="http://www.fcinternetmarketing.com/">First Click Internet Marketing</a> <span style="font-size: .7em">@fcinternetmarketing.com</span><br>
						
			
          </div>
        </div>
  		  <div class="box box1" id="smartyAds">
  		    <h1 class="boxHead">Using Smarty</h1>
          <div class="boxContent">
			      <a href="http://www.dissertationteam.com/">dissertationteam.com</a><br>
			      <a href="http://jackpot4me.com/super-lig/galatasaray_istanbul.html">galatasaray</a><br>
			      <a href="http://www.dresses1000.com/">Quinceanera Dresses</a><br>
			      <a href="http://www.magicquinceanera.com/">quinceanera gowns</a><br>
			      <a href="http://www.besthochzeit.com/Bridesmaid-Dresses-c7/">Dresses for Bridesmaid</a><br>
			      <a href="http://www.dressfirst.fr/Robes-De-Bal-c18/">robes de bal</a><br>
			      <a href="http://skincareinsight.com/">skin care</a><br>
      			
      			
          </div>
  		    <h1 class="boxHead">I.T Certifications</h1>
          <div class="boxContent">
			      <a href="http://www.pass-guaranteed.com/">I.T Certification Exams</a><br>
			      <a href="http://www.firsttrycertify.com/">Certification Practice Tests</a><br>
          </div>
        </div>
      </div><!-- end colAdditional -->    
      <div class="clear"></div>
    </div><!-- end wrapper -->

  <div id="footer">
    <div id="colTopFooter">
      <a href="/credits" class="rightMar">credits</a>
      <a href="/copyright" accesskey="8" class="rightMar">copyright</a>
      <a href="/accessibility" accesskey="0">accessibility</a>
    </div>
    <p>Smarty Copyright &copy; 2002 &ndash; 2014 New Digital Group, Inc. All rights reserved.</p>
    <p>This page generated in 0.02501 secs with <a href="http://www.tinymvc.com/">TinyMVC</a> and Smarty 3.</p>
  </div>    
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript"> 
</script> 
<script type="text/javascript"> 
_uacct = "UA-638513-4";
urchinTracker();
</script>
<script type="text/javascript">
    var GoSquared={};
    GoSquared.acct = "GSN-138769-Y";
    (function(w){
        function gs(){
            w._gstc_lt=+(new Date); var d=document;
            var g = d.createElement("script"); g.type = "text/javascript"; g.async = true; g.src = "//d1l6p2sc9645hc.cloudfront.net/tracker.js";
            var s = d.getElementsByTagName("script")[0]; s.parentNode.insertBefore(g, s);
        }
        w.addEventListener?w.addEventListener("load",gs,false):w.attachEvent("onload",gs);
    })(window);
</script>
</body>
</html>

