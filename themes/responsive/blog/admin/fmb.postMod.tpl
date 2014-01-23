            <div id="content" class="large-80 medium-75 small-100">
                <section class="column-group article">
                <article>
                    <header>
                    <h2 class="large-25 medium-50 small-75 push-center">Modifier un billet :</h2>
                    </header>
{if isset($fmbPostModErr) and $fmbPostModErr == t}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>Veuillez s&eacute;lectionner un billet.</p>
                </div>
{/if}
{if isset($fmbPostModOk)}
{if $fmbPostModOk == t}
                <div class="ink-alert basic success">
                    <button class="ink-dismiss">&times;</button>
                    <p>Billet modifi&eacute; avec succ&egrave;.</p>
                </div>
{else}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>&Eacute;chec lors de la modification du billet.</p>
                </div>
{/if}
{/if}
                <form class="ink-form column-group" action="index.php?part=blog&amp;page=post&amp;action=mod" method="post">
                    <fieldset class="large-50 medium-75 small-95 push-center">
                        <div class="column-group">
                            <div class="control">
                                <select name="id" id="id" style="width:100%">
                                    <option></option>
{foreach from=$fmbPosts item=post}
                                    <option value="{$post.post_id}">{$post.post_title|stripslashes} ({$post.post_time|date_format:"%d/%m/%Y %T"})</option>
{/foreach}
                                </select>
                            </div>
                        </div>
                        <div class="column-group vspace">
                            <input type="submit" value="Modifier" class="ink-button blue push-right"/>
                        </div>
                        <input type="hidden" name="actionDB" value="modPost" />
                    </fieldset>
                </form>
                </article>
                </section>
            </div>
