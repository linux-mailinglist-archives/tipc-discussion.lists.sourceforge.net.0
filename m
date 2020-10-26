Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 190A4299A2F
	for <lists+tipc-discussion@lfdr.de>; Tue, 27 Oct 2020 00:07:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kXBaU-0007RW-Fs; Mon, 26 Oct 2020 23:07:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kXBaP-0007RE-Rm
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Oct 2020 23:07:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M0K59/Z8tQzKPpUXKwn3dtuTxMxTofwhoxvgQvRddqU=; b=jfuVOUFXkhzGqVph+wdWQXZDWD
 AA25wd/RmL8MB7dZc357zN8ROly5yjjgPZ6SvT1L6VEq9QRFb8D+22DmjVKAohApatMXC06u154M/
 jN2dQipmI4t2ejoBkxy22XFDQSZRa26x+JLJpD4bcfWM3i2OVx6/QWFfFGzXiv3WUl6w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=M0K59/Z8tQzKPpUXKwn3dtuTxMxTofwhoxvgQvRddqU=; b=K
 gmlm7xji6FyRc3bjidITXZ/d3BKX60l9REkTlQ7aN+2QfpV2QmCwh4pkRRvysjVy6xmaa6VFqxFS9
 6dQf1ROdXuF8SPp8e6iVZ7QEB+/KZ4Ohx1w4c9+HmtFCLDBvxYHd281xFufhzD7tPjdDJd+zJGbQF
 yFZh0ZiNrBFQGn3o=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kXBaA-008ADO-Sx
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Oct 2020 23:07:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603753632;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=M0K59/Z8tQzKPpUXKwn3dtuTxMxTofwhoxvgQvRddqU=;
 b=RJRhiIcFMTKfaDbolOzlgOcOqHs+XtfJqxRWVVgLHRo8rK6MOX4YYojn+ip78eFYxrNsVJ
 1qg018/nV3W+4YG+kVskzvbLavWQVlDtkx9pFodNkKWEl4+Ct1E1JEitxr+03nnltIRTm7
 peyR9BamQttpTDAoYsQKX3boYOk6WQY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-436-oTyLAtL-NR6i1A8EAxgk2w-1; Mon, 26 Oct 2020 19:07:10 -0400
X-MC-Unique: oTyLAtL-NR6i1A8EAxgk2w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A8B4F1006C93;
 Mon, 26 Oct 2020 23:07:08 +0000 (UTC)
Received: from f31.redhat.com (ovpn-112-215.rdu2.redhat.com [10.10.112.215])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 150255576E;
 Mon, 26 Oct 2020 23:07:06 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Mon, 26 Oct 2020 19:07:06 -0400
Message-Id: <20201026230706.3376753-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
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
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kXBaA-008ADO-Sx
Subject: [tipc-discussion] [net v3] tipc: add stricter control of reserved
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
havoc for users of those services, i.e., most users.

The reality is however that TIPC_CFG_SRV never is bound through the
bind() function, since it doesn't represent a regular socket, and
TIPC_TOP_SRV can also be made to bypass the checks in tipc_bind()
by introducing a different entry function, tipc_sk_bind().

It should be noted that, although this is a change of the API semantics,
there is no risk we will break any currently working applications by
doing this. Any application trying to bind to the values in question
would be badly broken from the outset, so there is no chance we would
find any such applications in real-world production systems.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/socket.c | 24 +++++++++++++++---------
 net/tipc/socket.h |  2 +-
 net/tipc/topsrv.c |  4 ++--
 3 files changed, 18 insertions(+), 12 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index e795a8a2955b..222fd53da2d0 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -658,8 +658,8 @@ static int tipc_release(struct socket *sock)
  * NOTE: This routine doesn't need to take the socket lock since it doesn't
  *       access any non-constant socket information.
  */
-static int tipc_bind(struct socket *sock, struct sockaddr *uaddr,
-		     int uaddr_len)
+
+int tipc_sk_bind(struct socket *sock, struct sockaddr *uaddr, int uaddr_len)
 {
 	struct sock *sk = sock->sk;
 	struct sockaddr_tipc *addr = (struct sockaddr_tipc *)uaddr;
@@ -691,13 +691,6 @@ static int tipc_bind(struct socket *sock, struct sockaddr *uaddr,
 		goto exit;
 	}
 
-	if ((addr->addr.nameseq.type < TIPC_RESERVED_TYPES) &&
-	    (addr->addr.nameseq.type != TIPC_TOP_SRV) &&
-	    (addr->addr.nameseq.type != TIPC_CFG_SRV)) {
-		res = -EACCES;
-		goto exit;
-	}
-
 	res = (addr->scope >= 0) ?
 		tipc_sk_publish(tsk, addr->scope, &addr->addr.nameseq) :
 		tipc_sk_withdraw(tsk, -addr->scope, &addr->addr.nameseq);
@@ -706,6 +699,19 @@ static int tipc_bind(struct socket *sock, struct sockaddr *uaddr,
 	return res;
 }
 
+static int tipc_bind(struct socket *sock, struct sockaddr *skaddr, int alen)
+{
+	struct sockaddr_tipc *addr = (struct sockaddr_tipc *)skaddr;
+
+	if (alen) {
+		if (alen < sizeof(struct sockaddr_tipc))
+			return -EINVAL;
+		if (addr->addr.nameseq.type < TIPC_RESERVED_TYPES)
+			return -EACCES;
+	}
+	return tipc_sk_bind(sock, skaddr, alen);
+}
+
 /**
  * tipc_getname - get port ID of socket or peer socket
  * @sock: socket structure
diff --git a/net/tipc/socket.h b/net/tipc/socket.h
index b11575afc66f..02cdf166807d 100644
--- a/net/tipc/socket.h
+++ b/net/tipc/socket.h
@@ -74,7 +74,7 @@ int tipc_dump_done(struct netlink_callback *cb);
 u32 tipc_sock_get_portid(struct sock *sk);
 bool tipc_sk_overlimit1(struct sock *sk, struct sk_buff *skb);
 bool tipc_sk_overlimit2(struct sock *sk, struct sk_buff *skb);
-
+int tipc_sk_bind(struct socket *sock, struct sockaddr *skaddr, int alen);
 int tsk_set_importance(struct sock *sk, int imp);
 
 #endif
diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
index 5f6f86051c83..cec029349662 100644
--- a/net/tipc/topsrv.c
+++ b/net/tipc/topsrv.c
@@ -520,12 +520,12 @@ static int tipc_topsrv_create_listener(struct tipc_topsrv *srv)
 
 	saddr.family	                = AF_TIPC;
 	saddr.addrtype		        = TIPC_ADDR_NAMESEQ;
-	saddr.addr.nameseq.type	        = TIPC_TOP_SRV;
+	saddr.addr.nameseq.type         = TIPC_TOP_SRV;
 	saddr.addr.nameseq.lower	= TIPC_TOP_SRV;
 	saddr.addr.nameseq.upper	= TIPC_TOP_SRV;
 	saddr.scope			= TIPC_NODE_SCOPE;
 
-	rc = kernel_bind(lsock, (struct sockaddr *)&saddr, sizeof(saddr));
+	rc = tipc_sk_bind(lsock, (struct sockaddr *)&saddr, sizeof(saddr));
 	if (rc < 0)
 		goto err;
 	rc = kernel_listen(lsock, 0);
-- 
2.25.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
