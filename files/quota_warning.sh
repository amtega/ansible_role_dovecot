#!/bin/sh
PERCENT=$1
USER=$2
NOW=$(date -R)
cat << EOF | /usr/libexec/dovecot/dovecot-lda -d $USER -o "plugin/quota=dict:User quota:%u.default:ns=:proxy::sqlquota"
From: {{dovecot_default_sender}}
Subject: Aviso de Cota
Date: $NOW
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------070408020007040301070900"

This is a multi-part message in MIME format.
--------------070408020007040301070900
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


*A súa caixa de correos está o $PERCENT% de capacidade.*

--------------070408020007040301070900
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <b><font color="#ff0000">A s&uacute;a caixa de correos est&aacute; o $PERCENT% de
        capacidade.</font></b>
  </body>
</html>

--------------070408020007040301070900--
EOF
