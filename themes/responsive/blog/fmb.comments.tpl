                <div id="comments">
                    <h3>Comments</h3>
{foreach from=$fmbPostComments item=comment}
                    <div class="comment-msg comment-{cycle values="odd,even"}">
                        <a style="display: block; position: relative; top: -70px; visibility: hidden;" id="comment-{$comment.com_id}"></a>
                        <article class="column-group tooltip" style="padding-bottom: .5em;" data-tip-text="click to toggle options"  data-tip-where="down" data-tip-color="blue" data-tip-delay="0.5" data-tip-timeout="2">
                            <div class="toggle" data-target="#tools-{$comment.com_id}" data-close-on-click="true" data-trigger-event="click">
                            <div class="comment-body large-90 small-80 push-left">{$comment.com_body}</div>
{if $extIdenticon}
                            <div class="large-10 push-right small-20 icon">
                            <img src="{$comment.com_name|icon:$comment.com_mem:$comment.com_ip}" />
                            </div>
{/if}
                            <footer class="column-group">
                            <div class="large-50">
                            <i class="fa fa-user fa-fw"></i>&nbsp;
{if $comment.com_mem > 0}
{if isset($extNiceURL) and $extNiceURL == t}
                            <a href="member-{$comment.com_mem}-{$comment.com_name|niceurl}.html">#</a>{$comment.com_name}
{else}
                            <a href="member.php?id={$comment.com_mem}">#</a>{$comment.com_name}
{/if}
{elseif substr($comment.com_mail,0,4) == "http"}
                            <a href="{$comment.com_mail}">{$comment.com_name}</a>
{elseif $comment.com_mail != ""}
                            <a href="mailto:{$comment.com_mail}">{$comment.com_name}</a>
{else}
                            {$comment.com_name}
{/if}
                            </div>
                            <div class="large-50 comment-info" style="text-align: right;">{$comment.com_time|date_format:"%d %B %Y"} at {$comment.com_time|date_format:"%T"}&nbsp;<i class="fa fa-calendar fa-fw"></i></div>
                            </footer>
                            </div>
                            <div class="hide-all" id="tools-{$comment.com_id}">
                            <div class="large-25">
                                <a class="ink-button blue" href="#comment-{$comment.com_id}"><i class="fa fa-anchor fa-fw"></i>&nbsp;Permalink</a>
                            </div>
                            <div class="large-75 push-right" style="text-align: right;">
{if isset($fmbUserID) && $comment.com_mem > 0 && $fmbUserID == $comment.com_mem}
                                <form method="post" style="display:inline!important;" onsubmit="return confirm('Are you sure you want to delete this comment?');">
                                <input type="hidden" name="comment-id" value="{$comment.com_id}">
                                <input type="hidden" name="action" value="delete">
                                <button class="ink-button red"><i class="fa fa-trash-o fa-fw"></i>Delete</button>
                                </form>
                                <form method="post" style="display:inline!important;" action="#comment-form">
                                <input type="hidden" name="comment-id" value="{$comment.com_id}">
                                <input type="hidden" name="action" value="edit">
                                <button class="ink-button orange"><i class="fa fa-edit fa-fw"></i>Edit</button>
                                </form>
{/if}
                                <a class="ink-button green" href="#comment-form" onclick="reply('[quote={$comment.com_id}]@{$comment.com_name}|#{$comment.com_id}[/quote]');"><i class="fa fa-quote-left fa-fw"></i>&nbsp;Reply</a>
                            </div>
                            </div>
                        </article>
                    </div>
                    <p></p>
{/foreach}
                </div>
