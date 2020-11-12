Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 440F12AFBEB
	for <lists+tipc-discussion@lfdr.de>; Thu, 12 Nov 2020 02:27:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kd1OG-0003xE-FA; Thu, 12 Nov 2020 01:27:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kd1OF-0003wx-7a
 for tipc-discussion@lists.sourceforge.net; Thu, 12 Nov 2020 01:27:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MLXYE4pXBKOpSvxzajEoWxOzbdA77UoZDWtNQ5rmwHU=; b=UZ9UXlGr10WQ3WsAIha7VGyqwL
 tBThmleHIFS1+GxjeeECaELXW56fe8naaCDH6zGG39kfpkK+uwxWpb8Tf0+Kfb7AeEZCjoCaxIH/S
 W1DhRU7O8dPiofICq7wy2pIBpIg5h6IAJzXVFY9BxOEb7h8o2WUSZhaNGFBW+vL1b7q4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MLXYE4pXBKOpSvxzajEoWxOzbdA77UoZDWtNQ5rmwHU=; b=QzM6k6WwQQSetzG+i0A96izf5j
 lLk5EYYQQ5wwPKSoDATa6qP8o4sMLQ6ogyS5jVYCJQs5Q45Ai6lxxIvvVpPtv8W+fyBhR4ivKJSyJ
 xMsPgdpkRfrVnryc+89kOgFhAlz5JmY8dbe62HdCyeezdDUIsk+QKzqq1XcAQ9JHc0SE=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kd1O3-00HXl4-7l
 for tipc-discussion@lists.sourceforge.net; Thu, 12 Nov 2020 01:27:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605144409;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MLXYE4pXBKOpSvxzajEoWxOzbdA77UoZDWtNQ5rmwHU=;
 b=MyFXgXkiZ4tmFbi2V+VAZrfR+aT4CwipUqnVQ6B6GgoprkDy8jHaCBpEmx1YzvmnemNR1w
 BVizFs2neDyplXd4aTIq0xtXB2uRQ4EIbmJC+LOlupCd2pIXBnZrxXKNb1aDXTgjP2riy4
 EE7yYgb2aeFpo+CJHAK5WlHVyxXrBGk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-396-9_9wMNuePOu_-pEsjYLXng-1; Wed, 11 Nov 2020 20:26:45 -0500
X-MC-Unique: 9_9wMNuePOu_-pEsjYLXng-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AFE611074647;
 Thu, 12 Nov 2020 01:26:43 +0000 (UTC)
Received: from f31.redhat.com (ovpn-112-40.rdu2.redhat.com [10.10.112.40])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A175B5C62B;
 Thu, 12 Nov 2020 01:26:42 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Wed, 11 Nov 2020 20:26:38 -0500
Message-Id: <20201112012640.525346-2-jmaloy@redhat.com>
In-Reply-To: <20201112012640.525346-1-jmaloy@redhat.com>
References: <20201112012640.525346-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kd1O3-00HXl4-7l
Subject: [tipc-discussion] [net-next 1/3] tipc: refactor tipc_sk_bind()
 function
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

We refactor the tipc_sk_bind() function, so that the lock handling
is handled separately from the logics. We also move some sanity
tests to earlier in the call chain, to the function tipc_bind().

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/socket.c | 66 +++++++++++++++++++++--------------------------
 1 file changed, 30 insertions(+), 36 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 69c4b16e8184..2b633463f40d 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1,8 +1,9 @@
 /*
  * net/tipc/socket.c: TIPC socket API
  *
- * Copyright (c) 2001-2007, 2012-2017, Ericsson AB
+ * Copyright (c) 2001-2007, 2012-2019, Ericsson AB
  * Copyright (c) 2004-2008, 2010-2013, Wind River Systems
+ * Copyright (c) 2020, Red Hat Inc
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without
@@ -644,10 +645,10 @@ static int tipc_release(struct socket *sock)
 }
 
 /**
- * tipc_bind - associate or disassocate TIPC name(s) with a socket
+ * __tipc_bind - associate or disassocate TIPC name(s) with a socket
  * @sock: socket structure
- * @uaddr: socket address describing name(s) and desired operation
- * @uaddr_len: size of socket address data structure
+ * @skaddr: socket address describing name(s) and desired operation
+ * @alen: size of socket address data structure
  *
  * Name and name sequence binding is indicated using a positive scope value;
  * a negative scope value unbinds the specified name.  Specifying no name
@@ -658,44 +659,33 @@ static int tipc_release(struct socket *sock)
  * NOTE: This routine doesn't need to take the socket lock since it doesn't
  *       access any non-constant socket information.
  */
-
-int tipc_sk_bind(struct socket *sock, struct sockaddr *uaddr, int uaddr_len)
+static int __tipc_bind(struct socket *sock, struct sockaddr *skaddr, int alen)
 {
-	struct sock *sk = sock->sk;
-	struct sockaddr_tipc *addr = (struct sockaddr_tipc *)uaddr;
-	struct tipc_sock *tsk = tipc_sk(sk);
-	int res = -EINVAL;
+	struct sockaddr_tipc *addr = (struct sockaddr_tipc *)skaddr;
+	struct tipc_sock *tsk = tipc_sk(sock->sk);
 
-	lock_sock(sk);
-	if (unlikely(!uaddr_len)) {
-		res = tipc_sk_withdraw(tsk, 0, NULL);
-		goto exit;
-	}
-	if (tsk->group) {
-		res = -EACCES;
-		goto exit;
-	}
-	if (uaddr_len < sizeof(struct sockaddr_tipc)) {
-		res = -EINVAL;
-		goto exit;
-	}
-	if (addr->family != AF_TIPC) {
-		res = -EAFNOSUPPORT;
-		goto exit;
-	}
+	if (unlikely(!alen))
+		return tipc_sk_withdraw(tsk, 0, NULL);
 
 	if (addr->addrtype == TIPC_ADDR_NAME)
 		addr->addr.nameseq.upper = addr->addr.nameseq.lower;
-	else if (addr->addrtype != TIPC_ADDR_NAMESEQ) {
-		res = -EAFNOSUPPORT;
-		goto exit;
-	}
 
-	res = (addr->scope >= 0) ?
-		tipc_sk_publish(tsk, addr->scope, &addr->addr.nameseq) :
-		tipc_sk_withdraw(tsk, -addr->scope, &addr->addr.nameseq);
-exit:
-	release_sock(sk);
+	if (tsk->group)
+		return -EACCES;
+
+	if (addr->scope >= 0)
+		return tipc_sk_publish(tsk, addr->scope, &addr->addr.nameseq);
+	else
+		return tipc_sk_withdraw(tsk, -addr->scope, &addr->addr.nameseq);
+}
+
+int tipc_sk_bind(struct socket *sock, struct sockaddr *skaddr, int alen)
+{
+	int res;
+
+	lock_sock(sock->sk);
+	res = __tipc_bind(sock, skaddr, alen);
+	release_sock(sock->sk);
 	return res;
 }
 
@@ -706,6 +696,10 @@ static int tipc_bind(struct socket *sock, struct sockaddr *skaddr, int alen)
 	if (alen) {
 		if (alen < sizeof(struct sockaddr_tipc))
 			return -EINVAL;
+		if (addr->family != AF_TIPC)
+			return -EAFNOSUPPORT;
+		if (addr->addrtype > TIPC_SERVICE_ADDR)
+			return -EAFNOSUPPORT;
 		if (addr->addr.nameseq.type < TIPC_RESERVED_TYPES) {
 			pr_warn_once("Can't bind to reserved service type %u\n",
 				     addr->addr.nameseq.type);
-- 
2.25.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
