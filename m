Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B422D3263
	for <lists+tipc-discussion@lfdr.de>; Tue,  8 Dec 2020 19:51:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kmi54-0003EA-9F; Tue, 08 Dec 2020 18:51:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kmi53-0003E2-61
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:51:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Joy2M89T8jgA+Lf2lmC6lEKW3sgdifR1Z+QrSfli3Uk=; b=HJm/ulxJM5Gn9hTiPJG54QnHHf
 sPqnRc3xDCL8FYqA4+KyVU+NcKtAaCXvwVb46x12QVRRCr7HU3SzrM0hZTqi4z32RN6ruidWZkyKf
 utn6A3JUrJsFqU4P6po5rr7RAbZR/rGicNtYegwOxJf6pYDI49toQnULteVOlO0Hwbsw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Joy2M89T8jgA+Lf2lmC6lEKW3sgdifR1Z+QrSfli3Uk=; b=G/jFT2zdu0ZVnTyhbNbRXE53Qa
 uj9zuH1F/McXH7eDCA5zJdkH3wEuQWixN+fyaIXMv0RSni5Zj77ckbLlciC327ekiAhxCdIHQBboI
 nZXp8Gbsc4x8QiN9MwdsCOIfEDB6GSdpwtCM7DQSWLCieRCNLLcNaTlbehJLa/QA0ir8=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kmi4z-006v0u-6j
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:51:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607453471;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Joy2M89T8jgA+Lf2lmC6lEKW3sgdifR1Z+QrSfli3Uk=;
 b=ecf1YlkGKV3qIWb5L60jZf0c+UjbYB6Gno4ZZypsEV+neGd2QPF1OcQ0+b73h6rGa/SKo7
 MyD71GfddJ9Rqai3vi4AbS0JiFgfZTjHIER+KN2vjhD+AsRnpsyvyTGde4N/lP5oRxl4ni
 u8fxp1o/LVPRBPMLjlmuHf9IDY2qrcQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-580-CJ43r7HwM-uizoJP9AH7EQ-1; Tue, 08 Dec 2020 13:50:43 -0500
X-MC-Unique: CJ43r7HwM-uizoJP9AH7EQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 749A510866D1;
 Tue,  8 Dec 2020 18:50:27 +0000 (UTC)
Received: from f31.redhat.com (ovpn-116-129.rdu2.redhat.com [10.10.116.129])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9440C6091B;
 Tue,  8 Dec 2020 18:50:25 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Tue,  8 Dec 2020 13:50:02 -0500
Message-Id: <20201208185012.265508-7-jmaloy@redhat.com>
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
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kmi4z-006v0u-6j
Subject: [tipc-discussion] [net-next 06/16] tipc: simplify signature of
 tipc_nametbl_withdraw() functions
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

Following the priniciples of the preceding commits, we reduce
the number of parameters passed along in tipc_sk_withdraw(),
tipc_nametbl_withdraw() and associated functions.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/name_distr.c | 11 ++++----
 net/tipc/name_table.c | 54 +++++++++++++++++++-----------------
 net/tipc/name_table.h | 11 ++++----
 net/tipc/node.c       |  3 +-
 net/tipc/socket.c     | 64 +++++++++++++++++++++----------------------
 5 files changed, 74 insertions(+), 69 deletions(-)

diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
index df42fc2b4536..fe5f39792323 100644
--- a/net/tipc/name_distr.c
+++ b/net/tipc/name_distr.c
@@ -244,17 +244,19 @@ static void tipc_publ_purge(struct net *net, struct publication *p, u32 addr)
 {
 	struct tipc_net *tn = tipc_net(net);
 	struct publication *_p;
+	struct tipc_uaddr ua;
 
+	tipc_uaddr(&ua, p->addrtype, p->scope, p->sr.type,
+		   p->sr.lower, p->sr.upper);
 	spin_lock_bh(&tn->nametbl_lock);
-	_p = tipc_nametbl_remove_publ(net, p->sr.type, p->sr.lower,
-				      p->sr.upper, p->sk.node, p->key);
+	_p = tipc_nametbl_remove_publ(net, &ua, &p->sk, p->key);
 	if (_p)
 		tipc_node_unsubscribe(net, &_p->binding_node, addr);
 	spin_unlock_bh(&tn->nametbl_lock);
 
 	if (_p != p) {
 		pr_err("Unable to remove publication from failed node\n"
-		       " (type=%u, lower=%u, node=0x%x, port=%u, key=%u)\n",
+		       " (type=%u, lower=%u, node=%u, port=%u, key=%u)\n",
 		       p->sr.type, p->sr.lower, p->sk.node, p->sk.ref, p->key);
 	}
 
@@ -309,8 +311,7 @@ static bool tipc_update_nametbl(struct net *net, struct distr_item *i,
 			return true;
 		}
 	} else if (dtype == WITHDRAWAL) {
-		p = tipc_nametbl_remove_publ(net, ua.sr.type, ua.sr.lower,
-					     ua.sr.upper, node, key);
+		p = tipc_nametbl_remove_publ(net, &ua, &sk, key);
 		if (p) {
 			tipc_node_unsubscribe(net, &p->binding_node, node);
 			kfree_rcu(p, rcu);
diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index ba96d5fc57f3..50562d086016 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -367,12 +367,15 @@ static bool tipc_service_insert_publ(struct net *net,
  * @node: target node
  * @key: target publication key
  */
-static struct publication *tipc_service_remove_publ(struct service_range *sr,
-						    u32 node, u32 key)
+static struct publication *tipc_service_remove_publ(struct service_range *r,
+						    struct tipc_uaddr *ua,
+						    struct tipc_socket_addr *sk,
+						    u32 key)
 {
 	struct publication *p;
+	u32 node = sk->node;
 
-	list_for_each_entry(p, &sr->all_publ, all_publ) {
+	list_for_each_entry(p, &r->all_publ, all_publ) {
 		if (p->key != key || (node && node != p->sk.node))
 			continue;
 		list_del(&p->all_publ);
@@ -496,32 +499,35 @@ struct publication *tipc_nametbl_insert_publ(struct net *net,
 	return NULL;
 }
 
-struct publication *tipc_nametbl_remove_publ(struct net *net, u32 type,
-					     u32 lower, u32 upper,
-					     u32 node, u32 key)
+struct publication *tipc_nametbl_remove_publ(struct net *net,
+					     struct tipc_uaddr *ua,
+					     struct tipc_socket_addr *sk,
+					     u32 key)
 {
-	struct tipc_service *sc = tipc_service_find(net, type);
 	struct tipc_subscription *sub, *tmp;
-	struct service_range *sr = NULL;
 	struct publication *p = NULL;
+	struct service_range *sr;
+	struct tipc_service *sc;
 	bool last;
 
+	sc = tipc_service_find(net, ua->sr.type);
 	if (!sc)
 		return NULL;
 
 	spin_lock_bh(&sc->lock);
-	sr = tipc_service_find_range(sc, lower, upper);
+	sr = tipc_service_find_range(sc, ua->sr.lower, ua->sr.upper);
 	if (!sr)
 		goto exit;
-	p = tipc_service_remove_publ(sr, node, key);
+	p = tipc_service_remove_publ(sr, ua, sk, key);
 	if (!p)
 		goto exit;
 
 	/* Notify any waiting subscriptions */
 	last = list_empty(&sr->all_publ);
 	list_for_each_entry_safe(sub, tmp, &sc->subscriptions, service_list) {
-		tipc_sub_report_overlap(sub, lower, upper, TIPC_WITHDRAWN,
-					p->sk.ref, node, p->scope, last);
+		tipc_sub_report_overlap(sub, ua->sr.lower, ua->sr.upper,
+					TIPC_WITHDRAWN, sk->ref, sk->node,
+					ua->scope, last);
 	}
 
 	/* Remove service range item if this was its last publication */
@@ -771,24 +777,22 @@ struct publication *tipc_nametbl_publish(struct net *net, struct tipc_uaddr *ua,
 /**
  * tipc_nametbl_withdraw - withdraw a service binding
  * @net: network namespace
- * @type: service type
- * @lower: service range lower bound
- * @upper: service range upper bound
+ * @ua: service address/range being unbound
+ * @sk: address of socket bveing unbound from
  * @key: target publication key
  */
-int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower,
-			  u32 upper, u32 key)
+void tipc_nametbl_withdraw(struct net *net, struct tipc_uaddr *ua,
+			   struct tipc_socket_addr *sk, u32 key)
 {
 	struct name_table *nt = tipc_name_table(net);
 	struct tipc_net *tn = tipc_net(net);
-	u32 self = tipc_own_addr(net);
 	struct sk_buff *skb = NULL;
 	struct publication *p;
 	u32 rc_dests;
 
 	spin_lock_bh(&tn->nametbl_lock);
 
-	p = tipc_nametbl_remove_publ(net, type, lower, upper, self, key);
+	p = tipc_nametbl_remove_publ(net, ua, sk, key);
 	if (p) {
 		nt->local_publ_count--;
 		skb = tipc_named_withdraw(net, p);
@@ -796,16 +800,13 @@ int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower,
 		kfree_rcu(p, rcu);
 	} else {
 		pr_err("Failed to remove local publication {%u,%u,%u}/%u\n",
-		       type, lower, upper, key);
+		       ua->sr.type, ua->sr.lower, ua->sr.upper, key);
 	}
 	rc_dests = nt->rc_dests;
 	spin_unlock_bh(&tn->nametbl_lock);
 
-	if (skb) {
+	if (skb)
 		tipc_node_broadcast(net, skb, rc_dests);
-		return 1;
-	}
-	return 0;
 }
 
 /**
@@ -899,11 +900,14 @@ static void tipc_service_delete(struct net *net, struct tipc_service *sc)
 {
 	struct service_range *sr, *tmpr;
 	struct publication *p, *tmp;
+	struct tipc_uaddr ua;
 
 	spin_lock_bh(&sc->lock);
 	rbtree_postorder_for_each_entry_safe(sr, tmpr, &sc->ranges, tree_node) {
 		list_for_each_entry_safe(p, tmp, &sr->all_publ, all_publ) {
-			tipc_service_remove_publ(sr, p->sk.node, p->key);
+			tipc_uaddr(&ua, p->addrtype, p->scope,
+				   p->sr.type, p->sr.lower, p->sr.upper);
+			tipc_service_remove_publ(sr, &ua, &p->sk, p->key);
 			kfree_rcu(p, rcu);
 		}
 		rb_erase_augmented(&sr->tree_node, &sc->ranges, &sr_callbacks);
diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
index e12b9eb2c7f1..5f48f05b93be 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -124,15 +124,16 @@ bool tipc_nametbl_lookup(struct net *net, u32 type, u32 instance, u32 domain,
 			 bool all);
 struct publication *tipc_nametbl_publish(struct net *net, struct tipc_uaddr *ua,
 					 struct tipc_socket_addr *sk, u32 key);
-int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower, u32 upper,
-			  u32 key);
+void tipc_nametbl_withdraw(struct net *net, struct tipc_uaddr *ua,
+			   struct tipc_socket_addr *sk, u32 key);
 struct publication *tipc_nametbl_insert_publ(struct net *net,
 					     struct tipc_uaddr *ua,
 					     struct tipc_socket_addr *sk,
 					     u32 key);
-struct publication *tipc_nametbl_remove_publ(struct net *net, u32 type,
-					     u32 lower, u32 upper,
-					     u32 node, u32 key);
+struct publication *tipc_nametbl_remove_publ(struct net *net,
+					     struct tipc_uaddr *ua,
+					     struct tipc_socket_addr *sk,
+					     u32 key);
 bool tipc_nametbl_subscribe(struct tipc_subscription *s);
 void tipc_nametbl_unsubscribe(struct tipc_subscription *s);
 int tipc_nametbl_init(struct net *net);
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 3a71e26c9509..24f3f5ea968d 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -429,8 +429,7 @@ static void tipc_node_write_unlock(struct tipc_node *n)
 	}
 	if (flags & TIPC_NOTIFY_LINK_DOWN) {
 		tipc_mon_peer_down(net, n->addr, bearer_id);
-		tipc_nametbl_withdraw(net, TIPC_LINK_STATE, n->addr,
-				      n->addr, n->link_id);
+		tipc_nametbl_withdraw(net, &ua, &sk, n->link_id);
 	}
 }
 
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 0a92ebdd096d..5a017a34fb5f 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -152,8 +152,7 @@ static int tipc_accept(struct socket *sock, struct socket *new_sock, int flags,
 		       bool kern);
 static void tipc_sk_timeout(struct timer_list *t);
 static int tipc_sk_publish(struct tipc_sock *tsk, struct tipc_uaddr *ua);
-static int tipc_sk_withdraw(struct tipc_sock *tsk, uint scope,
-			    struct tipc_service_range const *seq);
+static int tipc_sk_withdraw(struct tipc_sock *tsk, struct tipc_uaddr *ua);
 static int tipc_sk_leave(struct tipc_sock *tsk);
 static struct tipc_sock *tipc_sk_lookup(struct net *net, u32 portid);
 static int tipc_sk_insert(struct tipc_sock *tsk);
@@ -643,7 +642,7 @@ static int tipc_release(struct socket *sock)
 	__tipc_shutdown(sock, TIPC_ERR_NO_PORT);
 	sk->sk_shutdown = SHUTDOWN_MASK;
 	tipc_sk_leave(tsk);
-	tipc_sk_withdraw(tsk, 0, NULL);
+	tipc_sk_withdraw(tsk, NULL);
 	__skb_queue_purge(&tsk->mc_method.deferredq);
 	sk_stop_timer(sk, &sk->sk_timer);
 	tipc_sk_remove(tsk);
@@ -681,7 +680,7 @@ static int __tipc_bind(struct socket *sock, struct sockaddr *skaddr, int alen)
 	bool unbind = false;
 
 	if (unlikely(!alen))
-		return tipc_sk_withdraw(tsk, 0, NULL);
+		return tipc_sk_withdraw(tsk, NULL);
 
 	if (ua->addrtype == TIPC_SERVICE_ADDR) {
 		ua->addrtype = TIPC_SERVICE_RANGE;
@@ -699,7 +698,7 @@ static int __tipc_bind(struct socket *sock, struct sockaddr *skaddr, int alen)
 		return -EACCES;
 
 	if (unbind)
-		return tipc_sk_withdraw(tsk, ua->scope, &ua->sr);
+		return tipc_sk_withdraw(tsk, ua);
 	return tipc_sk_publish(tsk, ua);
 }
 
@@ -2923,38 +2922,37 @@ static int tipc_sk_publish(struct tipc_sock *tsk, struct tipc_uaddr *ua)
 	return 0;
 }
 
-static int tipc_sk_withdraw(struct tipc_sock *tsk, uint scope,
-			    struct tipc_service_range const *seq)
+static int tipc_sk_withdraw(struct tipc_sock *tsk, struct tipc_uaddr *ua)
 {
 	struct net *net = sock_net(&tsk->sk);
-	struct publication *publ;
-	struct publication *safe;
+	struct publication *safe, *p;
+	struct tipc_uaddr _ua;
 	int rc = -EINVAL;
 
-	if (scope != TIPC_NODE_SCOPE)
-		scope = TIPC_CLUSTER_SCOPE;
-
-	list_for_each_entry_safe(publ, safe, &tsk->publications, binding_sock) {
-		if (seq) {
-			if (publ->scope != scope)
-				continue;
-			if (publ->sr.type != seq->type)
-				continue;
-			if (publ->sr.lower != seq->lower)
-				continue;
-			if (publ->sr.upper != seq->upper)
-				break;
-			tipc_nametbl_withdraw(net, publ->sr.type, publ->sr.lower,
-					      publ->sr.upper, publ->key);
-			rc = 0;
-			break;
+	list_for_each_entry_safe(p, safe, &tsk->publications, binding_sock) {
+		if (!ua) {
+			tipc_uaddr(&_ua, p->addrtype, p->scope,
+				   p->sr.type, p->sr.lower, p->sr.upper);
+			tipc_nametbl_withdraw(net, &_ua, &p->sk, p->key);
+			continue;
 		}
-		tipc_nametbl_withdraw(net, publ->sr.type, publ->sr.lower,
-				      publ->sr.upper, publ->key);
+		/* Unbind specific publication */
+		if (p->scope != ua->scope)
+			continue;
+		if (p->sr.type != ua->sr.type)
+			continue;
+		if (p->sr.lower != ua->sr.lower)
+			continue;
+		if (p->sr.upper != ua->sr.upper)
+			break;
+		tipc_nametbl_withdraw(net, ua, &p->sk, p->key);
 		rc = 0;
+		break;
 	}
-	if (list_empty(&tsk->publications))
+	if (list_empty(&tsk->publications)) {
 		tsk->published = 0;
+		rc = 0;
+	}
 	return rc;
 }
 
@@ -3107,15 +3105,17 @@ static int tipc_sk_leave(struct tipc_sock *tsk)
 {
 	struct net *net = sock_net(&tsk->sk);
 	struct tipc_group *grp = tsk->group;
-	struct tipc_service_range seq;
+	struct tipc_uaddr ua;
 	int scope;
 
 	if (!grp)
 		return -EINVAL;
-	tipc_group_self(grp, &seq, &scope);
+	ua.addrtype = TIPC_SERVICE_RANGE;
+	tipc_group_self(grp, &ua.sr, &scope);
+	ua.scope = scope;
 	tipc_group_delete(net, grp);
 	tsk->group = NULL;
-	tipc_sk_withdraw(tsk, scope, &seq);
+	tipc_sk_withdraw(tsk, &ua);
 	return 0;
 }
 
-- 
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
