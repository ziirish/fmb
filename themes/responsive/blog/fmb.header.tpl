        <div id="topbar">
            <nav class="ink-navigation ink-grid hide-small hide-medium ie7">
                <ul class="menu horizontal flat black shadowed">
                    <li>
                        <a class="logoPlaceholder" href="#" onclick="return false;"><i class="fa fa-home fa-fw"></i>Blog<i class="fa fa-caret-down fa-fw"></i></a>
                        <ul class="submenu">
                            <li><a href="{$fmbBlogUrl}">Index</a></li>
                            <li><a class="scrollableLink" href="#content">Content</a></li>
                            <li><a class="scrollableLink" href="#sidebar">Menu</a></li>
                            <li><a class="scrollableLink" href="#credits">Contact</a></li>
                        </ul>
                    </li>
{if isset($extNiceURL) and $extNiceURL == t}
                    <li><a href="{$fmbBlogUrl}archives.html"><i class="fa fa-archive fa-fw"></i>Archives</a></li>
{else}
                    <li><a href="{$fmbBlogUrl}index.php?page=archives">Archives</a></li>
{/if}
{if $fmbBlogCategories}
                    <li>
                        <a href="#" onclick="return false;"><i class="fa fa-sitemap fa-fw"></i>Categories<i class="fa fa-caret-down fa-fw"></i></a>
                        <ul class="submenu">
{foreach from=$fmbBlogCategories item=category}
{if isset($extNiceURL) and $extNiceURL == t}
                            <li><a href="{$fmbBlogUrl}cat-{$category.cat_id}-{$category.cat_title|niceurl}.html" title="{$category.cat_desc}">{$category.cat_title}</a></li>
{else}
                            <li><a href="{$fmbBlogUrl}index.php?page=posts&amp;cat={$category.cat_id}" title="{$category.cat_desc}">{$category.cat_title}</a></li>
{/if}
{/foreach}
                        </ul>
                    </li>
{/if}
                    <li>
                        <a href="#" onclick="return false;"><i class="fa fa-user fa-fw"></i>User<i class="fa fa-caret-down fa-fw"></i></a>
                        <ul class="submenu">
{if $fmbIsLogged}
{if isset($extNiceURL) and $extNiceURL == t}
                            <li><a href="{$fmbBlogUrl}logout">Logout</a></li>
                            <li><a href="{$fmbBlogUrl}unsubscribe">Unsubscribe</a></li>
{else}
                            <li><a href="{$fmbBlogUrl}login.php?action=logout&amp;from=blog">Logout</a></li>
                            <li><a href="{$fmbBlogUrl}subscribe.php?action=unsubscribe&amp;from=blog">Unsubscribe</a></li>
{/if}
{else}
{if isset($extNiceURL) and $extNiceURL == t}
                            <li><a href="{$fmbBlogUrl}login">Login</a></li>
                            <li><a href="{$fmbBlogUrl}subscribe">Subscribe</a></li>
{else}
                            <li><a href="{$fmbBlogUrl}login.php?from=blog">Login</a></li>
                            <li><a href="{$fmbBlogUrl}subscribe.php?from=blog">Subscribe</a></li>
{/if}
{/if}
                        </ul>
                    </li>
{if $fmbIsAdmin}
                    <li><a href="{$fmbBlogUrl}admin/index.php"><i class="fa fa-cogs fa-fw"></i>Administration</a></li>
{/if}
                </ul>
            </nav>
            <nav class="ink-navigation ink-grid hide-all show-medium show-small">
                <ul class="menu vertical flat black">
                    <li class="title">
                        <a class="logoPlaceholder push-left" href="{$fmbBlogUrl}"><i class="fa fa-home fa-fw"></i>Blog</a>
                        <button class="toggle" data-target="#topbar_menu"><span class="icon-reorder"></span></button>
                    </li>
                </ul>
                <ul class="menu vertical flat black hide-all" id="topbar_menu">
{if isset($extNiceURL) and $extNiceURL == t}
                    <li><a href="{$fmbBlogUrl}archives.html"><i class="fa fa-archive fa-fw"></i>Archives</a></li>
{else}
                    <li><a href="{$fmbBlogUrl}index.php?page=archives">Archives</a></li>
{/if}
                    <li class="">
                        <a class="toggle" data-target=".submenu-cat" href="#" onclick="return false;"><i class="fa fa-sitemap fa-fw"></i>Categories<i class="fa fa-caret-down fa-fw"></i></a>
                        <ul class="submenu-cat hide-all">
{foreach from=$fmbBlogCategories item=category}
{if isset($extNiceURL) and $extNiceURL == t}
                            <li><a href="{$fmbBlogUrl}cat-{$category.cat_id}-{$category.cat_title|niceurl}.html" title="{$category.cat_desc}">{$category.cat_title}</a></li>
{else}
                            <li><a href="{$fmbBlogUrl}index.php?page=posts&amp;cat={$category.cat_id}" title="{$category.cat_desc}">{$category.cat_title}</a></li>
{/if}
{/foreach}
                        </ul>
                    </li>
                    <li class="">
                        <a class="toggle" data-target=".submenu-user" href="#" onclick="return false;"><i class="fa fa-user fa-fw"></i>User<i class="fa fa-caret-down fa-fw"></i></a>
                        <ul class="submenu-user hide-all">
{if $fmbIsLogged}
{if isset($extNiceURL) and $extNiceURL == t}
                            <li><a href="{$fmbBlogUrl}logout">Logout</a></li>
                            <li><a href="{$fmbBlogUrl}unsubscribe">Unsubscribe</a></li>
{else}
                            <li><a href="{$fmbBlogUrl}login.php?action=logout&amp;from=blog">Logout</a></li>
                            <li><a href="{$fmbBlogUrl}subscribe.php?action=unsubscribe&amp;from=blog">Unsubscribe</a></li>
{/if}
{else}
{if isset($extNiceURL) and $extNiceURL == t}
                            <li><a href="{$fmbBlogUrl}login">Login</a></li>
                            <li><a href="{$fmbBlogUrl}subscribe">Subscribe</a></li>
{else}
                            <li><a href="{$fmbBlogUrl}login.php?from=blog">Login</a></li>
                            <li><a href="{$fmbBlogUrl}subscribe.php?from=blog">Subscribe</a></li>
{/if}
{/if}
                        </ul>
                    </li>
{if $fmbIsAdmin}
                    <li><a href="{$fmbBlogUrl}admin/index.php"><i class="fa fa-cogs fa-fw"></i>Administration</a></li>
{/if}
                </ul>
            </nav>
            <div class="border"></div>
        </div>
        <a class="scrolltop scrollableLink" href="#main"><span>up</span></a>
        <div class="ink-grid vspace">
            <div class="blog">
            <div id="main" class="column-group hide-small">
                <div id="logo">&nbsp;</div>
                <div id="text" class="large-50 medium-50 small-85 push-right">
                    <h1><a href="{$fmbSiteUrl}">{$fmbTitle}</a> :: {$fmbPageTitle}</h1>
                    <p>{$fmbSlogan}</p>
                </div>
            </div>
            <div class="hide-large vspace">&nbsp;</div>
            <div class="column-group">
