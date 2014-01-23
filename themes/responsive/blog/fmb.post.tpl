{if isset($fmbPost.nb_comments) and $fmbPost.nb_comments > 0}
{if isset($fmbPost.nb_comments) and $fmbPost.nb_comments == 1}
{assign var="nbComments" value="1 comment"}
{else}
{assign var="nbComments" value=$fmbPost.nb_comments|cat:" comments"}
{/if}
{else}
{assign var="nbComments" value="No comment"}
{/if}
                <article>
                    <header class="column-group">
                    <div class="large-5 medium-5 small-5">&nbsp;</div>
                    <div class="post-title large-80 medium-80 small-75 push-left">
                        <div class="large-100 medium-100 small-100">
{if isset($extNiceURL) and $extNiceURL == t}
                        <h2>
                            <a href="post-{$fmbPost.post_id}-{$fmbPost.post_title|niceurl}.html">{$fmbPost.post_title|htmlspecialchars}</a>
                        </h2>
{else}
                        <h2>
                            <a href="index.php?page=post&amp;id={$fmbPost.post_id}">{$fmbPost.post_title|htmlspecialchars}</a>
                        </h2>
{/if}
                        </div>
                        <div class="post-infos hide-small">
{if isset($fmbDisplayMore) and $fmbDisplayMore == t}
                            <div class="large-33 medium-50 small-100">
{if isset($extNiceURL) and $extNiceURL == t}
                            <i class="fa fa-user fa-fw"></i>&nbsp;<a href="member-{$fmbPost.post_mem}-{$fmbPost.mem_login|niceurl}.html">{$fmbPost.mem_login|htmlspecialchars}</a>
{else}
                            <i class="fa fa-user fa-fw"></i>&nbsp;<a href="member.php?id={$fmbPost.post_mem}">{$fmbPost.mem_login|htmlspecialchars}</a>
{/if}
                            </div>
{/if}
                            <div class="large-33 medium-50 small-100">
{if isset($extNiceURL) and $extNiceURL == t}
                            <i class="fa fa-sitemap fa-fw"></i>&nbsp;<a href="cat-{$fmbPost.post_cat}-{$fmbPost.cat_title|niceurl}.html">{$fmbPost.cat_title|htmlspecialchars}</a>
{else}
                            <i class="fa fa-sitemap fa-fw"></i>&nbsp;<a href="index.php?page=posts&amp;cat={$fmbPost.post_cat}">{$fmbPost.cat_title|htmlspecialchars}</a>
{/if}
                            </div>
{if !isset($fmbDisplayMore)}
                            <div class="comments large-33 medium-50 small-100">
{if isset($extNiceURL) and $extNiceURL == t}
                                <i class="fa fa-comments fa-fw"></i>&nbsp;<a class="scrollableLink" href="post-{$fmbPost.post_id}-{$fmbPost.post_title|niceurl}.html#comments">{$nbComments}</a>
{else}
                                <i class="fa fa-comments fa-fw"></i>&nbsp;<a class="scrollableLink" href="index.php?page=post&amp;id={$fmbPost.post_id}#comments">{$nbComments}</a>
{/if}
                            </div>
{/if}
{if $fmbPost.post_closed == f and isset($fmbDisplayMore) and $fmbDisplayMore == t}
                            <div class="add-comment large-33 medium-50 small-100">
{if isset($extNiceURL) and $extNiceURL == t}
                                <i class="fa fa-comments fa-fw"></i>&nbsp;<a class="scrollableLink" href="post-{$fmbPost.post_id}-{$fmbPost.post_title|niceurl}.html#comment-form">
{else}
                                <i class="fa fa-comments fa-fw"></i>&nbsp;<a class="scrollableLink" href="index.php?page=post&amp;id={$fmbPost.post_id}#comment-form">
{/if}
                                    Add a comment
                                </a>
                            </div>
{/if}
{if count($fmbPostTags) > 0}
                            <div class="tags large-100 medium-100 small-100">
                                <i class="fa fa-tags fa-fw"></i>
{counter name=cCompt start=0 skip=1 assign=iCnt}
{foreach from=$fmbPostTags item=tag}
{counter name=cCompt}
{if isset($extNiceURL) and $extNiceURL == t}
                                <a href="tag-{$tag.tag_id}-{$tag.tag_title|niceurl}.html" title="{$tag.tag_desc|htmlspecialchars}">{$tag.tag_title|htmlspecialchars}</a>
{else}
                                <a href="index.php?page=posts&amp;tag={$tag.tag_id}" title="{$tag.tag_desc|htmlspecialchars}">{$tag.tag_title|htmlspecialchars}</a>
{/if}
{if $iCnt != count($fmbPostTags)}
,&nbsp;
{/if}
{/foreach}
                            </div>
{/if}
                        </div>
                    </div>
                    <div class="post-date large-10 medium-10 hide-small">
                        <span class="month">{$fmbPost.post_time|date_format:"%b"|utf8_encode}</span>
                        <span class="day">{$fmbPost.post_time|date_format:"%d"}</span>
                        <span class="year">{$fmbPost.post_time|date_format:"%Y"}</span>
                    </div>
                    <div class="large-5 medium-5 small-5">&nbsp;</div>
                    </header>
                    <div class="post-entry">
{$fmbPost.post_body}
{if isset($extPostBody)}
{foreach from=$extPostBody item=ext}
{$ext}
{/foreach}
{/if}
                        <div class="post-infos hide-large">
{if isset($fmbDisplayMore) and $fmbDisplayMore == t}
                            <div class="large-33 medium-50 small-100">
{if isset($extNiceURL) and $extNiceURL == t}
                            <i class="fa fa-user fa-fw"></i>&nbsp;<a href="member-{$fmbPost.post_mem}-{$fmbPost.mem_login|niceurl}.html">{$fmbPost.mem_login|htmlspecialchars}</a>
{else}
                            <i class="fa fa-user fa-fw"></i>&nbsp;<a href="member.php?id={$fmbPost.post_mem}">{$fmbPost.mem_login|htmlspecialchars}</a>
{/if}
                            </div>
{/if}
                            <div class="large-33 medium-50 small-100">
{if isset($extNiceURL) and $extNiceURL == t}
                            <i class="fa fa-sitemap fa-fw"></i>&nbsp;<a href="cat-{$fmbPost.post_cat}-{$fmbPost.cat_title|niceurl}.html">{$fmbPost.cat_title|htmlspecialchars}</a>
{else}
                            <i class="fa fa-sitemap fa-fw"></i>&nbsp;<a href="index.php?page=posts&amp;cat={$fmbPost.post_cat}">{$fmbPost.cat_title|htmlspecialchars}</a>
{/if}
                            </div>
{if !isset($fmbDisplayMore)}
                            <div class="comments large-33 medium-50 small-100">
{if isset($extNiceURL) and $extNiceURL == t}
                                <i class="fa fa-comments fa-fw"></i>&nbsp;<a class="scrollableLink" href="post-{$fmbPost.post_id}-{$fmbPost.post_title|niceurl}.html#comments">{$nbComments}</a>
{else}
                                <i class="fa fa-comments fa-fw"></i>&nbsp;<a class="scrollableLink" href="index.php?page=post&amp;id={$fmbPost.post_id}#comments">{$nbComments}</a>
{/if}
                            </div>
{/if}
{if $fmbPost.post_closed == f and isset($fmbDisplayMore) and $fmbDisplayMore == t}
                            <div class="add-comment large-33 medium-50 small-100">
{if isset($extNiceURL) and $extNiceURL == t}
                                <i class="fa fa-comments fa-fw"></i>&nbsp;<a class="scrollableLink" href="post-{$fmbPost.post_id}-{$fmbPost.post_title|niceurl}.html#comment-form">
{else}
                                <i class="fa fa-comments fa-fw"></i>&nbsp;<a class="scrollableLink" href="index.php?page=post&amp;id={$fmbPost.post_id}#comment-form">
{/if}
                                    Add a comment
                                </a>
                            </div>
{/if}
{if count($fmbPostTags) > 0}
                            <div class="tags large-100 medium-100 small-100">
                                <i class="fa fa-tags fa-fw"></i>
{counter name=cCompt start=0 skip=1 assign=iCnt}
{foreach from=$fmbPostTags item=tag}
{counter name=cCompt}
{if isset($extNiceURL) and $extNiceURL == t}
                                <a href="tag-{$tag.tag_id}-{$tag.tag_title|niceurl}.html" title="{$tag.tag_desc|htmlspecialchars}">{$tag.tag_title|htmlspecialchars}</a>
{else}
                                <a href="index.php?page=posts&amp;tag={$tag.tag_id}" title="{$tag.tag_desc|htmlspecialchars}">{$tag.tag_title|htmlspecialchars}</a>
{/if}
{if $iCnt != count($fmbPostTags)}
,&nbsp;
{/if}
{/foreach}
                            </div>
{/if}
                            <div class="date-small large-100 medium-100 small-100">
                                <i class="fa fa-calendar fa-fw"></i> {$fmbPost.post_time|date_format:"%d %B %Y"}
                            </div>
                        </div>
                    </div>
{if !isset($fmbDisplayMore)}
                <div class="btn-right">
                    <p>
{if isset($extNiceURL) and $extNiceURL == t}
                    <a class="ink-button green" href="post-{$fmbPost.post_id}-{$fmbPost.post_title|niceurl}.html">
{else}
                    <a class="ink-button green" href="index.php?page=post&amp;id={$fmbPost.post_id}">
{/if}
                        <i class="fa fa-toggle-right fa-fw"></i>Read post ...
                    </a>
                    </p>
                </div>
{/if}
                </article>
