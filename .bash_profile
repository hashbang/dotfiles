case "$TERM" in
  xterm-256color)
    export TERM=screen-256color
    ;;
  *)
    export TERM=screen
    ;;
esac
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
if [ ! -z "$TMUX" ] # check for tmux before displaying tmux help
then
  echo "   * You are in a 'tmux' session. There are three tabs below."
  echo "     Navigate with <Ctrl-b> + a tab number."
  echo " ";
  echo "   * You are already in our IRC channel in \"tab 1\"";
  echo "     Type <Ctrl-B> + 1 to reach it and chat with us."
  echo " ";
  echo "   * Your system email address is: $USER@hashbang.sh";
  echo "     Type <Ctrl-B> + 2 to check your email"
  echo " ";
else
  echo "   * You can start 'tmux' to enter a tmux session."
  echo "     Help will be displayed when tmux is started."
  echo " ";
  echo "   * You can resume a detached tmux session at any time."
  echo "     Use 'tmux attach' to resume your tmux session."
  echo " ";
fi
echo "   * You have public webspace at http://$USER.hashbang.sh";
echo "     Any files you create in your 'Public' folder will appear there";
echo " ";
echo "   * To learn more about us and our offerings type: man hashbang";
echo " ";
echo " Like what we're doing? Consider donating to expand our efforts.";
echo "  * Bitcoin - [ 1DtTvCLiUMhs21QcETQzLyiqxoopUjqBSU ]";
echo "  * Google Wallet - [ donate@hashbang.sh ]";
echo "  * PayPal - [ http://goo.gl/aSQWy0 ]";
echo " ";
echo " Community shell servers generously sponsored by: (http://atlantic.net)";

# make sure this is an interactive session, then start tmux
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && ~/.tmux_bootstrap
[[ -f "$HOME/.bashrc" ]] && . "$HOME/.bashrc"
