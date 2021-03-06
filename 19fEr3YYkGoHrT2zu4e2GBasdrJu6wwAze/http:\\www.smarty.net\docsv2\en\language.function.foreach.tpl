http://www.smarty.net/docsv2/en/language.function.foreach.tpl
HTTP/1.1 200 OK
Date: Thu, 24 Jul 2014 13:00:36 GMT
Server: Apache/2.2.22 (Ubuntu)
X-Powered-By: PHP/5.3.10-1ubuntu3.13
Vary: Accept-Encoding
Content-Encoding: gzip
Content-Length: 9691
Connection: close
Content-Type: text/html

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>{foreach},{foreachelse} | Smarty</title>
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
<tr><th colspan="3" align="center">{foreach},{foreachelse}</th></tr>
<tr>
<td width="20%" align="left">
<a accesskey="p" href="language.function.config.load.tpl">Prev</a> </td>
<th width="60%" align="center">Chapter 7. Built-in Functions</th>
<td width="20%" align="right"> <a accesskey="n" href="language.function.if.tpl">Next</a>
</td>
</tr>
</table>
<hr>
</div>
<div class="sect1" title="{foreach},{foreachelse}">
<div class="titlepage"><div><div><h2 class="title" style="clear: both">
<a name="language.function.foreach"></a>{foreach},{foreachelse}</h2></div></div></div>
<p>
  <code class="varname">{foreach}</code> is used to loop over an
   <span class="bold"><strong>associative array</strong></span> as well a numerically-indexed array,
   unlike <a class="link" href="language.function.section.tpl" title="{section},{sectionelse}"><code class="varname">{section}</code></a>
  which is for looping over <span class="bold"><strong>numerically-indexed arrays only</strong></span>.
  The syntax for
   <code class="varname">{foreach}</code> is much easier than
   <a class="link" href="language.function.section.tpl" title="{section},{sectionelse}"><code class="varname">{section}</code></a>,
   but as a tradeoff it <span class="bold"><strong>can only be used
   for a single array</strong></span>. Every <code class="varname">{foreach}</code> tag must be
   paired with a closing <code class="varname">{/foreach}</code> tag.
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
<th align="center">Attribute Name</th>
<th align="center">Type</th>
<th align="center">Required</th>
<th align="center">Default</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td align="center">from</td>
<td align="center">array</td>
<td align="center">Yes</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>The array you are looping through</td>
</tr>
<tr>
<td align="center">item</td>
<td align="center">string</td>
<td align="center">Yes</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>The name of the variable that is the current
      element</td>
</tr>
<tr>
<td align="center">key</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>The name of the variable that is the current key</td>
</tr>
<tr>
<td align="center">name</td>
<td align="center">string</td>
<td align="center">No</td>
<td align="center"><span class="emphasis"><em>n/a</em></span></td>
<td>The name of the foreach loop for accessing
      foreach properties</td>
</tr>
</tbody>
</table></div>
<div class="itemizedlist"><ul class="itemizedlist" type="disc">
<li class="listitem"><p>
   Required attributes are <em class="parameter"><code>from</code></em> and <em class="parameter"><code>item</code></em>.
   </p></li>
<li class="listitem"><p>
   The <em class="parameter"><code>name</code></em> of the <code class="varname">{foreach}</code> loop can be anything
   you like, made up of letters, numbers and underscores, like
    <a class="ulink" href="http://php.net/language.variables" target="_top">PHP variables</a>.
   </p></li>
<li class="listitem"><p>
   <code class="varname">{foreach}</code> loops can be nested, and the nested
   <code class="varname">{foreach}</code> names must be unique from each other.
   </p></li>
<li class="listitem"><p>
   The <em class="parameter"><code>from</code></em> attribute, usually an array of values,
   determines the number of times <code class="varname">{foreach}</code> will loop.
   </p></li>
<li class="listitem"><p>
   <code class="varname">{foreachelse}</code> is executed when there are no
   values in the <em class="parameter"><code>from</code></em> variable.
   </p></li>
<li class="listitem">
<p>
      <code class="varname">{foreach}</code> loops also have their own variables that handle properties.
      These are accessed with:
      <a class="link" href="language.variables.smarty.tpl#language.variables.smarty.loops" title="{$smarty.section}, {$smarty.foreach}">
      <em class="parameter"><code>{$smarty.foreach.name.property}</code></em></a> with
      <span class="quote">“<span class="quote">name</span>”</span> being the
      <em class="parameter"><code>name</code></em> attribute.
      </p>
<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
<h3 class="title">Note</h3>
<p>The <em class="parameter"><code>name</code></em> attribute is only required when
      you want to access a <code class="varname">{foreach}</code> property, unlike
      <a class="link" href="language.function.section.tpl" title="{section},{sectionelse}"><code class="varname">{section}</code></a>.
      Accessing a <code class="varname">{foreach}</code> property with <em class="parameter"><code>name</code></em>
      undefined does not throw an error, but leads to unpredictable results instead.
      </p>
</div>
</li>
<li class="listitem"><p>
    <code class="varname">{foreach}</code> properties are
    <a class="link" href="language.function.foreach.tpl#foreach.property.index" title=".index"><em class="parameter"><code>index</code></em></a>,
    <a class="link" href="language.function.foreach.tpl#foreach.property.iteration" title=".iteration"><em class="parameter"><code>iteration</code></em></a>,
    <a class="link" href="language.function.foreach.tpl#foreach.property.first" title=".first"><em class="parameter"><code>first</code></em></a>,
    <a class="link" href="language.function.foreach.tpl#foreach.property.last" title=".last"><em class="parameter"><code>last</code></em></a>,
    <a class="link" href="language.function.foreach.tpl#foreach.property.show" title=".show"><em class="parameter"><code>show</code></em></a>,
    <a class="link" href="language.function.foreach.tpl#foreach.property.total" title=".total"><em class="parameter"><code>total</code></em></a>.
    </p></li>
</ul></div>
<div class="example">
<a name="id2801988"></a><p class="title"><b>Example 7.5. The <em class="parameter"><code>item</code></em> attribute</b></p>
<div class="example-contents">
<pre class="programlisting">

&lt;?php
$arr = array(1000, 1001, 1002);
$smarty-&gt;assign('myArray', $arr);
?&gt;

  </pre>
<p>Template to output <em class="parameter"><code>$myArray</code></em> in an un-ordered list</p>
<pre class="programlisting">

&lt;ul&gt;
{foreach from=$myArray item=foo}
    &lt;li&gt;{$foo}&lt;/li&gt;
{/foreach}
&lt;/ul&gt;

  </pre>
<p>
   The above example will output:
  </p>
<pre class="screen">

&lt;ul&gt;
    &lt;li&gt;1000&lt;/li&gt;
    &lt;li&gt;1001&lt;/li&gt;
    &lt;li&gt;1002&lt;/li&gt;
&lt;/ul&gt;

  </pre>
</div>
</div>
<br class="example-break"><div class="example">
<a name="id2802042"></a><p class="title"><b>Example 7.6. Demonstrates the <em class="parameter"><code>item</code></em> and <em class="parameter"><code>key</code></em> attributes</b></p>
<div class="example-contents">
<pre class="programlisting">

&lt;?php
$arr = array(9 =&gt; 'Tennis', 3 =&gt; 'Swimming', 8 =&gt; 'Coding');
$smarty-&gt;assign('myArray', $arr);
?&gt;

  </pre>
<p>Template to output <em class="parameter"><code>$myArray</code></em> as key/val pair,
   like PHP's <a class="ulink" href="http://php.net/foreach" target="_top"><code class="varname">foreach</code></a>.</p>
<pre class="programlisting">

&lt;ul&gt;
{foreach from=$myArray key=k item=v}
   &lt;li&gt;{$k}: {$v}&lt;/li&gt;
{/foreach}
&lt;/ul&gt;

  </pre>
<p>
   The above example will output:
  </p>
<pre class="screen">

&lt;ul&gt;
    &lt;li&gt;9: Tennis&lt;/li&gt;
    &lt;li&gt;3: Swimming&lt;/li&gt;
    &lt;li&gt;8: Coding&lt;/li&gt;
&lt;/ul&gt;

  </pre>
</div>
</div>
<br class="example-break"><div class="example">
<a name="id2802110"></a><p class="title"><b>Example 7.7. {foreach} with associative <em class="parameter"><code>item</code></em> attribute</b></p>
<div class="example-contents">
<pre class="programlisting">

&lt;?php
$items_list = array(23 =&gt; array('no' =&gt; 2456, 'label' =&gt; 'Salad'),
                    96 =&gt; array('no' =&gt; 4889, 'label' =&gt; 'Cream')
                    );
$smarty-&gt;assign('items', $items_list);
?&gt;

  </pre>
<p>Template to output <em class="parameter"><code>$items</code></em> with
   <em class="parameter"><code>$myId</code></em> in the url</p>
<pre class="programlisting">

&lt;ul&gt;
{foreach from=$items key=myId item=i}
  &lt;li&gt;&lt;a href="item.php?id={$myId}"&gt;{$i.no}: {$i.label}&lt;/li&gt;
{/foreach}
&lt;/ul&gt;

  </pre>
<p>
   The above example will output:
  </p>
<pre class="screen">

&lt;ul&gt;
  &lt;li&gt;&lt;a href="item.php?id=23"&gt;2456: Salad&lt;/li&gt;
  &lt;li&gt;&lt;a href="item.php?id=96"&gt;4889: Cream&lt;/li&gt;
&lt;/ul&gt;

  </pre>
</div>
</div>
<br class="example-break"><div class="example">
<a name="id2802172"></a><p class="title"><b>Example 7.8. {foreach} with nested <em class="parameter"><code>item</code></em> and <em class="parameter"><code>key</code></em></b></p>
<div class="example-contents">
<p>Assign an array to Smarty, the key contains the key for each looped value.</p>
<pre class="programlisting">

&lt;?php
 $smarty-&gt;assign('contacts', array(
                             array('phone' =&gt; '1',
                                   'fax' =&gt; '2',
                                   'cell' =&gt; '3'),
                             array('phone' =&gt; '555-4444',
                                   'fax' =&gt; '555-3333',
                                   'cell' =&gt; '760-1234')
                             ));
?&gt;

  </pre>
<p>The template to output <em class="parameter"><code>$contact</code></em>.</p>
<pre class="programlisting">

{foreach name=outer item=contact from=$contacts}
  &lt;hr /&gt;
  {foreach key=key item=item from=$contact}
    {$key}: {$item}&lt;br /&gt;
  {/foreach}
{/foreach}

  </pre>
<p>
   The above example will output:
  </p>
<pre class="screen">

&lt;hr /&gt;
  phone: 1&lt;br /&gt;
  fax: 2&lt;br /&gt;
  cell: 3&lt;br /&gt;
&lt;hr /&gt;
  phone: 555-4444&lt;br /&gt;
  fax: 555-3333&lt;br /&gt;
  cell: 760-1234&lt;br /&gt;

  </pre>
</div>
</div>
<br class="example-break"><div class="example">
<a name="id2802249"></a><p class="title"><b>Example 7.9. Database example with {foreachelse}</b></p>
<div class="example-contents">
<p>A database (eg PEAR or ADODB) example of a search script, the query results assigned to Smarty</p>
<pre class="programlisting">

&lt;?php
  $search_condition = "where name like '$foo%' ";
  $sql = 'select contact_id, name, nick from contacts '.$search_condition.' order by name';
  $smarty-&gt;assign('results', $db-&gt;getAssoc($sql) );
?&gt;

  </pre>
<p>The template which display <span class="quote">“<span class="quote">None found</span>”</span>
  if no results with <code class="varname">{foreachelse}</code>.</p>
<pre class="programlisting">

{foreach key=cid item=con from=$results}
    &lt;a href="contact.php?contact_id={$cid}"&gt;{$con.name} - {$con.nick}&lt;/a&gt;&lt;br /&gt;
{foreachelse}
    No items were found in the search
{/foreach}

  </pre>
</div>
</div>
<br class="example-break"><div class="sect2" title=".index">
<div class="titlepage"><div><div><h3 class="title">
<a name="foreach.property.index"></a>.index</h3></div></div></div>
<p>
   <em class="parameter"><code>index</code></em> contains the current array index, starting with zero.
  </p>
<div class="example">
<a name="id2802323"></a><p class="title"><b>Example 7.10. <em class="parameter"><code>index</code></em> example</b></p>
<div class="example-contents"><pre class="programlisting">

{* The header block is output every five rows *}
&lt;table&gt;
{foreach from=$items key=myId item=i name=foo}
  {if $smarty.foreach.foo.index % 5 == 0}
     &lt;tr&gt;&lt;th&gt;Title&lt;/th&gt;&lt;/tr&gt;
  {/if}
  &lt;tr&gt;&lt;td&gt;{$i.label}&lt;/td&gt;&lt;/tr&gt;
{/foreach}
&lt;/table&gt;

  </pre></div>
</div>
<br class="example-break">
</div>
<div class="sect2" title=".iteration">
<div class="titlepage"><div><div><h3 class="title">
<a name="foreach.property.iteration"></a>.iteration</h3></div></div></div>
<p>
   <em class="parameter"><code>iteration</code></em> contains the current loop iteration and always
   starts at one, unlike <a class="link" href="language.function.foreach.tpl#foreach.property.index" title=".index"><em class="parameter"><code>index</code></em></a>.
   It is incremented by one on each iteration.
  </p>
<div class="example">
<a name="id2802382"></a><p class="title"><b>Example 7.11. <em class="parameter"><code>iteration</code></em> and <em class="parameter"><code>index</code></em> example</b></p>
<div class="example-contents"><pre class="programlisting">

{* this will output 0|1, 1|2, 2|3, ... etc *}
{foreach from=$myArray item=i name=foo}
{$smarty.foreach.foo.index}|{$smarty.foreach.foo.iteration},
{/foreach}

  </pre></div>
</div>
<br class="example-break">
</div>
<div class="sect2" title=".first">
<div class="titlepage"><div><div><h3 class="title">
<a name="foreach.property.first"></a>.first</h3></div></div></div>
<p>
   <em class="parameter"><code>first</code></em> is <code class="constant">TRUE</code> if the current <code class="varname">{foreach}</code>
   iteration is the initial one.
  </p>
<div class="example">
<a name="id2802440"></a><p class="title"><b>Example 7.12. <em class="parameter"><code>first</code></em> property example</b></p>
<div class="example-contents"><pre class="programlisting">

{* show LATEST on the first item, otherwise the id *}
&lt;table&gt;
{foreach from=$items key=myId item=i name=foo}
&lt;tr&gt;
  &lt;td&gt;{if $smarty.foreach.foo.first}LATEST{else}{$myId}{/if}&lt;/td&gt;
  &lt;td&gt;{$i.label}&lt;/td&gt;
&lt;/tr&gt;
{/foreach}
&lt;/table&gt;

  </pre></div>
</div>
<br class="example-break">
</div>
<div class="sect2" title=".last">
<div class="titlepage"><div><div><h3 class="title">
<a name="foreach.property.last"></a>.last</h3></div></div></div>
<p>
   <em class="parameter"><code>last</code></em> is set to <code class="constant">TRUE</code> if the current
   <code class="varname">{foreach}</code> iteration is the final one.
  </p>
<div class="example">
<a name="id2802494"></a><p class="title"><b>Example 7.13. <em class="parameter"><code>last</code></em> property example</b></p>
<div class="example-contents"><pre class="programlisting">

{* Add horizontal rule at end of list *}
{foreach from=$items key=part_id item=prod name=products}
  &lt;a href="#{$part_id}"&gt;{$prod}&lt;/a&gt;{if $smarty.foreach.products.last}&lt;hr&gt;{else},{/if}
{foreachelse}
  ... content ...
{/foreach}

  </pre></div>
</div>
<br class="example-break">
</div>
<div class="sect2" title=".show">
<div class="titlepage"><div><div><h3 class="title">
<a name="foreach.property.show"></a>.show</h3></div></div></div>
<p>
   <em class="parameter"><code>show</code></em> is used as a parameter to <code class="varname">{foreach}</code>.
   <em class="parameter"><code>show</code></em> is a boolean value. If
   <code class="constant">FALSE</code>, the <code class="varname">{foreach}</code> will not be displayed.
   If there is a <code class="varname">{foreachelse}</code> present, that will be alternately displayed.
  </p>
</div>
<div class="sect2" title=".total">
<div class="titlepage"><div><div><h3 class="title">
<a name="foreach.property.total"></a>.total</h3></div></div></div>
<p>
   <em class="parameter"><code>total</code></em> contains the number of iterations that this
   <code class="varname">{foreach}</code>  will loop.
   This can be used inside or after the <code class="varname">{foreach}</code>.
  </p>
<div class="example">
<a name="id2802592"></a><p class="title"><b>Example 7.14. <em class="parameter"><code>total</code></em> property example</b></p>
<div class="example-contents"><pre class="programlisting">

{* show rows returned at end *}
{foreach from=$items key=part_id item=prod name=foo}
{$prod.name}&lt;hr/&gt;
{if $smarty.foreach.foo.last}
  &lt;div id="total"&gt;{$smarty.foreach.foo.total} items&lt;/div&gt;
{/if}
{foreachelse}
 ... something else ...
{/foreach}

  </pre></div>
</div>
<br class="example-break"><p>
   See also <a class="link" href="language.function.section.tpl" title="{section},{sectionelse}"><code class="varname">{section}</code></a>
   and  <a class="link" href="language.variables.smarty.tpl#language.variables.smarty.loops" title="{$smarty.section}, {$smarty.foreach}"><em class="parameter"><code>$smarty.foreach</code></em></a>.
  </p>
</div>
</div>
<div class="navfooter">
<hr>
<table width="100%" summary="Navigation footer">
<tr>
<td width="40%" align="left">
<a accesskey="p" href="language.function.config.load.tpl">Prev</a> </td>
<td width="20%" align="center"><a accesskey="u" href="language.builtin.functions.tpl">Up</a></td>
<td width="40%" align="right"> <a accesskey="n" href="language.function.if.tpl">Next</a>
</td>
</tr>
<tr>
<td width="40%" align="left" valign="top">{config_load} </td>
<td width="20%" align="center"><a accesskey="h" href="index.tpl">Home</a></td>
<td width="40%" align="right" valign="top"> {if},{elseif},{else}</td>
</tr>
</table>
</div>

		
		  <div class="comments">
      
                  <div id="commentHeader"><strong>Comments</strong></div>
          <div class="commentInfo">
          
                      <div class="commentWrapperOdd">
              <div class="commentAuthor">by <b>RenÃ© Pardon</b> on Jan 23, 2012 at  3:54</div>
              <div class="commentBody"><strong>Example 7.9. Database example with {foreachelse}</strong>

<pre class="code">&lt;?php
  $search_condition = &quot;where name like '$foo%' &quot;;
  $sql = 'select contact_id, name, nick from contacts '.$search_condition.' order by name';
  $smarty-&gt;assign('results', $db-&gt;getAssoc($sql) );
?&gt;
</pre>

It is not secure to rely on the value of $foo, isn't it? I mean, why not using prepared statements or escaping? What happens if $foo contains sth. like: %'; SELECT * FROM ....

regards</div>
            </div>
                      <div class="commentWrapperEven">
              <div class="commentAuthor">by <b>bryan</b> on Oct 23, 2011 at 10:47</div>
              <div class="commentBody">for($i=0;$i&lt;mysql_num_rows($result_total);$i++)
{

                        $result=Unserialize(mysql_result($result_total,$i,'packageDetail'));


						echo &quot;&lt;tr&gt;&quot;  ;
echo &quot;&lt;td bgcolor='#eeeeee' &gt;&lt;div align='center'&gt;&lt;font color='#343434' face='Arial, Helvetica, sans-serif' size='2'&gt;&quot;;
echo &quot;&lt;a href='PackageList.php?item=true&amp;PackageName=&quot;.mysql_result($result_total, $i,&quot;packageId&quot;).&quot;'&gt;&quot;;
echo mysql_result($result_total, $i,&quot;packageName&quot;);
echo $result;
echo &quot;&lt;/a&gt;&lt;/font&gt;&lt;/div&gt;&lt;/td&gt;&lt;/tr&gt;&quot;;
}
}
</div>
            </div>
                              </div>
          <div id="commentFormWrapper">
            <div id="commentFormHeader"><strong>Post a Comment</strong></div>
            <div id="commentFormElements">
            <form id="commentForm" method="post" action="/comments/post">
              <div id="commentText" style="font-style: italic; color:#f00">All comments are moderated. Support questions are ignored, use the <a href="/forums/">forums</a> instead.</div>
              <div id="commentFormAuthor">Author: <input id="commentFormAuthorText" type="text" name="author" size="40" value="anonymous" style="color: grey" onFocus="clearDefaultandCSS(this)"></div>
              <div id="commentFormEmail">Email: <input id="commentFormEmailText" type="text" name="email" size="30" value="your@email.com" style="color: grey" onFocus="clearDefaultandCSS(this)"> <span style="font-style: italic">(not shown)</span></div>
              
              <div id="commentFormChallenge">What is 9 plus 6? <input id="commentFormChallengeText" type="text" name="challenge" size="30" value="" style="color: grey"> <span style="font-style: italic">(Are you human?)</span></div>
              <input id="commentFormChallengeObf" type="hidden" name="obf" value="cd2331f7946a72fd38cbb24b30c61e0c">
              <div id="commentFormBody"><textarea id="commentFormBodyText" name="body" rows="8" cols="60"></textarea></div>
              <div id="commentFormSubmitButtons">
                <input id="commentFormPostButton" type="submit" value="Post Comment">
                <input id="commentFormPreviewButton" type="submit" value="Preview">
                <img id="commentBusyIcon" src="/images/busy.gif">
              </div>
              <input id="commentFormPageID" type="hidden" name="page_id" value="docsv2/en/language.function.foreach.tpl">
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
    <p>This page generated in 0.01673 secs with <a href="http://www.tinymvc.com/">TinyMVC</a> and Smarty 3.</p>
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

