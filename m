Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BEA4326DFD
	for <lists+tipc-discussion@lfdr.de>; Sat, 27 Feb 2021 17:56:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lG2tJ-0002EG-1O; Sat, 27 Feb 2021 16:56:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lG2tB-0002DF-Ch
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1yVHsqXqNifjg5EoZ4lIDye+cRiZVedRwqnG3mYLTsQ=; b=feJl4SEsj+NTzRbC3mZeSYRQLg
 b1d3er1v2k25z4ieI8zd6stJqBwDyeAGorXaJJNcNLj8wEqqLAmUtce12UVr72h3mvNScyqbDeJcq
 AV/w+6+Dd1R8GjXqLLs51SYEs8iShyJyGRhvN5gBks7HOT+Jdww6euUpKiK3SVygo69Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1yVHsqXqNifjg5EoZ4lIDye+cRiZVedRwqnG3mYLTsQ=; b=YvHarNmhUNV94T7I2RAJ/Cu+vW
 wAbWmVY62NqhXnjmDnhcyXnbTVsfIMR0HavGs+KyWmXhqMz8ug772XWs40jdRI79q0Cm5yIYYdwZo
 tksFYaHUk2mKXNG49x9xdbVP9t5Bhn+dDifRCVauDyy0nVoQvI9cZl6k2tuaDUcsE49I=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lG2t1-007iBZ-Nf
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614444965;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1yVHsqXqNifjg5EoZ4lIDye+cRiZVedRwqnG3mYLTsQ=;
 b=JAMTcdNzlOLIcg6G+RfqfuH/5W7zptyHAPw3hSEP/n374s6rHHqc5/UqzVAGjQ4OjQOHNC
 WizIcWp4OZoSIWoc8q5K5Mn9J5+lBopxQgigs8FZusQzcbgLvZRRWjnpdO2crcetXn8dO5
 2zXdqKPIcvvKPIpF/b7TuiCrXFDIajQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-67-ISHT0Y6xNr2RaY9mqiCAkw-1; Sat, 27 Feb 2021 11:56:03 -0500
X-MC-Unique: ISHT0Y6xNr2RaY9mqiCAkw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DB5891868406;
 Sat, 27 Feb 2021 16:56:01 +0000 (UTC)
Received: from fenrir.redhat.com (ovpn-114-105.rdu2.redhat.com [10.10.114.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9B73C669F2;
 Sat, 27 Feb 2021 16:56:00 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Sat, 27 Feb 2021 11:55:37 -0500
Message-Id: <20210227165542.3781624-12-jmaloy@redhat.com>
In-Reply-To: <20210227165542.3781624-1-jmaloy@redhat.com>
References: <20210227165542.3781624-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lG2t1-007iBZ-Nf
Subject: [tipc-discussion] [net-next v2 11/16] tipc: simplify signature of
 tipc_nametbl_lookup_group()
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

We reduce the signature of tipc_nametbl_lookup_group() by using a
struct tipc_uaddr pointer. This entails a couple of minor changes in the
functions tipc_send_group_mcast/anycast/unicast/bcast() in socket.c

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
Acked-by: Ying Xue <ying.xue@windriver.com>
Acked-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/name_table.c | 14 +++++++-------
 net/tipc/name_table.h |  7 +++----
 net/tipc/socket.c     | 42 +++++++++++++++++-------------------------
 3 files changed, 27 insertions(+), 36 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 33b79a5da8c9..1ce65cbce672 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -621,31 +621,31 @@ bool tipc_nametbl_lookup_anycast(struct net *net,
  * destination socket/node pairs matching the given address.
  * The requester may or may not want to exclude himself from the list.
  */
-bool tipc_nametbl_lookup_group(struct net *net, u32 type, u32 instance,
-			       u32 scope, struct list_head *dsts,
-			       int *dstcnt, u32 exclude,
-			       bool mcast)
+bool tipc_nametbl_lookup_group(struct net *net, struct tipc_uaddr *ua,
+			       struct list_head *dsts, int *dstcnt,
+			       u32 exclude, bool mcast)
 {
 	u32 self = tipc_own_addr(net);
+	u32 inst = ua->sa.instance;
 	struct service_range *sr;
 	struct tipc_service *sc;
 	struct publication *p;
 
 	*dstcnt = 0;
 	rcu_read_lock();
-	sc = tipc_service_find(net, type);
+	sc = tipc_service_find(net, ua->sa.type);
 	if (unlikely(!sc))
 		goto exit;
 
 	spin_lock_bh(&sc->lock);
 
 	/* Todo: a full search i.e. service_range_foreach_match() instead? */
-	sr = service_range_match_first(sc->ranges.rb_node, instance, instance);
+	sr = service_range_match_first(sc->ranges.rb_node, inst, inst);
 	if (!sr)
 		goto no_match;
 
 	list_for_each_entry(p, &sr->all_publ, all_publ) {
-		if (p->scope != scope)
+		if (p->scope != ua->scope)
 			continue;
 		if (p->sk.ref == exclude && p->sk.node == self)
 			continue;
diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
index c5aa45abbdc3..b20b694c1284 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -116,10 +116,9 @@ void tipc_nametbl_lookup_mcast_sockets(struct net *net, struct tipc_uaddr *ua,
 				       bool exact, struct list_head *dports);
 void tipc_nametbl_lookup_mcast_nodes(struct net *net, struct tipc_uaddr *ua,
 				     struct tipc_nlist *nodes);
-bool tipc_nametbl_lookup_group(struct net *net, u32 type, u32 instance,
-			       u32 domain, struct list_head *dsts,
-			       int *dstcnt, u32 exclude,
-			       bool all);
+bool tipc_nametbl_lookup_group(struct net *net, struct tipc_uaddr *ua,
+			       struct list_head *dsts, int *dstcnt,
+			       u32 exclude, bool mcast);
 void tipc_nametbl_build_group(struct net *net, struct tipc_group *grp,
 			      u32 type, u32 domain);
 struct publication *tipc_nametbl_publish(struct net *net, struct tipc_uaddr *ua,
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 83d7c9c25c63..a7f86f22c03a 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -958,7 +958,7 @@ static int tipc_send_group_unicast(struct socket *sock, struct msghdr *m,
 				   int dlen, long timeout)
 {
 	struct sock *sk = sock->sk;
-	DECLARE_SOCKADDR(struct sockaddr_tipc *, dest, m->msg_name);
+	struct tipc_uaddr *ua = (struct tipc_uaddr *)m->msg_name;
 	int blks = tsk_blocks(GROUP_H_SIZE + dlen);
 	struct tipc_sock *tsk = tipc_sk(sk);
 	struct net *net = sock_net(sk);
@@ -966,8 +966,8 @@ static int tipc_send_group_unicast(struct socket *sock, struct msghdr *m,
 	u32 node, port;
 	int rc;
 
-	node = dest->addr.id.node;
-	port = dest->addr.id.ref;
+	node = ua->sk.node;
+	port = ua->sk.ref;
 	if (!port && !node)
 		return -EHOSTUNREACH;
 
@@ -1001,7 +1001,7 @@ static int tipc_send_group_unicast(struct socket *sock, struct msghdr *m,
 static int tipc_send_group_anycast(struct socket *sock, struct msghdr *m,
 				   int dlen, long timeout)
 {
-	DECLARE_SOCKADDR(struct sockaddr_tipc *, dest, m->msg_name);
+	struct tipc_uaddr *ua = (struct tipc_uaddr *)m->msg_name;
 	struct sock *sk = sock->sk;
 	struct tipc_sock *tsk = tipc_sk(sk);
 	struct list_head *cong_links = &tsk->cong_links;
@@ -1012,16 +1012,13 @@ static int tipc_send_group_anycast(struct socket *sock, struct msghdr *m,
 	struct net *net = sock_net(sk);
 	u32 node, port, exclude;
 	struct list_head dsts;
-	u32 type, inst, scope;
 	int lookups = 0;
 	int dstcnt, rc;
 	bool cong;
 
 	INIT_LIST_HEAD(&dsts);
-
-	type = msg_nametype(hdr);
-	inst = dest->addr.name.name.instance;
-	scope = msg_lookup_scope(hdr);
+	ua->sa.type = msg_nametype(hdr);
+	ua->scope = msg_lookup_scope(hdr);
 
 	while (++lookups < 4) {
 		exclude = tipc_group_exclude(tsk->group);
@@ -1030,9 +1027,8 @@ static int tipc_send_group_anycast(struct socket *sock, struct msghdr *m,
 
 		/* Look for a non-congested destination member, if any */
 		while (1) {
-			if (!tipc_nametbl_lookup_group(net, type, inst, scope,
-						       &dsts, &dstcnt, exclude,
-						       false))
+			if (!tipc_nametbl_lookup_group(net, ua, &dsts, &dstcnt,
+						       exclude, false))
 				return -EHOSTUNREACH;
 			tipc_dest_pop(&dsts, &node, &port);
 			cong = tipc_group_cong(tsk->group, node, port, blks,
@@ -1087,7 +1083,7 @@ static int tipc_send_group_anycast(struct socket *sock, struct msghdr *m,
 static int tipc_send_group_bcast(struct socket *sock, struct msghdr *m,
 				 int dlen, long timeout)
 {
-	DECLARE_SOCKADDR(struct sockaddr_tipc *, dest, m->msg_name);
+	struct tipc_uaddr *ua = (struct tipc_uaddr *)m->msg_name;
 	struct sock *sk = sock->sk;
 	struct net *net = sock_net(sk);
 	struct tipc_sock *tsk = tipc_sk(sk);
@@ -1112,9 +1108,9 @@ static int tipc_send_group_bcast(struct socket *sock, struct msghdr *m,
 		return -EHOSTUNREACH;
 
 	/* Complete message header */
-	if (dest) {
+	if (ua) {
 		msg_set_type(hdr, TIPC_GRP_MCAST_MSG);
-		msg_set_nameinst(hdr, dest->addr.name.name.instance);
+		msg_set_nameinst(hdr, ua->sa.instance);
 	} else {
 		msg_set_type(hdr, TIPC_GRP_BCAST_MSG);
 		msg_set_nameinst(hdr, 0);
@@ -1161,29 +1157,25 @@ static int tipc_send_group_bcast(struct socket *sock, struct msghdr *m,
 static int tipc_send_group_mcast(struct socket *sock, struct msghdr *m,
 				 int dlen, long timeout)
 {
+	struct tipc_uaddr *ua = (struct tipc_uaddr *)m->msg_name;
 	struct sock *sk = sock->sk;
-	DECLARE_SOCKADDR(struct sockaddr_tipc *, dest, m->msg_name);
 	struct tipc_sock *tsk = tipc_sk(sk);
 	struct tipc_group *grp = tsk->group;
 	struct tipc_msg *hdr = &tsk->phdr;
 	struct net *net = sock_net(sk);
-	u32 type, inst, scope, exclude;
 	struct list_head dsts;
-	u32 dstcnt;
+	u32 dstcnt, exclude;
 
 	INIT_LIST_HEAD(&dsts);
-
-	type = msg_nametype(hdr);
-	inst = dest->addr.name.name.instance;
-	scope = msg_lookup_scope(hdr);
+	ua->sa.type = msg_nametype(hdr);
+	ua->scope = msg_lookup_scope(hdr);
 	exclude = tipc_group_exclude(grp);
 
-	if (!tipc_nametbl_lookup_group(net, type, inst, scope, &dsts,
-				       &dstcnt, exclude, true))
+	if (!tipc_nametbl_lookup_group(net, ua, &dsts, &dstcnt, exclude, true))
 		return -EHOSTUNREACH;
 
 	if (dstcnt == 1) {
-		tipc_dest_pop(&dsts, &dest->addr.id.node, &dest->addr.id.ref);
+		tipc_dest_pop(&dsts, &ua->sk.node, &ua->sk.ref);
 		return tipc_send_group_unicast(sock, m, dlen, timeout);
 	}
 
-- 
2.29.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
