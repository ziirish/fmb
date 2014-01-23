            <div class="large-80 medium-75 small-100">
            <div id="content">
                <section class="column-group article">
                <article>
                    <header>
                    <h2 class="large-25 medium-50 small-75 push-center">Archives</h2>
                    </header>
                    <br/>
{foreach from=$fmbBlogArchives item=archive}
{assign var=loop value=true}
            {if !isset($year) or $year != $archive.year}
                        {if !isset($year) or $year == ""}
                                    {assign var=year value=$archive.year}
                                    {assign var=first value=0}
                    <ul class="ink-tree-view">
                        <li class="open"><span></span><a href="" onclick="return false;">{$year}</a>
                        <ul>
                        {else}
                                    {assign var=year value=$archive.year}
                                    {assign var=first value=0}
                        </ul>
                        </li>
                    </ul>
                    <ul class="ink-tree-view">
                        <li><span></span><a href="" onclick="return false;">{$year}</a>
                        <ul>
                        {/if}
            {/if}
            {if !isset($month) or $month != $archive.month}
{assign var=month value=$archive.month}
                        {if isset($extNiceURL) and $extNiceURL == t}
                            <li><a href="date-{$archive.year}-{$archive.month}.html">{$archive.post_time|date_format:"%B"|utf8_encode}</a></li>
                        {else}
                            <li><a href="index.php?page=posts&amp;y={$archive.year}&amp;m={$archive.month}">{$archive.post_time|date_format:"%B"|utf8_encode}</a></li>
                        {/if}
            {/if}

{/foreach}
{if $loop}
                        </ul>
                        </li>
                    </ul>
{/if}
                    <br/>
                    <div class="btn-right">
                        <p>
                            <a class="scrollableLink ink-button green" href="#main" title="Top of page">
                                <i class="fa fa-level-up fa-fw"></i>Top of page
                            </a>
                        </p>
                    </div>
                </article>
                </section>
            </div>
            </div>
