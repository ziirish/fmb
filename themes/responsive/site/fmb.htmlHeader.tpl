<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
    <head>
        <title>{$fmbTitle} :: {$fmbPageTitle}</title>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <meta name="author" content="FMB">
        <meta property="og:title" content="FMB's site" />
        <meta property="og:type" content="site" />
        <meta property="og:site_name" content="FMB's home" />
        <meta name="HandheldFriendly" content="True">
        <meta name="MobileOptimized" content="320">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <!-- Template's style -->
        <link rel="icon" type="image/png" href="{$fmbTemplatesUrl}{$fmbStyle}/blog/images/favicon.ico" />

        <link rel="stylesheet" type="text/css" href="{$fmbTemplatesUrl}{$fmbStyle}/blog/css/ink/ink-min.css?v={$fmbVersion}" />
{if !$extYepNope}
	<link rel="stylesheet" type="text/css" href="{$fmbTemplatesUrl}{$fmbStyle}/blog/css/fa/css/font-awesome.min.css?v={$fmbVersion}" />
{/if}

        <!--[if lt IE 9]>
            <script type="text/javascript" src="{$fmbTemplatesUrl}{$fmbStyle}/blog/js/inc/html5shiv-printshiv.js"></script>
        <![endif]-->

        <!--[if lte IE 7 ]>
            <link rel="stylesheet" href="{$fmbTemplatesUrl}{$fmbStyle}/blog/css/ink/ink-ie7.css" type="text/css" media="screen" title="no title" charset="utf-8">
        <![endif]-->

{if !$extYepNope}
	<link rel="stylesheet" type="text/css" href="{$fmbTemplatesUrl}{$fmbStyle}/blog/css/custom.css?v={$fmbVersion}" />
{else}
{if file_exists($extCustomCssPath)}
        <style>
{include file="$extCustomCssPath"}
        </style>
{else}
	<link rel="stylesheet" type="text/css" href="{$fmbTemplatesUrl}{$fmbStyle}/blog/css/custom.css?v={$fmbVersion}" />
{/if}
        <script type="text/javascript">
{include file="$extYepNopePath"}
        </script>
{/if}

        <!-- End of Template's style -->

        <!-- Javascript -->
{if !$extYepNope}
	<script type="text/javascript" src="{$fmbTemplatesUrl}{$fmbStyle}/blog/js/ink/ink.min.js?v={$fmbVersion}"></script>
	<script type="text/javascript" src="{$fmbTemplatesUrl}{$fmbStyle}/blog/js/ink/ink-ui.min.js?v={$fmbVersion}"></script>
	<script type="text/javascript" src="{$fmbTemplatesUrl}{$fmbStyle}/blog/js/ink/autoload.js?v={$fmbVersion}"></script>
	<script>
	function include_css(css_file) {
	    var html_doc = document.getElementsByTagName('head')[0];
	    var css = document.createElement('link');
	    css.setAttribute('rel', 'stylesheet');
	    css.setAttribute('type', 'text/css');
	    css.setAttribute('href', css_file+'?v={$fmbVersion}');
	    html_doc.appendChild(css);
	}

	function include_js(file) {
	    var html_doc = document.getElementsByTagName('head')[0];
	    var js = document.createElement('script');
	    js.setAttribute('type', 'text/javascript');
	    js.setAttribute('src', file+'?v={$fmbVersion}');
	    html_doc.appendChild(js);
	}

	function addLoadEvent(func) {
	    var oldonload = window.onload;
  	    if (typeof window.onload != 'function') {
	        window.onload = func;
	    } else {
	        window.onload = function() {
	      	    if (oldonload) {
	                oldonload();
	      	    }
	            func();
	        }
	    }
	}

	</script>
{else}
{* $extYepNope *}
        <script type="text/javascript">
	    yepnope([
                {
                    load: 'css!{$fmbTemplatesUrl}{$fmbStyle}/blog/css/fa/css/font-awesome.min.css'
                },
                {
                    load: '{$fmbTemplatesUrl}{$fmbStyle}/blog/js/ink/ink.min.js?v={$fmbVersion}'
                },
                {
                    load: '{$fmbTemplatesUrl}{$fmbStyle}/blog/js/ink/ink-ui.min.js?v={$fmbVersion}'
                },
                {
                    load: '{$fmbTemplatesUrl}{$fmbStyle}/blog/js/ink/autoload.js?v={$fmbVersion}'
                }]);
        </script>
{/if}
        <!-- End of Javascript -->

{if isset($fmbRedirect)}
        <meta http-equiv="Refresh" content="2;URL={$fmbRedirect}" />
{/if}
        <!-- Plugins js and styles -->
{if $fmbIsAdmin && $fmbAdminPage}
{if isset($extHTMLHeaderAdmin)}
{foreach from=$extHTMLHeaderAdmin item=ext}
{$ext}
{/foreach}
{/if}
{/if}
{if isset($extHTMLHeader)}
{foreach from=$extHTMLHeader item=ext}
{$ext}
{/foreach}
{/if}
        <!-- End of Plugins js and styles -->
    </head>
    <body>
