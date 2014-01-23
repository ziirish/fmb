            <div id="content" class="large-80 medium-75 small-100">
                <section class="column-group article">
                <article>
                    <header>
                    <h2 class="large-25 medium-50 small-75 push-center">
{if isset($fmbAction) and $fmbAction == "add"}
                    Ajouter un tag
{assign var=submit value='Ajouter'}
{else}
                    Modifier un tag
{assign var=submit value='Modifier'}
{/if}
                    </h2>
                    </header>
{if isset($fmbTagUpdOk)}
{if $fmbTagUpdOk == 1}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>Veuillez remplir tous les champs marqu&eacute;s d'une &eacute;toile.</p>
                </div>
{elseif $fmbTagUpdOk == 2}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>
{if isset($fmbAction) and $fmbAction == "add"}
                    Erreur lors de l'ajout du tag.
{else}
                    Erreur lors de la modification du tag.
{/if}
                    </p>
                </div>
{/if}
{if $fmbTagUpdOk == 0}
                <div class="ink-alert basic info">
                    <button class="ink-dismiss">&times;</button>
                    <p>
{if isset($fmbAction) and $fmbAction == "add"}
                    Tag ajout&eacute; avec succ&egrave;s.
{else}
                    Tag modifi&eacute; avec succ&egrave;s.
{/if}
                    </p>
                </div>
{/if}
{/if}
                <form class="ink-form column-group" action="index.php?part=blog&amp;page=tag&amp;action={$fmbAction}" method="post">
                    <fieldset class="column-group large-50 medium-75 small-100 push-center">
                        <div class="control-group">
                            <div class="column-group gutters">
                                <label for="title" class="large-30 content-right">Titre :</label>
                                <div class="control large-70">
                                    <input type="text" id="title" name="title" value="{if isset($fmbTag.tag_title)}{$fmbTag.tag_title|stripslashes}{/if}" />
                                </div>
                            </div>
                            <div class="column-group gutters">
                                <label for="desc" class="large-30 content-right">Description :</label>
                                <div class="control large-70">
                                    <input type="text" id="desc" name="desc" value="{if isset($fmbTag.tag_desc)}{$fmbTag.tag_desc|stripslashes}{/if}" />
                                </div>
                            </div>
                        </div>
                        <div class="column-group vspace">
                            <input type="submit" value="{$submit}" class="ink-button blue push-right"/>
                        </div>
                        <input type="hidden" name="actionDB" value="{$fmbAction}Tag" />
{if isset($fmbAction) and $fmbAction != "add"}
                        <input type="hidden" name="id" value="{$fmbTag.tag_id}" />
{/if}
                    </fieldset>
                </form>
                </article>
                </section>
            </div>
