#!/usr/bin/bash -xv 
# SPDX-FileCopyrightText: 2023 Yoshitaka Hirata
# SPDX-License-Identifier: BSD-3-clause
ng () {
	echo NG at Line ${1}
	ret=1
}

ret=0

out=$(seq 5 | ./plus)

[ "${out}" = 15 ] || ng ${LINENO}

### 変なインプット###

out=$(echo あ | ./plus)
  [ "$?" = 1 ]      || ng ${LINENO}
  [ "${out}" = "" ] || ng ${LINENO}
    　 
  out=$(echo | ./plus) #空文字
  [ "$?" = 1 ]      || ng ${LINENO}
  [ "${out}" = "" ] || ng ${LINENO}

[ "$ret" = 0 ] && echo OK
exit $ret




