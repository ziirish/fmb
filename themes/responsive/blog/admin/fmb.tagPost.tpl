            <div id="content" class="large-80 medium-75 small-100">
                <section class="column-group article">
                <article>
                    <header>
                    <h2 class="large-25 medium-50 small-75 push-center">Assigner des tags à un billet :</h2>
                    </header>
{if isset($fmbTagAssignOk)}
{if $fmbTagAssignOk == t}
                <div class="ink-alert basic info">
                    <button class="ink-dismiss">&times;</button>
                    <p>Tags du billet modifiés avec succès.</p>
                </div>
{else}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>Échec lors de la modification des tags.</p>
                </div>
{/if}
{/if}
                <div class="column-group">
                <p>Tags actuellement assignés au billet <strong>'{$fmbPost.post_title}'</strong> :</p>
                <form class="ink-form column-group" action="index.php?part=blog&amp;page=tag&amp;action=assign" method="post">
                    <fieldset class="large-50 medium-75 small-100 push-center">
                        <div class="column-group">
                            <div class="control-group">
                                <select name="tags[]" multiple="multiple" style="width:100%">
                                    <option></option>
{foreach from=$fmbTags item=tag}
                                    <option value="{$tag.tag_id}" {if array_search($tag.tag_id, $fmbPostTags) !== false}selected="selected"{/if}>{$tag.tag_title|stripslashes} ({$tag.tag_desc|stripslashes})</option>
{/foreach}
                                </select>
                            </div>
                        </div>
                        <div class="column-group vspace">
                            <input type="submit" value="Modifier les tags" class="ink-button blue push-right"/>
                        </div>
                        <input type="hidden" name="id" value="{$fmbPost.post_id}"/>
                        <input type="hidden" name="actionDB" value="assignTagToPost"/>
                    </fieldset>
                </form>
                </div>
                </article>
                </section>
            </div>
