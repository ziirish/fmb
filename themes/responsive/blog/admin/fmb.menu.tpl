            <div class="large-20 medium-25 small-100 push-right">
            <nav id="sidebar" class="ink-navigation sticky" data-offset-top="70px">
                <ul class="menu vertical rounded black">
                    <li>
                        <a class="toggle" data-target="#menu-nav" href="#" onclick="return false;"><i class="fa fa-globe fa-fw"></i>Navigation</a>
                        <ul class="hide-all" id="menu-nav">
                            <li><a href="{$fmbSiteUrl}login.php?action=logout&amp;from=blog">D&eacute;connexion</a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="toggle" data-target="#menu-blog" href="#" onclick="return false;"><i class="fa fa-dashboard fa-fw"></i>Dashboard</a>
                        <ul class="hide-all" id="menu-blog">
                            <li><a class="toggle" data-target="#submenu-cat" href="#" onclick="return false;">Cat&eacute;gories</a></li>
                            <ul class="hide-all" id="submenu-cat">
                            <li><a href="index.php?part=blog&amp;page=cat&amp;action=add"><i class="fa fa-chevron-circle-right fa-fw"></i>Ajouter</a></li>
                            <li><a href="index.php?part=blog&amp;page=cat&amp;action=mod"><i class="fa fa-chevron-circle-right fa-fw"></i>Modifier</a></li>
                            <li><a href="index.php?part=blog&amp;page=cat&amp;action=del"><i class="fa fa-chevron-circle-right fa-fw"></i>Supprimer</a></li>
                            </ul>
                            <li><a class="toggle" data-target="#submenu-tag" href="#" onclick="return false;">Tags</a></li>
                            <ul class="hide-all" id="submenu-tag">
                            <li><a href="index.php?part=blog&amp;page=tag&amp;action=add"><i class="fa fa-chevron-circle-right fa-fw"></i>Ajouter</a></li>
                            <li><a href="index.php?part=blog&amp;page=tag&amp;action=mod"><i class="fa fa-chevron-circle-right fa-fw"></i>Modifier</a></li>
                            <li><a href="index.php?part=blog&amp;page=tag&amp;action=del"><i class="fa fa-chevron-circle-right fa-fw"></i>Supprimer</a></li>
                            <li><a href="index.php?part=blog&amp;page=tag&amp;action=assign"><i class="fa fa-chevron-circle-right fa-fw"></i>Assigner</a></li>
                            </ul>
                            <li><a class="toggle" data-target="#submenu-post" href="#" onclick="return false;">Billets</a></li>
                            <ul class="hide-all" id="submenu-post">
                            <li><a href="index.php?part=blog&amp;page=post&amp;action=add"><i class="fa fa-chevron-circle-right fa-fw"></i>Ajouter</a></li>
                            <li><a href="index.php?part=blog&amp;page=post&amp;action=mod"><i class="fa fa-chevron-circle-right fa-fw"></i>Modifier</a></li>
                            <li><a href="index.php?part=blog&amp;page=post&amp;action=del"><i class="fa fa-chevron-circle-right fa-fw"></i>Supprimer</a></li>
                            </ul>
                        </ul>
                    </li>
                </ul>
            </nav>
            </div>
