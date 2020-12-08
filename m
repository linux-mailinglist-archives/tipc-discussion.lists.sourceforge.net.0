Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE082D3260
	for <lists+tipc-discussion@lfdr.de>; Tue,  8 Dec 2020 19:51:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kmi4y-0003Co-VM; Tue, 08 Dec 2020 18:51:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kmi4r-0003Bh-VF
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:51:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rp5uSdVFUJQJYUe+wm1N9+RyPUeJuH5ROQyxk36urtg=; b=izPkr7fiON/EI575y0mD4UvQ2R
 NWGp6JJoYr4+IwwvqCGo+9bxSoYU+1qhPJSQwtZG3UOiAfVkPvrN6DZQIDyJFXMw/lUZHWW4sEggr
 Bqk+la20lENFjw0DZ3X+sA66lYEQnsnu7qM3taMB6lIcX9x9f3l6p7U1QYWkzvad9xmI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rp5uSdVFUJQJYUe+wm1N9+RyPUeJuH5ROQyxk36urtg=; b=GEsuiBiA0PiiGivO7c5FtEMJxi
 EzTYrwf274JwGNOlKi69nVRQDTA+kTvmxCkZiEhxIikZqRfJurd2Hv4l8b0+TB+mrQbuasE8BJglJ
 naHqKRPpqPggBUkNO8bPfQE/DWfy87dzv2gLx13MvkKySntrh9jUHjbHszParIEWGAGo=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kmi4l-003uiB-9Z
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:51:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607453450;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rp5uSdVFUJQJYUe+wm1N9+RyPUeJuH5ROQyxk36urtg=;
 b=ByZD8SszdPzc1PJTrB56x4uBiczHndQdKMxoW9n3OAjQvnPPDeFPHJkCy8JC3U7/EIHk8V
 N7XhDddNhLAoNZJJUBHoAriq7CsSVwXUQftb9WXUEQe/wAe17DQlA8sc0yNsZ3+XYvw0K0
 MTlwmagr93AKYMOvzVz6S6/sv9/hoHM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-41-z6vQBx-4NNqvupOv2-oSUw-1; Tue, 08 Dec 2020 13:50:46 -0500
X-MC-Unique: z6vQBx-4NNqvupOv2-oSUw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AE326192780D;
 Tue,  8 Dec 2020 18:50:41 +0000 (UTC)
Received: from f31.redhat.com (ovpn-116-129.rdu2.redhat.com [10.10.116.129])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7593E60877;
 Tue,  8 Dec 2020 18:50:40 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Tue,  8 Dec 2020 13:50:09 -0500
Message-Id: <20201208185012.265508-14-jmaloy@redhat.com>
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
X-Headers-End: 1kmi4l-003uiB-9Z
Subject: [tipc-discussion] [net-next 13/16] tipc: simplify signature of
 tipc_find_service()
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

We reduce the signature of tipc_find_service() and
tipc_create_service(). The reason for doing this might not
be obvious, but we plan to let struct tipc_uaddr contain
information that is relevant for these functions in a later
commit.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/name_table.c | 58 ++++++++++++++++++++++++++-----------------
 net/tipc/name_table.h |  2 +-
 net/tipc/socket.c     |  2 +-
 3 files changed, 37 insertions(+), 25 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 57abed74d0d9..554a006d7c0d 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -255,20 +255,25 @@ static struct publication *tipc_publ_create(struct tipc_uaddr *ua,
  *
  * Allocates a single range structure and sets it to all 0's.
  */
-static struct tipc_service *tipc_service_create(u32 type, struct hlist_head *hd)
+static struct tipc_service *tipc_service_create(struct net *net,
+						struct tipc_uaddr *ua)
 {
-	struct tipc_service *service = kzalloc(sizeof(*service), GFP_ATOMIC);
+	struct name_table *nt = tipc_name_table(net);
+	struct tipc_service *service;
+	struct hlist_head *hd;
 
+	service = kzalloc(sizeof(*service), GFP_ATOMIC);
 	if (!service) {
 		pr_warn("Service creation failed, no memory\n");
 		return NULL;
 	}
 
 	spin_lock_init(&service->lock);
-	service->type = type;
+	service->type = ua->sr.type;
 	service->ranges = RB_ROOT;
 	INIT_HLIST_NODE(&service->service_list);
 	INIT_LIST_HEAD(&service->subscriptions);
+	hd = &nt->services[hash(ua->sr.type)];
 	hlist_add_head_rcu(&service->service_list, hd);
 	return service;
 }
@@ -453,15 +458,16 @@ static void tipc_service_subscribe(struct tipc_service *service,
 	}
 }
 
-static struct tipc_service *tipc_service_find(struct net *net, u32 type)
+static struct tipc_service *tipc_service_find(struct net *net,
+					      struct tipc_uaddr *ua)
 {
 	struct name_table *nt = tipc_name_table(net);
 	struct hlist_head *service_head;
 	struct tipc_service *service;
 
-	service_head = &nt->services[hash(type)];
+	service_head = &nt->services[hash(ua->sr.type)];
 	hlist_for_each_entry_rcu(service, service_head, service_list) {
-		if (service->type == type)
+		if (service->type == ua->sr.type)
 			return service;
 	}
 	return NULL;
@@ -472,7 +478,6 @@ struct publication *tipc_nametbl_insert_publ(struct net *net,
 					     struct tipc_socket_addr *sk,
 					     u32 key)
 {
-	struct name_table *nt = tipc_name_table(net);
 	struct tipc_service *sc;
 	struct publication *p;
 	u32 type = ua->sr.type;
@@ -487,9 +492,9 @@ struct publication *tipc_nametbl_insert_publ(struct net *net,
 			 type, ua->sr.lower, ua->sr.upper, sk->node);
 		return NULL;
 	}
-	sc = tipc_service_find(net, type);
+	sc = tipc_service_find(net, ua);
 	if (!sc)
-		sc = tipc_service_create(type, &nt->services[hash(type)]);
+		sc = tipc_service_create(net, ua);
 	if (sc) {
 		spin_lock_bh(&sc->lock);
 		res = tipc_service_insert_publ(net, sc, p);
@@ -512,7 +517,7 @@ struct publication *tipc_nametbl_remove_publ(struct net *net,
 	struct tipc_service *sc;
 	bool last;
 
-	sc = tipc_service_find(net, ua->sr.type);
+	sc = tipc_service_find(net, ua);
 	if (!sc)
 		return NULL;
 
@@ -585,7 +590,7 @@ bool tipc_nametbl_lookup_anycast(struct net *net,
 		return true;
 
 	rcu_read_lock();
-	sc = tipc_service_find(net, ua->sr.type);
+	sc = tipc_service_find(net, ua);
 	if (unlikely(!sc))
 		goto exit;
 
@@ -638,7 +643,7 @@ bool tipc_nametbl_lookup_group(struct net *net, struct tipc_uaddr *ua,
 
 	*dstcnt = 0;
 	rcu_read_lock();
-	sc = tipc_service_find(net, ua->sa.type);
+	sc = tipc_service_find(net, ua);
 	if (unlikely(!sc))
 		goto exit;
 
@@ -682,7 +687,7 @@ void tipc_nametbl_lookup_mcast_sockets(struct net *net, struct tipc_uaddr *ua,
 	u32 scope = ua->scope;
 
 	rcu_read_lock();
-	sc = tipc_service_find(net, ua->sr.type);
+	sc = tipc_service_find(net, ua);
 	if (!sc)
 		goto exit;
 
@@ -711,7 +716,7 @@ void tipc_nametbl_lookup_mcast_nodes(struct net *net, struct tipc_uaddr *ua,
 	struct publication *p;
 
 	rcu_read_lock();
-	sc = tipc_service_find(net, ua->sr.type);
+	sc = tipc_service_find(net, ua);
 	if (!sc)
 		goto exit;
 
@@ -729,7 +734,7 @@ void tipc_nametbl_lookup_mcast_nodes(struct net *net, struct tipc_uaddr *ua,
 /* tipc_nametbl_build_group - build list of communication group members
  */
 void tipc_nametbl_build_group(struct net *net, struct tipc_group *grp,
-			      u32 type, u32 scope)
+			      struct tipc_uaddr *ua)
 {
 	struct service_range *sr;
 	struct tipc_service *sc;
@@ -737,7 +742,7 @@ void tipc_nametbl_build_group(struct net *net, struct tipc_group *grp,
 	struct rb_node *n;
 
 	rcu_read_lock();
-	sc = tipc_service_find(net, type);
+	sc = tipc_service_find(net, ua);
 	if (!sc)
 		goto exit;
 
@@ -745,9 +750,10 @@ void tipc_nametbl_build_group(struct net *net, struct tipc_group *grp,
 	for (n = rb_first(&sc->ranges); n; n = rb_next(n)) {
 		sr = container_of(n, struct service_range, tree_node);
 		list_for_each_entry(p, &sr->all_publ, all_publ) {
-			if (p->scope != scope)
+			if (p->scope != ua->scope)
 				continue;
-			tipc_group_add_member(grp, p->sk.node, p->sk.ref, p->sr.lower);
+			tipc_group_add_member(grp, p->sk.node, p->sk.ref,
+					      p->sr.lower);
 		}
 	}
 	spin_unlock_bh(&sc->lock);
@@ -829,17 +835,18 @@ void tipc_nametbl_withdraw(struct net *net, struct tipc_uaddr *ua,
  */
 bool tipc_nametbl_subscribe(struct tipc_subscription *sub)
 {
-	struct name_table *nt = tipc_name_table(sub->net);
 	struct tipc_net *tn = tipc_net(sub->net);
 	struct tipc_subscr *s = &sub->evt.s;
 	u32 type = tipc_sub_read(s, seq.type);
 	struct tipc_service *sc;
+	struct tipc_uaddr ua;
 	bool res = true;
 
+	tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_NODE_SCOPE, type, 0, 0);
 	spin_lock_bh(&tn->nametbl_lock);
-	sc = tipc_service_find(sub->net, type);
+	sc = tipc_service_find(sub->net, &ua);
 	if (!sc)
-		sc = tipc_service_create(type, &nt->services[hash(type)]);
+		sc = tipc_service_create(sub->net, &ua);
 	if (sc) {
 		spin_lock_bh(&sc->lock);
 		tipc_service_subscribe(sc, sub);
@@ -864,9 +871,11 @@ void tipc_nametbl_unsubscribe(struct tipc_subscription *sub)
 	struct tipc_subscr *s = &sub->evt.s;
 	u32 type = tipc_sub_read(s, seq.type);
 	struct tipc_service *sc;
+	struct tipc_uaddr ua;
 
+	tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_NODE_SCOPE, type, 0, 0);
 	spin_lock_bh(&tn->nametbl_lock);
-	sc = tipc_service_find(sub->net, type);
+	sc = tipc_service_find(sub->net, &ua);
 	if (!sc)
 		goto exit;
 
@@ -1058,6 +1067,7 @@ static int tipc_nl_service_list(struct net *net, struct tipc_nl_msg *msg,
 	struct tipc_net *tn = tipc_net(net);
 	struct tipc_service *service = NULL;
 	struct hlist_head *head;
+	struct tipc_uaddr ua;
 	int err;
 	int i;
 
@@ -1071,7 +1081,9 @@ static int tipc_nl_service_list(struct net *net, struct tipc_nl_msg *msg,
 
 		if (*last_type ||
 		    (!i && *last_key && (*last_lower == *last_key))) {
-			service = tipc_service_find(net, *last_type);
+			tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_NODE_SCOPE,
+				   *last_type, *last_lower, *last_lower);
+			service = tipc_service_find(net, &ua);
 			if (!service)
 				return -EPIPE;
 		} else {
diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
index 909eaf706553..5b8102e70f3b 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -121,7 +121,7 @@ bool tipc_nametbl_lookup_group(struct net *net, struct tipc_uaddr *ua,
 			       struct list_head *dsts, int *dstcnt,
 			       u32 exclude, bool mcast);
 void tipc_nametbl_build_group(struct net *net, struct tipc_group *grp,
-			      u32 type, u32 domain);
+			      struct tipc_uaddr *ua);
 struct publication *tipc_nametbl_publish(struct net *net, struct tipc_uaddr *ua,
 					 struct tipc_socket_addr *sk, u32 key);
 void tipc_nametbl_withdraw(struct net *net, struct tipc_uaddr *ua,
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index a349160a5ae4..8f1083d3859d 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -3073,9 +3073,9 @@ static int tipc_sk_join(struct tipc_sock *tsk, struct tipc_group_req *mreq)
 	msg_set_lookup_scope(hdr, mreq->scope);
 	msg_set_nametype(hdr, mreq->type);
 	msg_set_dest_droppable(hdr, true);
-	tipc_nametbl_build_group(net, grp, mreq->type, mreq->scope);
 	tipc_uaddr(&ua, TIPC_SERVICE_RANGE, mreq->scope,
 		   mreq->type, mreq->instance, mreq->instance);
+	tipc_nametbl_build_group(net, grp, &ua);
 	rc = tipc_sk_publish(tsk, &ua);
 	if (rc) {
 		tipc_group_delete(net, grp);
-- 
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
