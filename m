Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6F52D325B
	for <lists+tipc-discussion@lfdr.de>; Tue,  8 Dec 2020 19:51:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kmi4g-0007vb-GU; Tue, 08 Dec 2020 18:50:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kmi4e-0007vF-Co
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:50:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lR7VeEOcC6ScTBNsUpp8RItrFCoD2CtP6V8oRXYVmQY=; b=h03zraX2sSWhVf7+4Vpkf62KBx
 KxjkmgLsCB5C/IWfj2+uhhVJynRstGmB39ASoTx7xb9c8a3iFE0cgUKamB9UIWnfunLcsPmbE9rPj
 pRKuav/JU/l4+eS9N6RFo8/rZjTjyMhL2d04BYUXKGKIoAvrYdk8gs2MNOc2Gs159X/A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lR7VeEOcC6ScTBNsUpp8RItrFCoD2CtP6V8oRXYVmQY=; b=POUsKf6CxI5V2x0g8RB2Lx5Ql2
 Bz8xGGkenVShX/dOUosY/meMoTatfppWZ4SkgAFCd9dOIdwVsXGBOmOEJgSthxTiBtOkAJnkyo/WI
 fvD1V4H7jFuMULcgIa1QaIdvXpbf8D5dU2aFWualDkAbYTHO0OV4F3KAylxxmFeWuslM=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kmi4b-003uhW-GS
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:50:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607453447;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lR7VeEOcC6ScTBNsUpp8RItrFCoD2CtP6V8oRXYVmQY=;
 b=ZrmC9lln0+bYO9MGjJ06G+acHJZGzTKX/FpHHJyu6JJJoHW+M8ztD6BXjtdS6wdgK2nfPH
 /Q2+NywuiL+iOc78JK0ibqDcqy2y/xYTXQaRCwAqk94bURJjLfhqobHIAiXx/MJMQXxl8Y
 FVKVuGkFCjDyLSglIJOiOxvxYLK4CFg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-565--jpEcXYvNXitlckzT_u7YQ-1; Tue, 08 Dec 2020 13:50:45 -0500
X-MC-Unique: -jpEcXYvNXitlckzT_u7YQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E7C121926DC6;
 Tue,  8 Dec 2020 18:50:23 +0000 (UTC)
Received: from f31.redhat.com (ovpn-116-129.rdu2.redhat.com [10.10.116.129])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 672192B394;
 Tue,  8 Dec 2020 18:50:22 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Tue,  8 Dec 2020 13:50:00 -0500
Message-Id: <20201208185012.265508-5-jmaloy@redhat.com>
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
 trust [216.205.24.124 listed in list.dnswl.org]
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
X-Headers-End: 1kmi4b-003uhW-GS
Subject: [tipc-discussion] [net-next 04/16] tipc: simplify signature of
 tipc_namtbl_publish()
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

Using the new address structure tipc_uaddr, we simplify the signature
of function tipc_sk_publish() and tipc_namtbl_publish() so that fewer
parameters need to be passed around.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/name_table.c | 10 +++---
 net/tipc/name_table.h |  6 ++--
 net/tipc/net.c        |  8 +++--
 net/tipc/node.c       | 29 +++++++++--------
 net/tipc/socket.c     | 75 +++++++++++++++++++++++--------------------
 5 files changed, 70 insertions(+), 58 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 68e269b49780..d951e9345122 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -742,9 +742,8 @@ void tipc_nametbl_build_group(struct net *net, struct tipc_group *grp,
 
 /* tipc_nametbl_publish - add service binding to name table
  */
-struct publication *tipc_nametbl_publish(struct net *net, u32 type, u32 lower,
-					 u32 upper, u32 scope, u32 port,
-					 u32 key)
+struct publication *tipc_nametbl_publish(struct net *net, struct tipc_uaddr *ua,
+					 struct tipc_socket_addr *sk, u32 key)
 {
 	struct name_table *nt = tipc_name_table(net);
 	struct tipc_net *tn = tipc_net(net);
@@ -759,8 +758,9 @@ struct publication *tipc_nametbl_publish(struct net *net, u32 type, u32 lower,
 		goto exit;
 	}
 
-	p = tipc_nametbl_insert_publ(net, type, lower, upper, scope,
-				     tipc_own_addr(net), port, key);
+	p = tipc_nametbl_insert_publ(net, ua->sr.type, ua->sr.lower,
+				     ua->sr.upper, ua->scope,
+				     sk->node, sk->ref, key);
 	if (p) {
 		nt->local_publ_count++;
 		skb = tipc_named_publish(net, p);
diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
index 3fff00440e1a..5e969e060509 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -42,6 +42,7 @@ struct tipc_subscription;
 struct tipc_plist;
 struct tipc_nlist;
 struct tipc_group;
+struct tipc_uaddr;
 
 /*
  * TIPC name types reserved for internal TIPC use (both current and planned)
@@ -120,9 +121,8 @@ void tipc_nametbl_lookup_dst_nodes(struct net *net, u32 type, u32 lower,
 bool tipc_nametbl_lookup(struct net *net, u32 type, u32 instance, u32 domain,
 			 struct list_head *dsts, int *dstcnt, u32 exclude,
 			 bool all);
-struct publication *tipc_nametbl_publish(struct net *net, u32 type, u32 lower,
-					 u32 upper, u32 scope, u32 port,
-					 u32 key);
+struct publication *tipc_nametbl_publish(struct net *net, struct tipc_uaddr *ua,
+					 struct tipc_socket_addr *sk, u32 key);
 int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower, u32 upper,
 			  u32 key);
 struct publication *tipc_nametbl_insert_publ(struct net *net, u32 type,
diff --git a/net/tipc/net.c b/net/tipc/net.c
index a129f661bee3..3f927949bb23 100644
--- a/net/tipc/net.c
+++ b/net/tipc/net.c
@@ -125,6 +125,11 @@ int tipc_net_init(struct net *net, u8 *node_id, u32 addr)
 static void tipc_net_finalize(struct net *net, u32 addr)
 {
 	struct tipc_net *tn = tipc_net(net);
+	struct tipc_socket_addr sk = {0, addr};
+	struct tipc_uaddr ua;
+
+	tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_CLUSTER_SCOPE,
+		   TIPC_NODE_STATE, addr, addr);
 
 	if (cmpxchg(&tn->node_addr, 0, addr))
 		return;
@@ -132,8 +137,7 @@ static void tipc_net_finalize(struct net *net, u32 addr)
 	tipc_named_reinit(net);
 	tipc_sk_reinit(net);
 	tipc_mon_reinit_self(net);
-	tipc_nametbl_publish(net, TIPC_NODE_STATE, addr, addr,
-			     TIPC_CLUSTER_SCOPE, 0, addr);
+	tipc_nametbl_publish(net, &ua, &sk, addr);
 }
 
 void tipc_net_finalize_work(struct work_struct *work)
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 86b4d7ffb47a..3a71e26c9509 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -393,21 +393,23 @@ static void tipc_node_write_unlock_fast(struct tipc_node *n)
 
 static void tipc_node_write_unlock(struct tipc_node *n)
 {
+	struct tipc_socket_addr sk;
 	struct net *net = n->net;
-	u32 addr = 0;
 	u32 flags = n->action_flags;
-	u32 link_id = 0;
-	u32 bearer_id;
 	struct list_head *publ_list;
+	struct tipc_uaddr ua;
+	u32 bearer_id;
 
 	if (likely(!flags)) {
 		write_unlock_bh(&n->lock);
 		return;
 	}
 
-	addr = n->addr;
-	link_id = n->link_id;
-	bearer_id = link_id & 0xffff;
+	tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_NODE_SCOPE,
+		   TIPC_LINK_STATE, n->addr, n->addr);
+	sk.ref = n->link_id;
+	sk.node = n->addr;
+	bearer_id = n->link_id & 0xffff;
 	publ_list = &n->publ_list;
 
 	n->action_flags &= ~(TIPC_NOTIFY_NODE_DOWN | TIPC_NOTIFY_NODE_UP |
@@ -416,20 +418,19 @@ static void tipc_node_write_unlock(struct tipc_node *n)
 	write_unlock_bh(&n->lock);
 
 	if (flags & TIPC_NOTIFY_NODE_DOWN)
-		tipc_publ_notify(net, publ_list, addr, n->capabilities);
+		tipc_publ_notify(net, publ_list, n->addr, n->capabilities);
 
 	if (flags & TIPC_NOTIFY_NODE_UP)
-		tipc_named_node_up(net, addr, n->capabilities);
+		tipc_named_node_up(net, n->addr, n->capabilities);
 
 	if (flags & TIPC_NOTIFY_LINK_UP) {
-		tipc_mon_peer_up(net, addr, bearer_id);
-		tipc_nametbl_publish(net, TIPC_LINK_STATE, addr, addr,
-				     TIPC_NODE_SCOPE, link_id, link_id);
+		tipc_mon_peer_up(net, n->addr, bearer_id);
+		tipc_nametbl_publish(net, &ua, &sk, n->link_id);
 	}
 	if (flags & TIPC_NOTIFY_LINK_DOWN) {
-		tipc_mon_peer_down(net, addr, bearer_id);
-		tipc_nametbl_withdraw(net, TIPC_LINK_STATE, addr,
-				      addr, link_id);
+		tipc_mon_peer_down(net, n->addr, bearer_id);
+		tipc_nametbl_withdraw(net, TIPC_LINK_STATE, n->addr,
+				      n->addr, n->link_id);
 	}
 }
 
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index bff14df40bc9..598c8611b75f 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -111,7 +111,6 @@ struct tipc_sock {
 	struct sock sk;
 	u32 conn_type;
 	u32 conn_instance;
-	int published;
 	u32 max_pkt;
 	u32 maxnagle;
 	u32 portid;
@@ -141,6 +140,7 @@ struct tipc_sock {
 	bool expect_ack;
 	bool nodelay;
 	bool group_is_open;
+	bool published;
 };
 
 static int tipc_sk_backlog_rcv(struct sock *sk, struct sk_buff *skb);
@@ -151,8 +151,7 @@ static int tipc_release(struct socket *sock);
 static int tipc_accept(struct socket *sock, struct socket *new_sock, int flags,
 		       bool kern);
 static void tipc_sk_timeout(struct timer_list *t);
-static int tipc_sk_publish(struct tipc_sock *tsk, uint scope,
-			   struct tipc_service_range const *seq);
+static int tipc_sk_publish(struct tipc_sock *tsk, struct tipc_uaddr *ua);
 static int tipc_sk_withdraw(struct tipc_sock *tsk, uint scope,
 			    struct tipc_service_range const *seq);
 static int tipc_sk_leave(struct tipc_sock *tsk);
@@ -677,22 +676,31 @@ static int tipc_release(struct socket *sock)
  */
 static int __tipc_bind(struct socket *sock, struct sockaddr *skaddr, int alen)
 {
-	struct sockaddr_tipc *addr = (struct sockaddr_tipc *)skaddr;
+	struct tipc_uaddr *ua = (struct tipc_uaddr *)skaddr;
 	struct tipc_sock *tsk = tipc_sk(sock->sk);
+	bool unbind = false;
 
 	if (unlikely(!alen))
 		return tipc_sk_withdraw(tsk, 0, NULL);
 
-	if (addr->addrtype == TIPC_SERVICE_ADDR)
-		addr->addr.nameseq.upper = addr->addr.nameseq.lower;
+	if (ua->addrtype == TIPC_SERVICE_ADDR) {
+		ua->addrtype = TIPC_SERVICE_RANGE;
+		ua->sr.upper = ua->sr.lower;
+	}
+	if (ua->scope < 0) {
+		unbind = true;
+		ua->scope = -ua->scope;
+	}
+	/* Users may still use deprecated TIPC_ZONE_SCOPE */
+	if (ua->scope != TIPC_NODE_SCOPE)
+		ua->scope = TIPC_CLUSTER_SCOPE;
 
 	if (tsk->group)
 		return -EACCES;
 
-	if (addr->scope >= 0)
-		return tipc_sk_publish(tsk, addr->scope, &addr->addr.nameseq);
-	else
-		return tipc_sk_withdraw(tsk, -addr->scope, &addr->addr.nameseq);
+	if (unbind)
+		return tipc_sk_withdraw(tsk, ua->scope, &ua->sr);
+	return tipc_sk_publish(tsk, ua);
 }
 
 int tipc_sk_bind(struct socket *sock, struct sockaddr *skaddr, int alen)
@@ -707,18 +715,17 @@ int tipc_sk_bind(struct socket *sock, struct sockaddr *skaddr, int alen)
 
 static int tipc_bind(struct socket *sock, struct sockaddr *skaddr, int alen)
 {
-	struct sockaddr_tipc *addr = (struct sockaddr_tipc *)skaddr;
+	struct tipc_uaddr *ua = (struct tipc_uaddr *)skaddr;
+	u32 atype = ua->addrtype;
 
 	if (alen) {
-		if (alen < sizeof(struct sockaddr_tipc))
+		if (!tipc_uaddr_valid(ua, alen))
 			return -EINVAL;
-		if (addr->family != AF_TIPC)
+		if (atype == TIPC_SOCKET_ADDR)
 			return -EAFNOSUPPORT;
-		if (addr->addrtype > TIPC_SERVICE_ADDR)
-			return -EAFNOSUPPORT;
-		if (addr->addr.nameseq.type < TIPC_RESERVED_TYPES) {
+		if (ua->sr.type < TIPC_RESERVED_TYPES) {
 			pr_warn_once("Can't bind to reserved service type %u\n",
-				     addr->addr.nameseq.type);
+				     ua->sr.type);
 			return -EACCES;
 		}
 	}
@@ -2891,31 +2898,28 @@ static void tipc_sk_timeout(struct timer_list *t)
 	sock_put(sk);
 }
 
-static int tipc_sk_publish(struct tipc_sock *tsk, uint scope,
-			   struct tipc_service_range const *seq)
+static int tipc_sk_publish(struct tipc_sock *tsk, struct tipc_uaddr *ua)
 {
 	struct sock *sk = &tsk->sk;
 	struct net *net = sock_net(sk);
-	struct publication *publ;
+	struct tipc_socket_addr skaddr;
+	struct publication *p;
 	u32 key;
 
-	if (scope != TIPC_NODE_SCOPE)
-		scope = TIPC_CLUSTER_SCOPE;
-
 	if (tipc_sk_connected(sk))
 		return -EINVAL;
 	key = tsk->portid + tsk->pub_count + 1;
 	if (key == tsk->portid)
 		return -EADDRINUSE;
-
-	publ = tipc_nametbl_publish(net, seq->type, seq->lower, seq->upper,
-				    scope, tsk->portid, key);
-	if (unlikely(!publ))
+	skaddr.ref = tsk->portid;
+	skaddr.node = tipc_own_addr(net);
+	p = tipc_nametbl_publish(net, ua, &skaddr, key);
+	if (unlikely(!p))
 		return -EINVAL;
 
-	list_add(&publ->binding_sock, &tsk->publications);
+	list_add(&p->binding_sock, &tsk->publications);
 	tsk->pub_count++;
-	tsk->published = 1;
+	tsk->published = true;
 	return 0;
 }
 
@@ -3067,7 +3071,7 @@ static int tipc_sk_join(struct tipc_sock *tsk, struct tipc_group_req *mreq)
 	struct net *net = sock_net(&tsk->sk);
 	struct tipc_group *grp = tsk->group;
 	struct tipc_msg *hdr = &tsk->phdr;
-	struct tipc_service_range seq;
+	struct tipc_uaddr ua;
 	int rc;
 
 	if (mreq->type < TIPC_RESERVED_TYPES)
@@ -3083,11 +3087,14 @@ static int tipc_sk_join(struct tipc_sock *tsk, struct tipc_group_req *mreq)
 	msg_set_lookup_scope(hdr, mreq->scope);
 	msg_set_nametype(hdr, mreq->type);
 	msg_set_dest_droppable(hdr, true);
-	seq.type = mreq->type;
-	seq.lower = mreq->instance;
-	seq.upper = seq.lower;
 	tipc_nametbl_build_group(net, grp, mreq->type, mreq->scope);
-	rc = tipc_sk_publish(tsk, mreq->scope, &seq);
+
+	ua.sr.type = mreq->type;
+	ua.sr.lower = mreq->instance;
+	ua.sr.upper = ua.sr.lower;
+	ua.scope = mreq->scope;
+	ua.addrtype = TIPC_SERVICE_RANGE;
+	rc = tipc_sk_publish(tsk, &ua);
 	if (rc) {
 		tipc_group_delete(net, grp);
 		tsk->group = NULL;
-- 
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
