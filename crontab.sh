# 
# This file is part of RaumfeldAlarm.
# Learn more at: https://github.com/blaues0cke/RaumfeldAlarm
# 
# Author:  Thomas Kekeisen <pisleeptalk@tk.ca.kekeisen.it>
# License: This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
#          To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
#

# Every weekday (07:20)
20  7 * * 1-5 root sh /usr/raumfeld/wake-up.sh
20  9 * * 1-5 root sh /usr/raumfeld/scripts/stop-music.sh

# Weekend (09:20)
20  9 * * 6-7 root sh /usr/raumfeld/wake-up.sh
20 11 * * 6-7 root sh /usr/raumfeld/scripts/stop-music.sh