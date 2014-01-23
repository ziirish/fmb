            <div class="large-20 medium-25 small-100 push-right">
                <nav id="sidebar" class="ink-navigation sticky" data-offset-bottom="350px" data-offset-top="70px">
				<form class="ink-form" method="get" action="index.php">
                <ul class="menu vertical rounded black">
                    <li>
                        <a class="toggle" data-target="#menu-nav" href="#" onclick="return false;"><i class="fa fa-globe fa-fw"></i>Navigation</a>
                        <ul class="hide-all" id="menu-nav">
                            <li><a href="{$fmbBlogUrl}">Index</a></li>
{if isset($extNiceURL) and $extNiceURL == t}
                            <li><a href="archives.html">Archives</a></li>
{else}
                            <li><a href="index.php?page=archives">Archives</a></li>
{/if}
                            <li class="disabled">&nbsp;</li>
{if $fmbIsLogged}
{if isset($extNiceURL) and $extNiceURL == t}
                            <li><a href="logout">Logout</a></li>
                            <li><a href="unsubscribe">Unsubscribe</a></li>
{else}
                            <li><a href="login.php?action=logout&amp;from=blog">Logout</a></li>
                            <li><a href="subscribe.php?action=unsubscribe&amp;from=blog">Unsubscribe</a></li>
{/if}
{else}
{if isset($extNiceURL) and $extNiceURL == t}
                            <li><a href="login">Login</a></li>
                            <li><a href="subscribe">Subscribe</a></li>
{else}
                            <li><a href="login.php?from=blog">Login</a></li>
                            <li><a href="subscribe.php?from=blog">Subscribe</a></li>
{/if}
{/if}
{if $fmbIsAdmin}
                            <li class="disabled">&nbsp;</li>
                            <li><a href="admin/index.php">Administration</a></li>
{/if}
                        </ul>
                    </li>
                    <li>
                        <a class="toggle" data-target="#menu-cat" href="#" onclick="return false;"><i class="fa fa-sitemap fa-fw"></i>Categories</a>
                        <ul class="hide-all" id="menu-cat">
{foreach from=$fmbBlogCategories item=category}
{if isset($extNiceURL) and $extNiceURL == t}
                            <li><a href="cat-{$category.cat_id}-{$category.cat_title|niceurl}.html" title="{$category.cat_desc}">{$category.cat_title}</a></li>
{else}
                            <li><a href="index.php?page=posts&amp;cat={$category.cat_id}" title="{$category.cat_desc}">{$category.cat_title}</a></li>
{/if}
{/foreach}
                        </ul>
                    </li>
                    <li>
                        <a class="toggle" data-target="#search" href="#" onclick="return false;"><i class="fa fa-search fa-fw"></i>Search</a>
                        <ul class="hide-all" id="search">
                        <li>
                            <input type="hidden" name="page" value="posts"/>
                            <div class="control-group">
                                    <div class="control append-button">
                                        <span><input type="text" name="q"></span>
                                        <button class="ink-button"><i class="icon-search"></i></button>
                                    </div>
                            </div>
                        </li>
                        </ul>
                    </li>
{if isset($extMenu)}
{foreach from=$extMenu item=ext}
{$ext}
{/foreach}
{/if}
                    <li>
                        <a class="toggle" data-target="#validation" href="#" onclick="return false;"><i class="fa fa-thumbs-o-up fa-fw"></i>Validations</a>
                        <ul class="hide-all" id="validation">
                            <li><a href="http://validator.w3.org/check?uri=referer"><img src="{$fmbTemplatesUrl}{$fmbStyle}/blog/images/xhtml.png" alt="Valid XHTML 1.0 Strict." height="31" width="88"/></a></li>
                            <li><a href='http://ipv6-test.com/validate.php?url=referer'><img src='{$fmbTemplatesUrl}{$fmbStyle}/blog/images/button-ipv6-small.png' alt='ipv6 ready' title='ipv6 ready' height="31" width="88" /></a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="toggle" data-target="#license" href="#" onclick="return false;"><i class="fa fa-file-text fa-fw"></i>License</a>
                        <ul class="hide-all" id="license">
                            <li><a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/"><img alt="Creative Commons License" src="{$fmbTemplatesUrl}{$fmbStyle}/blog/images/cc-by-nc-sa-big.png" /></a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="toggle" data-target="#feed" href="#" onclick="return false;"><i class="fa fa-rss fa-fw"></i>Feeds</a>
                        <ul class="hide-all" id="feed">
                            <li><a href="feed.xml">Billets</a></li>
                            <li><a href="feed.xml?type=comments">Commentaires</a></li>
                            <li><a href="/bm/?do=rss">Liens</a></li>
                        </ul>
                    </li>
                </ul>
				</form>
                </nav>
            </div>

