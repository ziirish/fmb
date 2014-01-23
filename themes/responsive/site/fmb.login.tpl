            <div id="content" class="large-80 medium-75 small-100">
                <section class="column-group article">
                <article>
                    <header>
                    <h2 class="large-25 medium-50 small-75 push-center">Login</h2>
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
{if isset($fmbLoginError)}
                <div class="ink-alert basic error">
                    <button class="ink-dismiss">&times;</button>
                    <p>Wrong login or password.</p>
                </div>
{/if}
                <form class="ink-form column-group" method="post" action="login.php" >
                    <fieldset class="large-33 medium-50 small-75 push-center">
                        <div class="column-group gutters">
                            <label class="large-30 content-right" for="login">Login:</label>
                            <div class="control large-70">
                                <input type="text" id="login" name="login" value="{if isset($fmbRequest.login)}{$fmbRequest.login}{/if}" placeholder="Login"/>
                            </div>
                        </div>
                        <div class="column-group gutters">
                            <label class="large-30 content-right" for="password">Password:</label>
                            <div class="control large-70">
                                <input type="password" id="password" name="password" placeholder="Password"/>
                            </div>
                        </div>
                        <div class="vspace column-group">
                            <input type="submit" value="Login" class="ink-button blue push-right"/>
                        </div>
                        <input type="hidden" name="from" value="{if isset($fmbRequest.from)}{$fmbRequest.from}{/if}"/>
                    </fieldset>
                </form>
                </article>
                </section>
            </div>
