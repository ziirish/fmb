            <div id="content" class="large-80 medium-75 small-100">
                <section class="research">
                <article>
                    <header>
                    <h2 class="large-25 medium-50 small-75 push-center">
{if isset($fmbAction) and $fmbAction == "add"}
                    Ajouter un billet
{assign var=submit value='Ajouter'}
{else}
                    Modifier un billet
{assign var=submit value='Modifier'}
{/if}
                    </h2>
                    </header>
{if isset($fmbPostUpdOk)}
{if $fmbPostUpdOk == 1}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>Veuillez remplir tous les champs marqu&eacute;s d'une &eacute;toile.</p>
                </div>
{elseif $fmbPostUpdOk == 2}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>Date ou heure invalide.</p>
                </div>
{elseif $fmbPostUpdOk == 3}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>
{if $fmbAction == "add"}
                    Erreur lors de l'ajout du billet.
{else}
                    Erreur lors de la modification du billet.
{/if}
                    </p>
                </div>
{/if}
{if $fmbPostUpdOk == 0}
                <div class="ink-alert basic info">
                    <button class="ink-dismiss">&times;</button>
                    <p>
{if isset($fmbAction) and $fmbAction == "add"}
                    Billet ajout&eacute; avec succ&egrave;s.
{else}
                    Billet modifi&eacute; avec succ&egrave;s.
{/if}
                    </p>
                </div>
{/if}
{/if}
{if $extUpload}
                <div class="ink-tabs top">
                    <ul class="tabs-nav">
                        <li><a href="#post-form">Post</a></li>
                        <li><a href="#img-up">Upload Images</a></li>
                        <li><a href="#file-up">Upload File</a></li>
                    </ul>
                    <div id="post-form" class="tabs-content">
{/if}
                <form action="index.php?part=blog&amp;page=post&amp;action={$fmbAction}" method="post" class="ink-form" style="overflow: hidden;">
                    <fieldset>
                        <div class="column-group large-50 medium-75 small-100">
                            <div class="control-group">
                                <div class="column-group gutters">
                                    <label for="date" class="large-30 content-right">Date :</label>
                                    <div class="control large-70">
                                        <input type="text" id="date" name="date" data-start-date="{$fmbPost.post_time|date_format:"%Y"}-{$fmbPost.post_time|date_format:"%m"}-{$fmbPost.post_time|date_format:"%d"}" data-format="dd/mm/yyyy" class="ink-datepicker" value="{$fmbPost.post_time|date_format:"%d"}/{$fmbPost.post_time|date_format:"%m"}/{$fmbPost.post_time|date_format:"%Y"}" placeholder="Enter a date in the form 'dd/mm/yyyy'"/>
                                    </div>
                                </div>
                                <div class="column-group gutters">
                                    <label for="title" class="large-30 content-right">Titre :</label>
                                    <div class="control large-70">
                                        <input type="text" name="title" value="{$fmbPost.post_title|stripslashes}" placeholder="Post title"/>
                                    </div>
                                </div>
{if $extHallo}
                                <div class="column-group gutters">
                                    <label for="cb1" class="large-30 content-right">Preview :</label>
                                    <div class="control large-70">
                                        <input type="checkbox" id="cb1" class="toggle" data-target="#preview">
                                    </div>
                                </div>
{/if}
                            </div>
                        </div>
                        <div class="column-group">
                            <input name="h" value="{$fmbPost.post_time|date_format:"%H"}" type="hidden"/>
                            <input name="m" value="{$fmbPost.post_time|date_format:"%M"}" type="hidden"/>
                            <input name="s" value="{$fmbPost.post_time|date_format:"%S"}" type="hidden"/>
                        </div>
{if $extHallo}
                        <div class="column-group">
                            <div class="hide-all" id="preview">
                                <div class="editable"></div>
                            </div>
                        </div>
{/if}
                        <div class="column-group">
                            <div class="control-group">
                                <label for="body">Texte :</label>
                                <div class="control">
                                    <textarea name='body' rows='10' id='post_body' style="font-family: Ubuntu_monospaced,Monaco,'Andale Mono','Courier New',monospace;">{$fmbPost.post_body}</textarea>
                                </div>
                            </div>
                        </div>
                        <div class="column-group large-75 medium-85 small-100">
                            <div class="control-group">
                                <div class="column-group gutters">
                                    <label for="draft" class="content-right large-50">Brouillon?</label>
                                    <div class="control large-50">
                                        <input type=checkbox id="draft" name="draft" value="1" {if $fmbPost.post_draft == t}checked="checked"{/if}/>
                                    </div>
                                </div>
                                <div class="column-group gutters">
                                    <label for="closed" class="content-right large-50">Bloquer les commentaires?</label>
                                    <div class="control large-50">
                                        <input type=checkbox name="closed" id="closed" value="1" {if $fmbPost.post_closed == t}checked="checked"{/if}/>
                                    </div>
                                </div>
                                <div class="column-group gutters">
                                    <label for="cat" class="content-right large-50">Cat&eacute;gorie :</label></p>
                                    <div class="control large-50">
                                        <select id="cat" name="cat" style="width:100%">
                                            <option></option>
{foreach from=$fmbCategories item=category}
                                            <option value="{$category.cat_id}" {if $category.cat_id == $fmbPost.post_cat}selected="selected"{/if}>{$category.cat_title|stripslashes}</option>
{/foreach}
                                        </select>
                                    </div>
                                </div>
{if $extSelect2}
                                <div class="column-group gutters">
                                    <label for="sel-tags" class="content-right large-50">Tags :</label>
                                    <div class="control large-50">
                                        <input type="hidden" name="sel-tags[]" id="sel-tags" style="width:100%">
                                    </div>
                                </div>
{/if}
                                <input type="submit" value="{$submit}" class="ink-button blue push-right"/>
                            </div>
                        </div>
                        <input type="hidden" name="actionDB" value="{$fmbAction}Post"/>
{if isset($fmbAction) and $fmbAction != "add"}
                        <input type="hidden" name="id" value="{$fmbPost.post_id}"/>
{/if}
                    </fieldset>
                </form>
{if $extUpload}
                    </div>
                    <div id="img-up" class="tabs-content">
                        <iframe src="{$extUpload}uploadImg.html" frameborder="0"></iframe>
                    </div>
                    <div id="file-up" class="tabs-content">
                        <iframe src="{$extUpload}uploadFile.html" frameborder="0"></iframe>
                    </div>
                </div>
{/if}
                </article>
                </section>
            </div>
            <script type="text/javascript">
            $("textarea").keydown(function(e) {
                if(e.keyCode === 9) { // tab was pressed
                    // get caret position/selection
                    var start = this.selectionStart;
                    var end = this.selectionEnd;

                    var $this = $(this);
                    var value = $this.val();

                    // set textarea value to: text before caret + tab + text after caret
                    $this.val(value.substring(0, start)
                                + "    "
                                + value.substring(end));

                    // put caret at right position again (add one for the tab)
                    this.selectionStart = this.selectionEnd = start + 4;

                    // prevent the focus lose
                    e.preventDefault();
                }
            });
            </script>
