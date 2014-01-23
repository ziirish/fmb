            <div id="content" class="large-80 medium-75 small-100">
                <section class="column-group article">
                <article>
                    <header>
                    <h2 class="large-25 medium-50 small-75 push-center">
{if isset($fmbAction) and $fmbAction == "add"}
                    Ajouter une cat&eacute;gorie
{assign var=submit value='Ajouter'}
{else}
                    Modifier une cat&eacute;gorie
{assign var=submit value='Modifier'}
{/if}
                    </h2>
                    </header>
{if isset($fmbCatUpdOk)}
{if $fmbCatUpdOk == 1}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>Veuillez remplir tous les champs marqu&eacute;s d'une &eacute;toile.</p>
                </div>
{elseif $fmbCatUpdOk == 2}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>
{if isset($fmbAction) and $fmbAction == "add"}
                    Erreur lors de l'ajout de la cat&eacute;gorie.
{else}
                    Erreur lors de la modification de la cat&eacute;gorie.
{/if}
                    </p>
                </div>
{/if}
{if $fmbCatUpdOk == 0}
                <div class="ink-alert basic info">
                    <button class="ink-dismiss">&times;</button>
                    <p>
{if isset($fmbAction) and $fmbAction == "add"}
                    Cat&eacute;gorie ajout&eacute;e avec succ&egrave;s.
{else}
                    Cat&eacute;gorie modifi&eacute;e avec succ&egrave;s.
{/if}
                    </p>
                </div>
{/if}
{/if}
                <form class="ink-form column-group" action="index.php?part=blog&amp;page=cat&amp;action={$fmbAction}" method="post">
                    <fieldset class="column-group large-50 medium-75 small-100 push-center">
                        <div class="control-group">
                            <div class="column-group gutters">
                                <label for="title" class="large-30 content-right">Titre :</label>
                                <div class="control large-70">
                                    <input type="text" id="title" name="title" value="{if isset($fmbCategory.cat_title)}{$fmbCategory.cat_title|stripslashes}{/if}" />
                                </div>
                            </div>
                            <div class="column-group gutters">
                                <label for="desc" class="large-30 content-right">Description :</label>
                                <div class="control large-70">
                                    <input type="text" id="desc" name="desc" value="{if isset($fmbCategory.cat_desc)}{$fmbCategory.cat_desc|stripslashes}{/if}" />
                                </div>
                            </div>
                        </div>
                        <div class="column-group vspace">
                            <input type="submit" value="{$submit}" class="ink-button blue push-right"/>
                        </div>
                        <input type="hidden" name="actionDB" value="{$fmbAction}Category" />
{if isset($fmbAction) and $fmbAction != "add"}
                        <input type="hidden" name="id" value="{$fmbCategory.cat_id}" />
{/if}
                    </fieldset>
                </form>
                </article>
                </section>
            </div>
