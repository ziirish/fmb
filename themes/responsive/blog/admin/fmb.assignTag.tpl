            <div id="content" class="large-80 medium-75 small-100">
                <section class="column-group article">
                <article>
                    <header>
                    <h2 class="large-25 medium-50 small-75 push-center">Assigner des tags &agrave; un billet :</h2>
                    </header>
{if isset($fmbTagAssignErr) and $fmbTagAssignErr == t}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>Veuillez s&eacute;lectionner un billet.</p>
                </div>
{/if}
                <form class="ink-form column-group" action="index.php?part=blog&amp;page=tag&amp;action=assign" method="post">
                    <fieldset class="large-33 medium-50 small-75 push-center">
                        <div class="column-group">
                            <div class="control">
                                <select name="id" style="width:100%">
                                    <option></option>
{foreach from=$fmbPosts item=post}
                                    <option value="{$post.post_id}">{$post.post_title|stripslashes} ({$post.post_time|date_format:"%d/%m/%Y %T"})</option>
{/foreach}
                                </select>
                            </div>
                        </div>
                        <div class="column-group vspace">
                            <input type="submit" value="Modifier les tags" class="ink-button blue push-right"/>
                        </div>
                        <input type="hidden" name="actionDB" value="assignTag" />
                    </fieldset>
                </form>
                </article>
                </section>
            </div>
