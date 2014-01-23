            <div id="content" class="large-80 medium-75 small-100">
                <section class="column-group article">
                <article>
                    <header>
                    <h2 class="large-25 medium-50 small-75 push-center">Supprimer un tag :</h2>
                    </header>
{if isset($fmbTagDelErr) and $fmbTagDelErr == t}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>Veuillez s&eacute;lectionner un tag.</p>
                </div>
{/if}
{if isset($fmbTagDelOk)}
{if $fmbTagDelOk == t}
                <div class="ink-alert basic info">
                    <button class="ink-dismiss">&times;</button>
                    <p>Tag supprim&eacute; avec succ&egrave;s.</p>
                </div>
{else}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>&Eacute;chec lors de la suppression du tag.</p>
                </div>
{/if}
{/if}
                <form class="ink-form column-group" action="index.php?part=blog&amp;page=tag&amp;action=del" method="post">
                    <fieldset class="large-50 medium-75 small-95 push-center">
                        <div class="column-group">
                            <div class="control">
                                <select name="id" style="width:100%">
                                    <option></option>
{foreach from=$fmbTags item=tag}
                                    <option value="{$tag.tag_id}">{$tag.tag_title|stripslashes} ({$tag.tag_desc|stripslashes})</option>
{/foreach}
                                </select>
                            </div>
                        </div>
                        <div class="column-group vspace">
                            <input type="submit" value="Supprimer" class="ink-button blue push-right"/>
                        </div>
                        <input type="hidden" name="actionDB" value="delTag" />
                    </fieldset>
                </form>
                </article>
                </section>
            </div>
