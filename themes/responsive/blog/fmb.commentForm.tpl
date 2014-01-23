                <div id="comment-form">
                    <h4>Add your comment!</h4>
{if isset($fmbCommentOk) && $fmbCommentOk == t}
                    <div class="ink-alert basic success">
                        <button class="ink-dismiss">&times;</button>
                        <p>Your comment has been successfully registered.</p>
                    </div>
{elseif isset($fmbCommentOk) && $fmbCommentOk == f}
                    <div class="ink-alert basic error">
                        <button class="ink-dismiss">&times;</button>
                        <p>An error occured while registering your comment. Please contact the website owner.</p>
                    </div>
{/if}
                    <form method="post" action="#comment-form" class="ink-form">
{if isset($fmbCommentUIDError) && $fmbCommentUIDError == t}
                        <div class="ink-alert basic error"><button class="ink-dismiss">&times;</button><p>Invalid user ID.</p></div>
{/if}
{if isset($fmbCommentBodyError) && $fmbCommentBodyError == t}
                        <div class="ink-alert basic error"><button class="ink-dismiss">&times;</button><p>You must enter a comment.</p></div>
{/if}
{if isset($fmbCommentCaptchaError) && $fmbCommentCaptchaError == t}
                        <div class="ink-alert basic error"><button class="ink-dismiss">&times;</button><p>The CAPTCHA you entered is invalid. Please try again.</p></div>
{/if}
                        <fieldset class="column-group">
                            <div class="column-group gutters">
                                <label for="com_name" class="large-30 content-right">Name / Nickname:</label>
                                <div class="control large-70">
                                    <input type="text" name="com_name" id="com_name" value="{if isset($fmbUserLogin)}{$fmbUserLogin}{elseif isset($smarty.post.com_name) && ((isset($fmbCommentOk) && $fmbCommentOk == f) || (isset($fmbCommentUIDError) && $fmbCommentUIDError == t) || (isset($fmbCommentBodyError) && $fmbCommentBodyError == t) || (isset($fmbCommentCaptchaError) && $fmbCommentCaptchaError == t))}{$smarty.post.com_name}{/if}" placeholder="Name / Nickname"/>
                                </div>
                            </div>
                            <div class="column-group gutters">
                                <label for="com_mail" class="large-30 content-right">Email / Website:</label>
                                <div class="control large-70">
                                    <input type="text" name="com_mail" id="com_mail" placeholder="Email / Website" value="{if isset($smarty.post.com_mail) && ((isset($fmbCommentOk) && $fmbCommentOk == f) || (isset($fmbCommentUIDError) && $fmbCommentUIDError == t) || (isset($fmbCommentBodyError) && $fmbCommentBodyError == t) || (isset($fmbCommentCaptchaError) && $fmbCommentCaptchaError == t))}{$smarty.post.com_mail}{elseif isset($fmbEditCommentMail)}{$fmbEditCommentMail}{/if}"/>
                                </div>
                            </div>
                            <div class="column-group gutters">
                                <label for="remember" class="large-30 content-right">Remember my name?</label>
                                <div class="control large-70">
                                    <input name="remember" id="remember" type="checkbox" {if isset($smarty.post.remember) && $smarty.post.remember == 'on' && ((isset($fmbCommentOk) && $fmbCommentOk == f) || (isset($fmbCommentUIDError) && $fmbCommentUIDError == t) || (isset($fmbCommentBodyError) && $fmbCommentBodyError == t) || (isset($fmbCommentCaptchaError) && $fmbCommentCaptchaError == t))}checked{/if}/>
                                </div>
                            </div>
{if isset($fmbCaptchaLabel)}
                                {$fmbCaptchaLabel}
{/if}
{if isset($fmbCaptchaInput)}
                                {$fmbCaptchaInput}
{/if}
                            <div class="control-group">
                                <label for="com_body">Your comment:</label>
                                <div class="control field">
                                    <p class="formatbut">
                                        <button type="button" title="gras" onclick="insertTag('[b]','[/b]');"><span><i class="fa fa-bold"></i></span></button>
                                        <button type="button" title="italique" onclick="insertTag('[i]','[/i]');"><span><i class="fa fa-italic"></i></span></button>
                                        <button type="button" title="souligné" onclick="insertTag('[u]','[/u]');"><span><i class="fa fa-underline"></i></span></button>
                                        <button id="button04" type="button" title="barré" onclick="insertTag('[s]','[/s]');"><span><i class="fa fa-strikethrough"></i></span></button>
                                        <span class="spacer"></span>
                                        <button type="button" title="Insérer un lien" onclick="insertTag('[url=http://]','[/url]');"><span><i class="fa fa-link"></i></span></button>
                                        <button type="button" title="Insérer une citation" onclick="insertTag('[quote]','[/quote]');"><span><i class="fa fa-quote-left"></i></span></button>
                                        <button type="button" title="Insérer du code formaté" onclick="insertTag('[code]','[/code]');"><span><i class="fa fa-code"></i></span></button>
                                    </p><!--end formatbut-->
                                    <textarea name="com_body" id="com_body" rows="10">{if isset($smarty.post.com_body) && ((isset($fmbCommentOk) && $fmbCommentOk == f) || (isset($fmbCommentUIDError) && $fmbCommentUIDError == t) || (isset($fmbCommentBodyError) && $fmbCommentBodyError == t) || (isset($fmbCommentCaptchaError) && $fmbCommentCaptchaError == t))}{$smarty.post.com_body}{elseif isset($fmbEditCommentBody)}{$fmbEditCommentBody}{/if}</textarea>
                                </div>
                            </div>
                            <input type="hidden" name="user_id" value="{if isset($fmbUserID)}{$fmbUserID}{/if}"/>
{if isset($fmbEditCommentID) || isset($smarty.post.com_id)}
                            <input type="hidden" name="action" value="upd" />
                            <input type="hidden" name="com_id" value="{if isset($fmbEditCommentID)}{$fmbEditCommentID}{elseif isset($smarty.post.com_id)}{$smarty.post.com_id}{/if}" />
{else}
                            <input type="hidden" name="action" value="addComment"/>
{/if}
                            <input type="hidden" name="post_id" value="{$fmbPostID}"/>
                            <input class="ink-button blue" value="Send your comment" type="submit" />
                        </fieldset>
                    </form>
                </div>
                <script type="text/javascript">
/*      ==========================
        Form buttons : for formating & reply button
*/

// formating : insert a tag
function insertTag(startTag, endTag) {
        var field = document.getElementById('com_body');
        var scroll = field.scrollTop;
        field.focus();
        var startSelection   = field.value.substring(0, field.selectionStart);
        var currentSelection = field.value.substring(field.selectionStart, field.selectionEnd);
        var endSelection     = field.value.substring(field.selectionEnd);
        if (currentSelection == "") { currentSelection = "TEXTE"; }
        field.value = startSelection + startTag + currentSelection + endTag + endSelection;
        field.focus();
        field.setSelectionRange(startSelection.length + startTag.length, startSelection.length + startTag.length + currentSelection.length);
        field.scrollTop = scroll;
}

// the Reply button
function reply(code) {
        var field = document.getElementById('com_body');
        field.focus();
        if (field.value !== '') {
                field.value += '\n\n';
        }
        field.value += code;
        field.scrollTop = 10000;
        field.focus();
}
                </script>
