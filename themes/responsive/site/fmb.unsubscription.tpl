            <div id="content" class="large-80 medium-75 small-100">
                <section class="column-group article">
                <article>
                    <header>
                    <h2>Unsubscribe</h2>
                    </header>
                <div class="ink-alert basic warning">
                    <button class="ink-dismiss">&times;</button>
                    <p>Warning! Unsubscribtion is irreversible!</p>
                </div>
{if isset($fmbRequest.password) and ($fmbRequest.password == "")}
                <div class="ink-alert basic warning">
                    <button class="ink-dismiss">&times;</button>
                    <p>Please enter a password.</p>
                </div>
{/if}
{if isset($fmbNoSuchMemberError)}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>Unknown login.</p>
                </div>
{/if}
{if isset($fmbUnsubscribeError)}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>Error while unsubscribing.</p>
                </div>
{/if}
                <form method="post" action="subscribe.php?action=unsubscribe" class="ink-form column-group">
                    <fieldset class="large-33 medium-50 small-75 push-center">
                        <div class="column-group gutters">
                            <label for="password" class="large-30 content-right">Password:</label>
                            <div class="control large-70">
                                <input type="password" id="password" name="password" placeholder="Password"/>
                            </div>
                        </div>
                        <div class="vspace column-group">
                            <input type="submit" value="Unsubscribe" class="ink-button blue push-right"/>
                        </div>
                        <input type="hidden" name="from" value="{$fmbRequest.from}" />
                    </fieldset>
                </form>
                </article>
                </section>
            </div>
