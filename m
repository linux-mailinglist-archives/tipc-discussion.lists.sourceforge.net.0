Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 613212D326E
	for <lists+tipc-discussion@lfdr.de>; Tue,  8 Dec 2020 19:52:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kmi6M-0004zD-Gf; Tue, 08 Dec 2020 18:52:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kmi67-0004x9-A3
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:52:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e6HkfybTwa6U5YYJ/RRpXTimVwbalrZLaqBLqZ53PEg=; b=R4NwcDhOPK5wYhaQGMqRuaGkt7
 aCjhnatqDeL5dw9bXwdFKmU31w0sMOUAwXdPeomNnMRrsLMj1x0vyI1aW19576uA2+mH2xiF/I2fh
 nuB1oTwQ283J2j3aF+TnRs6S+j2wXiYlbvfYXIV3Vj20TgFUtcRVrnPFMf5bYQy/gnag=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e6HkfybTwa6U5YYJ/RRpXTimVwbalrZLaqBLqZ53PEg=; b=jzhNEW4P+XzNWGRHMo2n1SkDpq
 8pikn+ovovb6S1IuuyP6lLFNwRcI133LyqFlO5fJc7VBiBwlwYiJK03t8I2UNNABE/dUZIH7T4DvP
 0tHAIIh/zyZ/8kPVUL46CgMb5O533tylyyrabrWRuT41B4R97szgjWuMnUveHmc8jccY=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kmi5s-003umm-S2
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:52:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607453527;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=e6HkfybTwa6U5YYJ/RRpXTimVwbalrZLaqBLqZ53PEg=;
 b=S8AjpagOgd0Yb+UVsJYKwPVZYo4rUx0464jdQOBVyz6KBvizbsZVvNMzwZfs26gFODvuJe
 ERGoh9nqP+LWgPfWhzJRcLk9tTXIwiPrMvf4f2/2vfqFdRmSi2IaM6s6iGVBeLkBKboka5
 SKcShUDi6FJ/OczvE4mT/3WoMPYILhs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-176-AQqIvS_YNZ2_f7sdsy08lQ-1; Tue, 08 Dec 2020 13:50:45 -0500
X-MC-Unique: AQqIvS_YNZ2_f7sdsy08lQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6E529A0C30;
 Tue,  8 Dec 2020 18:50:38 +0000 (UTC)
Received: from f31.redhat.com (ovpn-116-129.rdu2.redhat.com [10.10.116.129])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C788560877;
 Tue,  8 Dec 2020 18:50:36 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Tue,  8 Dec 2020 13:50:07 -0500
Message-Id: <20201208185012.265508-12-jmaloy@redhat.com>
In-Reply-To: <20201208185012.265508-1-jmaloy@redhat.com>
References: <20201208185012.265508-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kmi5s-003umm-S2
Subject: [tipc-discussion] [net-next 11/16] tipc: simplify signature of
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
---
 net/tipc/name_table.c | 14 +++++++-------
 net/tipc/name_table.h |  7 +++----
 net/tipc/socket.c     | 42 +++++++++++++++++-------------------------
 3 files changed, 27 insertions(+), 36 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 23af099370fb..7f2fb446233e 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -624,31 +624,31 @@ bool tipc_nametbl_lookup_anycast(struct net *net,
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
index 259ba514193e..909eaf706553 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -117,10 +117,9 @@ void tipc_nametbl_lookup_mcast_sockets(struct net *net, struct tipc_uaddr *ua,
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
index 7d4807d0e2d1..a349160a5ae4 100644
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
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
