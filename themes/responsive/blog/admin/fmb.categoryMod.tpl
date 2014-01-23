            <div id="content" class="large-80 medium-75 small-100">
                <section class="column-group article">
                <article>
                    <header>
                    <h2 class="large-25 medium-50 small-75 push-center">Modifier une cat&eacute;gorie :</h2>
                    </header>
{if isset($fmbCatModErr) and $fmbCatModErr == t}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>Veuillez s&eacute;lectionner une cat&eacute;gorie.<br/>
                    Vous ne pouvez pas modifier la cat&eacute;gorie "G&eacute;n&eacute;ral".</p>
                </div>
{/if}
{if isset($fmbCatModOk)}
{if $fmbCatModOk == t}
                <div class="ink-alert basic info">
                    <button class="ink-dismiss">&times;</button>
                    <p>Cat&eacute;gorie modifi&eacute;e avec succ&agrave;s.</p>
                </div>
{else}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>&Eacute;chec lors de la modification de la cat&eacute;gorie.</p>
                </div>
{/if}
{/if}
                <form class="ink-form column-group" action="index.php?part=blog&amp;page=cat&amp;action=mod" method="post">
                    <fieldset class="large-50 medium-75 small-95 push-center">
                        <div class="column-group">
                            <div class="control">
                                <select name="id" style="width:100%">
                                    <option></option>";
{foreach from=$fmbCategories item=category}
                                    <option value="{$category.cat_id}">{$category.cat_title|stripslashes} ({$category.cat_desc|stripslashes})</option>
{/foreach}
                                </select>
                            </div>
                        </div>
                        <div class="column-group vspace">
                            <input type="submit" value="Modifier" class="ink-button blue push-right"/>
                        <div>
                        <input type="hidden" name="actionDB" value="modCategory" />
                    </fieldset>
                </form>
                </article>
                </section>
            </div>
