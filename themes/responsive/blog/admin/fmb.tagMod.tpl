            <div id="content" class="large-80 medium-75 small-100">
                <section class="column-group article">
                <article>
                    <header>
                    <h2 class="large-25 medium-50 small-75 push-center">Modifier un tag :</h2>
                    </header>
{if isset($fmbTagModErr) and $fmbTagModErr == t}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>Veuillez s&eacute;lectionner un tag.</p>
                </div>
{/if}
{if isset($fmbTagModOk)}
{if $fmbTagModOk == t}
                <div class="ink-alert basic info">
                    <button class="ink-dismiss">&times;</button>
                    <p>Tag modifi&eacute; avec succ&egrave;s.</p>
                </div>
{else}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>&Eacute;chec lors de la modification du tag.</p>
                </div>
{/if}
{/if}
                <form class="ink-form column-group" action='index.php?part=blog&amp;page=tag&amp;action=mod' method='post'>
                    <fieldset class="large-50 medium-75 small-95 push-center">
                        <div class="column-group">
                            <div class="control">
                                <select name="id" style="width:100%">
                                    <option></option>";
{foreach from=$fmbTags item=tag}
                                    <option value="{$tag.tag_id}">{$tag.tag_title|stripslashes} ({$tag.tag_desc|stripslashes})</option>
{/foreach}
                                </select>
                            </div>
                        </div>
                        <div class="vspace column-group">
                            <input type="submit" value="Modifier" class="ink-button blue push-right"/>
                        </div>
                        <input type="hidden" name="actionDB" value="modTag" />
                    </fieldset>
                </form>
                </article>
                </section>
            </div>
