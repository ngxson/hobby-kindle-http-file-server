# [KUAL Extension] HTTP-based file browser

Author: [ngxson](https://github.com/ngxson)

I use my Kindle Paperwhite 3 everyday for my studies at university. However, it's quite inconvenient to copy documents, specially PDFs into the kindle, because most of the time, I don't bring my laptop or a micro USB cable with me.

After a quick search for standalone HTTP-based file manager, I luckily found https://filebrowser.org/ , which is an open-source option. They are also very nice to have the prebuilt binary for ARMv7 so that I can write some code to implement it into KUAL.

Link to download KUAL extension (you just need to extract and place it under `/extensions` folder): https://github.com/ngxson/hobby-kindle-http-file-server/releases/

**Make sure that you also have kterm on KUAL**

### How to use

- Connect your kindle to wifi
- Open KUAL > HTTP File Server > Start Server
- Access kindle's IP address from a browser on your laptop/PC/Mobile/...
- The default username/password is admin/admin. You can change it by going to "Settings" section on web interface.

### TODO

- ~~Show IP address~~
- ~~Ability run on the background~~

## Notes

- This extension has only been tested on PW3. However, it should work on all other models that have an ARMv7 processor.
- To reset password: delete `filebrowser.db` under `/extensions/filebrowser` folder

Please feel free to make PRs on github!