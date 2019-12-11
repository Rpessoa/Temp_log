# Simple Bash script to log the temperature #

Simple way to log your Rpi temperature. Set it in cron and that's it.
It is still a WIP.
If you want the script to log the temperature every 5 min, use this in your cron:

```bash
*/5 * * * * ~/your/path/temp_log.sh
```
