# This weechat plugin pipes the current weechat buffer through urlview
#
# Usage:
# /urlview
#
# History:
# 10-04-2015
# Version 1.0.0: initial release
# Version 1.0.1: reverse text passed to urlview
# Version 1.0.2: remove weechat color from messages

import distutils.spawn
import os
import pipes
import weechat


def urlview(data, buf, args):
    infolist = weechat.infolist_get("buffer_lines", buf, "")
    lines = []
    while weechat.infolist_next(infolist) == 1:
        lines.append(
            weechat.string_remove_color(
                weechat.infolist_string(infolist, "message"),
                ""
            )
        )

    weechat.infolist_free(infolist)

    if not lines:
        weechat.prnt(buf, "No URLs found")
        return weechat.WEECHAT_RC_OK

    text = "\n".join(reversed(lines))
    response = os.system("echo %s | urlview" % pipes.quote(text))
    if response != 0:
        weechat.prnt(buf, "No URLs found")

    weechat.command(buf, "/window refresh")

    return weechat.WEECHAT_RC_OK


def main():
    if distutils.spawn.find_executable("urlview") is None:
        return weechat.WEECHAT_RC_ERROR

    if not weechat.register("urlview", "Keith Smiley", "1.0.2", "MIT",
                            "Use urlview on the current buffer", "", ""):
        return weechat.WEECHAT_RC_ERROR

    weechat.hook_command("urlview", "Pass the current buffer to urlview", "",
                         "", "", "urlview", "")

if __name__ == "__main__":
    main()
