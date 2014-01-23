{if isset($fmbPageNum) and $fmbPageNum != 0}
{assign var="lastPage" value=$fmbPageNum-1}
{assign var="nextPage" value=$fmbPageNum+1}
{else}
{assign var="lastPage" value=-1}
{assign var="nextPage" value=1}
{/if}
            <div id="content" class="large-80 medium-75 small-100">
{if isset($fmbDisplaySearch) and $fmbDisplaySearch == t}
                <section class="column-group research">
                <article>
                    <header>
                    <h2 class="large-25 medium-50 small-75 push-center">Search</h2>
                    </header>
                    <form method="get" action="index.php" class="ink-form column-group">
                        <fieldset class="large-33 medium-50 small-75 push-center">
                        <div class="control-group">
                        <div class="column-group gutters">
                        <div class="control append-button">
                            <span><input type="text" name="q" value="{$fmbSearch}" placeholder="What are you searching for?"/></span>
                            <button class="ink-button"><i class="icon-search"></i> Search</button>
                        </div>
                        </div>
                        </div>
                        <input type="hidden" name="page" value="posts"/>
                        <p>
{if isset($fmbSearchResultsCnt)}
{if $fmbSearchResultsCnt > 0}
{if $fmbSearchResultsCnt == 1}
                            1 result.
{else}
                            {$fmbSearchResultsCnt} results.
{/if}
{else}
                            No result.
{/if}
{/if}
                        </p>
                        </fieldset>
                    </form>
                </article>
                </section>
{/if}
{foreach from=$fmbPosts item=post}
            <section class="column-group article">
{$post.contents}
            </section>
{/foreach}
{if isset($fmbComments) and $fmbComments != ""}
{$fmbComments}
{/if}
{if isset($fmbCommentForm) and $fmbCommentForm != ""}
{$fmbCommentForm}
{/if}
                <br />
                <div class="btn-right">
                    <p>
                        <a class="scrollableLink ink-button green" href="#main" title="Top of page">
                            <i class="fa fa-level-up fa-fw"></i>Top of page
                        </a>
                    </p>
                </div>
                <br />
{if isset($fmbPageNum)}
                <div class="vspace">
                <nav class="ink-navigation large-80 medium-90 small-95 push-center">
                    <ul class="pagination rounded shadowed black">
{if !isset($fmbFirstPage) or $fmbFirstPage != t}
                        <li class="previous">
                    <a href="page-{$lastPage}.html" title="Newer posts">
{else}
                        <li class="previous disabled">
                    <a class="scrollableLink" href="#" title="Newer posts">
{/if}
                        <i class="fa fa-angle-double-left fa-fw"></i>Newer posts
                    </a>
                        </li>
{if $fmbNbPages > 10}
{if $fmbPageNum+2 >= $fmbNbPages or $fmbPageNum-2 > 1}
                        <li><a href="page-1.html">1</a></li>
{if $fmbPageNum-2 > 2}
                        <li class="disabled"><a class="scrollableLink" href="#">...</a></li>
{/if}
{/if}
{for $l=max(1,$fmbPageNum-2) to $fmbPageNum+2}
{if $l <= $fmbNbPages}
{if $l == $fmbPageNum}
                        <li class="active"><a href="#">{$l}</a></li>
{else}
                        <li><a href="page-{$l}.html">{$l}</a></li>
{/if}
{/if}
{/for}
{if $fmbPageNum+2 < $fmbNbPages}
{if $l <= $fmbNbPages-1}
                        <li class="disabled"><a class="scrollableLink" href="#">...</a></li>
{/if}
                        <li><a href="page-{$fmbNbPages}.html">{$fmbNbPages}</a></li>
{/if}
{else}
{for $l=1 to $fmbNbPages}
                        <li><a href="page-{$l}.html">{$l}</a></li>
{/for}
{/if}
{if !isset($fmbLastPage) or $fmbLastPage != t}
                        <li class="next">
                    <a href="page-{$nextPage}.html" title="Older posts">
{else}
                        <li class="next disabled">
                    <a class="scrollableLink" href="#" title="Older posts">
{/if}
                        Older posts<i class="fa fa-angle-double-right fa-fw"></i>
                    </a>
                        </li>
                    </ul>
                </nav>
                </div>
{/if}
            </div>
