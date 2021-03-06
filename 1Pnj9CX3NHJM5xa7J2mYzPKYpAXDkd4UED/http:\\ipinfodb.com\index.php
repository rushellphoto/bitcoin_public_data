http://ipinfodb.com/index.php
HTTP/1.1 200 OK
Server: nginx
Date: Tue, 22 Jul 2014 21:14:55 GMT
Content-Type: text/html
Connection: close
Set-Cookie: PHPSESSID=k11i5tbb1cf9i32l5qj2in7g43; path=/
Expires: Thu, 19 Nov 1981 08:52:00 GMT
Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0
Pragma: no-cache

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html itemscope itemtype="http://schema.org/Product">
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
  <meta name="description" content="Free Geolocation tools for IP Location, API, database and fraud detection tools."/>
  <meta name="keywords" content="IP Location, API, Fraud Detection, Geolocation, Geo Location, IP Country, IP Address" />
  <meta name="author" content="Marc-Andre Caron" />
  <link rel="stylesheet" type="text/css" href="/css/style.css" media="screen" />
  <meta itemprop="name" content="IPInfoDB | Free IP Address Geolocation Tools">
  <meta itemprop="description" content="Free Geolocation tools for IP Location, API, database and fraud detection tools">
  <meta itemprop="image" content="/img/sitelogo.gif">

  <style>
  label#form{float:left;margin-top:1px;width:100px;font-weight: bold;cursor:pointer;}

  #social_btn li
	{
	display: inline;
	float: right;
	list-style-type: none;
	padding-right: 10px;
	}

  </style>
  <title>IPInfoDB | Free IP Address Geolocation Tools</title>
  <link rel="alternate" type="application/rss+xml" title="IPInfoDB RSS" href="http://ipinfodb.com/rss.xml" />
  <script language="JavaScript" src="http://code.google.com/apis/gears/gears_init.js"></script>
  <script language="JavaScript" src="http://ajax.googleapis.com/ajax/libs/prototype/1.6.1.0/prototype.js"></script>
  <script language="JavaScript" src="http://ajax.googleapis.com/ajax/libs/scriptaculous/1.8.3/scriptaculous.js"></script>

<script type="text/javascript">
function getLocation(){
	try{
		var geo = google.gears.factory.create('beta.geolocation');
		geo.getCurrentPosition(successCallback, errorCallback);
	}
	catch(e){
		try{
			navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
		}
		catch(e){
			errorCallback({code:2,message:e.message});
		}
	}
}

function errorCallback(err){}

function successCallback(r){
	new Ajax.Request('/geo5.php?lat=' + r.coords.latitude + '&lon=' + r.coords.longitude,{
		method:'get',
		onSuccess: function(transport){},
		onFailure: function(){ alert('Failed to report location.') }
	});
}

Event.observe(window, 'load',
	function(){
		getLocation();
	}
);</script>
</head>

<body id="top">
  <div id="layout_wrapper_outer">
  <div id="layout_wrapper">

    <div id="layout_top">

      <div id="site_title">

      	<table width="100%">
      		<tr>
      			<td width="40%">
      				<a href="index.php"><img src="/img/sitelogo.gif" alt="logo"/></a>
      			</td>
      			<td style="margin-bottom:0;" align="right">
				<div style="width:250px;height:73px;background:url(/img/socialbtn.jpg);">
				<ul id="social_btn" style="padding-top:44px;">
					<li>
						<div id="fb-root" ></div>
						<script>(function(d, s, id) {
						  var js, fjs = d.getElementsByTagName(s)[0];
						  if (d.getElementById(id)) return;
						  js = d.createElement(s); js.id = id;
						  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
						  fjs.parentNode.insertBefore(js, fjs);
						}(document, 'script', 'facebook-jssdk'));</script>
						<div class="fb-like" data-href="http://www.facebook.com/IPGeolocation" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false"></div>
					</li>
					<li>
						<a href="http://twitter.com/share" data-url="http://www.ipinfodb.com" data-counturl="http://www.ipinfodb.com" data-text="IPInfoDB | Free IP Address Geolocation Tools" class="twitter-share-button" data-count="none" data-via=""></a>
						<script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
					</li>
					<li>
						<!-- Place this tag where you want the +1 button to render -->
						<g:plusone size="medium" annotation="none" href="http://www.ipinfodb.com"></g:plusone>

						<!-- Place this render call where appropriate -->
						<script type="text/javascript">
						  (function() {
							var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
							po.src = 'https://apis.google.com/js/plusone.js';
							var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
						  })();
						</script>
					</li>
					<li>
						<!-- Place this tag where you want the su badge to render -->
						<su:badge layout="4"></su:badge>

						<!-- Place this snippet wherever appropriate -->
						 <script type="text/javascript">
						 (function() {
							 var li = document.createElement('script'); li.type = 'text/javascript'; li.async = true;
							  li.src = 'https://platform.stumbleupon.com/1/widgets.js';
							  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(li, s);
						 })();
						 </script>
					</li>
				</ul>
				</div>
				<div style="clear:both;"></div>
      			</td>
      		</tr>
      	</table>

       <!-- <h5>Free IP address geolocation tools</h5> -->
      </div>

    </div>

    <div id="layout_body_outer">
    <div id="layout_body">

      <div id="navigation">

        <div id="nav1">

          <ul>
            <li class="current_page_item"><a href="index.php">IP Location</a></li>
            <li><a href="ip_location_api.php">IP Location API</a></li>
            <li><a href="ip_country_block.php">Block IP by Country</a></li>
            <li><a href="ip_database.php">IP Database</a></li>
            <li><a href="fraud_detection.php">Fraud Detection</a></li>
            <li><a href="account.php">Account</a></li>
                      </ul>

        <div class="clearer">&nbsp;</div>

        </div>

        <div id="nav2">

          <ul>
            <li class="current_page_item"><a href="index.php">Home</a></li>
            <li><a href="my_ip_location.php">My IP location</a></li>
            <li><a href="ip_locator.php">IP locator</a></li>
          </ul>

          <div class="clearer">&nbsp;</div>

        </div>

      </div>

      <div id="main">

        <div class="left" id="content_outer">

          <div id="content">

            <div class="post">

              <div class="post_body">

                <div class="section">
                  <h5>Welcome to IPInfoDB</h5>

				  <div style="border:1px solid #CC0000;padding:4px 4px 4px 4px;">
					<p><strong>Please Donate & Pledge Your Bitcoins To Our Project Today.</strong></p>
					<div style="width:420px; float:left;">
						<p>
							The IPInfoDB.com has a goal of providing high-quality geolocation service to all users for free. For your information, our servers are currently running in almost full capacity. Thousands of new users sign-up every month since 2010.
						</p>
						<p>
							We are improving the performance of web service by increasing the number of servers. Please consider making a donation to help fund the costs.
						</p>
						<p>
							If you would like to donate, we are accepting donation via BitCoin address <span style="font-family:courier; font-weight:bold;">1Pnj9CX3NHJM5xa7J2mYzPKYpAXDkd4UED</span>
						</p>
					</div>
					<div style="width:160px; float:right;">
						<a href="bitcoin:1Pnj9CX3NHJM5xa7J2mYzPKYpAXDkd4UED?label=IPInfoDB%20Donation"><img src="img/bitcoin.png" /></a>
					</div>
					<div style="clear:both;"></div>
				  </div>
					<br />
				  <div style="border:1px solid #CC0000;padding:4px 4px 4px 4px;">
					  <p>
						<b>Do you need multi-location IP addresses to test your apps?</b><br /><br />
						LocaProxy provides multi-location HTTP proxies to help businesses test geolocation applications.
						This solution reduces the total cost of testing by supplying the Distributed Infrastructure as a Service.<br/>
						Please visit <a href="http://www.locaproxy.com" target="_blank">LocaProxy.com</a> for more information.
					  </p>
				  </div>

                  <p>
                    We offer a wide range of <strong>free</strong> services based on our IP address geolocation database :
                  </p>

                  <ul>
                    <li>Web based IP geolocation lookup</li>
                    <li>IP geolocation API (XML, JSON and CSV format)</li>
                    <li>API that generate IP CIDR by country for iptables or htaccess blocklist</li>
                    <li>E-commerce fraud detection API</li>
                    <li>IP database updated monthly!</li>
					<li>Support IPv6 Location API! <span style="color:#f00;"><sup>NEW</sup></span></li>
                  </ul>
                </div>

                <div class="section">
                  <h5>Lookup an IP address or domain name</h5>
                  <form action="ip_locator.php" enctype="multipart/form-data" name="search_form" id="search_form" method="post">
                    <input type="text" value="" id="query" name="ip" /><input type="submit" value="GO" />
                  </form>
				  <br>
				  <span style="font-size:18px;color:#ff0000;">Information is provided by <a href="http://www.ip2location.com/?rid=1094" target="_blank">IP2Location</a> Commercial version. Our free API is using IP2Location Lite version which provides lower accuracy.</span>
                </div>

                <div class="section">
                  <h5>Your IP address information</h5>
                  <ul>
                    <li>IP address : <strong>54.197.147.90</strong></li>
                    <li>Country : UNITED STATES <img src="/img/flags/us.gif"/></li>
                    <li>State/Province : VIRGINIA</li>

                    <li>City : ASHBURN</li>

                    <li>Zip or postal code : 20146</li>
                    <li>Latitude : 39.04372</li>
                    <li>Longitude : -77.48749</li>
					<li>Weather : <a href="http://www.weatherdatasource.com/39.04372/-77.48749" target="_blank">View Weather</a></li>
                    <li>Timezone : -04:00</li>
                    <li>Local time : July 22 17:14:55</li>
                    <li>Hostname : ec2-54-197-147-90.compute-1.amazonaws.com</li>
                  </ul>
				  Inaccurate result? Click <a href="report.php?ip=54.197.147.90">here</a> to report and we will fix it on next release.
                </div>

				<div style="margin:10px 0;">
					<span style="display:block; margin:5px 0">Try out our free IP2Location App</span>
					<a href="http://play.google.com/store/apps/details?id=com.ip2location.mobile" target="_blank"><img alt="ip2location android app" src="img/google_play.png" /></a>
					<a href="http://itunes.apple.com/us/app/ip2location-geolocation/id771597553?ls=1&mt=8" target="_blank"><img alt="ip2location apple app" src="img/apple_store.png" /></a>
					<a href="http://windowsphone.com/s?appid=c05c1c55-2057-4f15-ab1f-e3f56179adb0" target="_blank"><img alt="ip2location windows phone app" src="img/windows_store.png" /></a>
				</div>

				<div class="section" style="border-top:1px solid #666;">
					<p style="margin:0px; padding:5px 0 0 0;">Do you need a solution to display world major cities? Find out more at <a href="http://www.geodatasource.com" target="_blank">GeoDataSource.com</a></p>
					<p style="margin:0px; padding:5px 0 0 0;">Find out more information about geolocation at <a href="http://www.geolocation.com" target="_blank">Geolocation.com</a></p>
				</div>
				
              </div>
          
            </div>
          
          </div>
      
        </div>

        <div class="right" id="sidebar_outer">

          <div id="sidebar"> 
          	           	
            <div class="box">
            	
              <div class="box_content" align="center">
					<param name="allowScriptAccess" value="sameDomain" />
					<param name="movie" value="img/adds/ip2location/ip2location.swf" /><param name="quality" value="high" />
					<param name="bgcolor" value="#ffffff" /><embed src="img/adds/ip2location/ip2location.swf" quality="high" bgcolor="#ffffff" width="200" height="600" name="flash" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
					
					<div style="padding-top:10px;">
						<iframe src="http://tools.ip2location.com/ib2" width="204" height="162" marginwidth="1" scrolling="no" frameborder="0"></iframe>
					</div>            

					<div style="padding-top:10px;">
						<iframe src="ads.php" style="height: 200px; width: 200px; margin: 0px; padding: 0px;" scrolling="no" frameborder="0"></iframe>
					</div> 

										
				</div>

			 </div>

          </div>

        </div>

        <div class="clearer">&nbsp;</div>

      </div>

    </div>
    </div>

    <div id="footer">

      <div class="left">
        &copy; 2014 www.ipinfodb.com
      </div>

      <div class="right">
        <a href="mailto:support@ipinfodb.com">support@ipinfodb.com</a>
      </div>


    </div>
   <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-11026515-16']);
  _gaq.push(['_setDomainName', '.ipinfodb.com']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
  </div>
  </div>
<a href="/important-notice.php" style="display:none;"> </a>
</body>
</html>

