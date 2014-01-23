            <div id="content" class="large-80 medium-75 small-100">
{if isset($fmbDisplaySearch) and $fmbDisplaySearch == t}
                <section class="research">
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
                <div>
                <h2 class="large-25 medium-50 small-75 push-center">No post</h2>
                <p>Sorry, no post found.</p>
                <p>Reason : {$fmbNoPostCause}</p>
                </div>
            </div>
