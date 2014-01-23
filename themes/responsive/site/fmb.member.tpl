            <div id="content" class="large-80 medium-75 small-100">
                <section class="column-group article">
                <article>
                <table class="ink-table bordered">
                    <thead>
                        <tr>
                            <th class="content-center">Login</th>
                            <th class="content-center">Level</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>{$fmbMember.mem_login}</td>
                            <td>
{if $fmbMember.mem_rights == 1}
                                Administrator
{elseif $fmbMember.mem_rights == 2}
                                Member
{else}
                                Anonymous
{/if}
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

