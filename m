Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27101297E12
	for <lists+tipc-discussion@lfdr.de>; Sat, 24 Oct 2020 21:16:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kWP1Q-0004vn-4h; Sat, 24 Oct 2020 19:16:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kWP1P-0004ve-7E
 for tipc-discussion@lists.sourceforge.net; Sat, 24 Oct 2020 19:16:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2WmxrMZ4VPxkjTH6rUYwaHHLBK3wdPCQSw04Tok8Soc=; b=kcXwvPz3sFRg3JN+OXgtHdUAsc
 /AJiadncJYxlZUtsA8NGbtYzcaJJyg5zY60MG+h0CrWrQ5zMb1mRojL1ovv0Vd30zJdFx3KhBc4rO
 zoOJtRTiM+Gp+09/Z6tRm5Ilx4DzsFJpNXAFrvQF+85Xq152h7cm+dvchXHqE0/htQ7Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2WmxrMZ4VPxkjTH6rUYwaHHLBK3wdPCQSw04Tok8Soc=; b=H
 CR/QP1dAExaiMnRlSeFBK8ed7FzOhzJdjQSbsM6pc03T9zVqJgS9atJzZCGap/4jGHSVv7XIoHyI5
 X22QbKn/pyu1aepplPUrDFKaRACl5Ssnz2opEuWbOvdl4pa/9a06gp2GQB0FJfwQKbwMuywmzyT8g
 CJLF8XsB7mU2SD/k=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kWP1C-005hLr-MZ
 for tipc-discussion@lists.sourceforge.net; Sat, 24 Oct 2020 19:16:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603566952;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=2WmxrMZ4VPxkjTH6rUYwaHHLBK3wdPCQSw04Tok8Soc=;
 b=HriC+JJBxDCfqyD64ngwgM6mln/lRbh5rqqatJoBntcKxFwOzU9uWEXxN1lR3a8+bbFJTt
 TQ9NLsBO6iASrPCEQ+wfAsDbM3W8fOIEhN7zfMt1JmReWJIb37nd7bYTpowNrsmwSNurq+
 ucU2IdTOy/+83wYSIWviY+DzAT3ASeA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-248-UYEVN3dLNC-zbUYaxkUS6w-1; Sat, 24 Oct 2020 15:15:50 -0400
X-MC-Unique: UYEVN3dLNC-zbUYaxkUS6w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E76891005513;
 Sat, 24 Oct 2020 19:15:48 +0000 (UTC)
Received: from f31.redhat.com (ovpn-112-215.rdu2.redhat.com [10.10.112.215])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F32225B4BB;
 Sat, 24 Oct 2020 19:15:46 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Sat, 24 Oct 2020 15:15:46 -0400
Message-Id: <20201024191546.2640532-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kWP1C-005hLr-MZ
Subject: [tipc-discussion] [net v2] tipc: add stricter control of reserved
 service types
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: xinl@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Jon Maloy <jmaloy@redhat.com>

TIPC reserves 64 service types for current and future internal use.
Therefore, the bind() function is meant to block regular user sockets
from being bound to these values, while it should let through such
bindings from internal users.

However, since we at the design moment saw no way to distinguish
between regular and internal users the filter function ended up
with allowing all bindings of the reserved types which were really
in use ([0,1]), and block all the rest ([2,63]).

This is risky, since a regular user may bind to the service type
representing the topology server (TIPC_TOP_SRV == 1) or the one used
for indicating neigboring node status (TIPC_CFG_SRV == 0), and wreak
havoc for users of those services, i.e., practically all users.

The reality is however that TIPC_CFG_SRV never is bound through the
bind() function, since it doesn't represent a regular socket, and
TIPC_TOP_SRV can easily be singled out, since it is published from
kernel mode and is the very first binding performed when the system
is starting.

We now introduce a 'privileged' mode for sockets, marking which of
those are entitled to bind to reserved service type values. The only
such socket we have so far is the topology server's listener socket,
which is identified the way described above. All other bindings to
reserved service types are rejected.

It should be noted that, although this is a change of the API semantics,
there is no risk we will break any currently working applications by
doing this. Any application trying to bind to the values in question
would be badly broken from the outset, so there is no chance we would
find any such applications in real-world production systems.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/socket.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index e795a8a2955b..a0a144ff84fd 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1,7 +1,8 @@
 /*
  * net/tipc/socket.c: TIPC socket API
  *
- * Copyright (c) 2001-2007, 2012-2017, Ericsson AB
+ * Copyright (c) 2020, Red Hat Inc
+ * Copyright (c) 2001-2007, 2012-2019, Ericsson AB
  * Copyright (c) 2004-2008, 2010-2013, Wind River Systems
  * All rights reserved.
  *
@@ -127,6 +128,8 @@ struct tipc_sock {
 	bool expect_ack;
 	bool nodelay;
 	bool group_is_open;
+	bool privileged;
+	bool kernel;
 };
 
 static int tipc_sk_backlog_rcv(struct sock *sk, struct sk_buff *skb);
@@ -479,6 +482,7 @@ static int tipc_sk_create(struct net *net, struct socket *sock,
 	tsk->max_pkt = MAX_PKT_DEFAULT;
 	tsk->maxnagle = 0;
 	tsk->nagle_start = NAGLE_START_INIT;
+	tsk->kernel = !!kern;
 	INIT_LIST_HEAD(&tsk->publications);
 	INIT_LIST_HEAD(&tsk->cong_links);
 	msg = &tsk->phdr;
@@ -665,6 +669,7 @@ static int tipc_bind(struct socket *sock, struct sockaddr *uaddr,
 	struct sockaddr_tipc *addr = (struct sockaddr_tipc *)uaddr;
 	struct tipc_sock *tsk = tipc_sk(sk);
 	int res = -EINVAL;
+	u32 stype, dnode;
 
 	lock_sock(sk);
 	if (unlikely(!uaddr_len)) {
@@ -691,13 +696,15 @@ static int tipc_bind(struct socket *sock, struct sockaddr *uaddr,
 		goto exit;
 	}
 
-	if ((addr->addr.nameseq.type < TIPC_RESERVED_TYPES) &&
-	    (addr->addr.nameseq.type != TIPC_TOP_SRV) &&
-	    (addr->addr.nameseq.type != TIPC_CFG_SRV)) {
+	stype = addr->addr.nameseq.type;
+	if (stype == TIPC_TOP_SRV && tsk->kernel &&
+	    !tipc_nametbl_translate(sock_net(sk), stype, stype, &dnode))
+		tsk->privileged = true;
+
+	if (stype < TIPC_RESERVED_TYPES && !tsk->privileged) {
 		res = -EACCES;
 		goto exit;
 	}
-
 	res = (addr->scope >= 0) ?
 		tipc_sk_publish(tsk, addr->scope, &addr->addr.nameseq) :
 		tipc_sk_withdraw(tsk, -addr->scope, &addr->addr.nameseq);
-- 
2.25.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
