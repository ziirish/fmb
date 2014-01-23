            <div id="content" class="large-80 medium-75 small-100">
                <section class="column-group article">
                <article>
                    <header>
                    <h2>Subscribe</h2>
                    </header>
            {if isset($fmbRequest.login) and ($fmbRequest.login == "")}
                <div class="ink-alert basic warning">
                    <button class="ink-dismiss">&times;</button>
                    <p>Please enter a login.</p>
                </div>
            {/if}
            {if isset($fmbRequest.password) and ($fmbRequest.password == "")}
                <div class="ink-alert basic warning">
                    <button class="ink-dismiss">&times;</button>
                    <p>Please enter a password.</p>
                </div>
            {/if}
            {if isset($fmbRequest.password_conf) and ($fmbRequest.password_conf == "")}
                <div class="ink-alert basic warning">
                    <button class="ink-dismiss">&times;</button>
                    <p>Please confirm your password.</p>
                </div>
            {/if}
            {if isset($fmbRequest.password) and isset($fmbRequest.password_conf) and $fmbRequest.password != $fmbRequest.password_conf}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>Passwords doesn't match.</p>
                </div>
            {/if}
            {if isset($fmbMemberAlreadyExistsError)}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>Login already exists.</p>
                </div>
            {/if}
            {if isset($fmbSubscribeError)}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>Error while subscribing.</p>
                </div>
            {/if}
                <form method="post" action="subscribe.php" class="ink-form column-group">
                    <fieldset class="large-33 medium-50 small-75 push-center">
                        <div class="column-group gutters">
                            <label for="login" class="large-30 content-right">Login:</label>
                            <div class="control large-70">
                                <input type="text" id="login" name="login" value="{if isset($fmbRequest.login)}{$fmbRequest.login}{/if}" placeholder="Login"/>
                            </div>
                        </div>
                        <div class="column-group gutters">
                            <label for="password" class="large-30 content-right">Password:</label>
                            <div class="control large-70">
                                <input type="password" id="password" name="password" placeholder="Password"/>
                            </div>
                        </div>
                        <div class="column-group gutters">
                            <label for="password_conf" class="large-30 content-right">Password (Confirm):</label>
                            <div class="control large-70">
                                <input type="password" id="passwordConf" name="password_conf" placeholder="Retype Password"/>
                            </div>
                        </div>
                        <div class="vspace column-group">
                            <input type="submit" value="Subscribe" class="ink-button blue push-right"/>
                        </div>
                        <input type="hidden" name="from" value="{if isset($fmbRequest.from)}{$fmbRequest.from}{/if}" />
                    </fieldset>
                </form>
                </article>
                </section>
            </div>

