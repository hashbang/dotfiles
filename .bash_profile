export TERM=screen-256color
export EDITOR=nano
export VISUAL=$EDITOR

echo "   _  _    __  ";
echo " _| || |_ |  |  Welcome to #!. This network has three rules:";
echo "|_  __  _||  | ";
echo " _| || |_ |  |  1. When people need help, teach. Don't do it for them";
echo "|_  __  _||__|  2. Don't use our resources for closed source projects";
echo "  |_||_|  (__)  3. Be excellent to each other";
echo "               ";
echo " Things to explore:";
echo " ";
echo "   * You are in a 'tmux' session. There are three tabs below."
echo "     Navigate with <Ctrl-b> + a tab number."
echo " ";
echo "   * You are already in our IRC channel in \"tab 0\"";
echo "     Type <Ctrl-B> + 0 to reach it and chat with us."
echo " ";
echo "   * Your system email address is: $USER@hashbang.sh";
echo "     Type <Ctrl-B> + 1 to check your email"
echo " ";
echo "   * You have public webspace at http://$USER.hashbang.sh";
echo "     Any files you create in your 'Public' folder will appear there";
echo " ";
echo "   * We have a wide range of tools to explore. If a tool you want is not";
echo "     available please ask in IRC and someone can probably make it happen";
echo " ";
echo "   * To learn more about us and our offerings type: man hashbang";
echo " ";
echo " Also note you can get back here at any time via:";
echo " > ssh hashbang";
echo " ";

# make sure this is an interactive session, then start tmux
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && ~/.tmux_bootstrap
