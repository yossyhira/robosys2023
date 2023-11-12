#!/usr/bin/bash -xv 
# SPDX-FileCopyrightText: 2023 Yoshitaka Hirata
# SPDX-License-Identifier: BSD-3-clause
ng () {
	echo NG at Line ${1}
	ret=1
}

ret=0

out=$(./japanes_holiday 1/1)

[ "${out}" = 元日、鉄腕アトムの日 ] || ng ${LINENO}

### 変なインプット###

out=$(./japanes_holiday1/1)
  [ "$?" = 127 ]      || ng ${LINENO}
  [ "${out}" = "" ] || ng ${LINENO}

 out=$(./japanes_holiday )
  [ "$?" = 1 ]      || ng ${LINENO}
  [ "${out}" = "" ] || ng ${LINENO}

out=$(./japanes_holiday 1月１日)
  [ "$?" = 0 ]      || ng ${LINENO}
  [ "${out}" = "その日付に対応する記念日は見つかりませんでした。" ] || ng ${LINENO}
 
 out=$(./japanes_holiday 01/01)
  [ "$?" = 0 ]      || ng ${LINENO}
  [ "${out}" = "その日付に対応する記念日は見つかりませんでした。" ] || ng ${LINENO}

out=$(./japanes_holiday あ)
  [ "$?" = 0 ]      || ng ${LINENO}
  [ "${out}" = "その日付に対応する記念日は見つかりませんでした。" ] || ng ${LINENO}

[ "$ret" = 0 ] && echo OK
exit $ret
