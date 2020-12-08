Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 592F52D325F
	for <lists+tipc-discussion@lfdr.de>; Tue,  8 Dec 2020 19:51:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kmi4x-0004mA-CR; Tue, 08 Dec 2020 18:51:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kmi4f-0004j6-GK
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:50:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mP2pU7PMI2KXonMuYl5TmwLQOkvliFcUjKi97sf1OZU=; b=EyhNNurQiDNyxWMDLlFzG9200k
 W7pdfWQ45ztiKMAqhScoKu/phq/ZJMlFmvKEhpspvlNLmiEmLO+GwBy7YETn5zHgxLlm1/p4udF77
 FLjOrPY8xcmdKfDJlxooOD98qPu1scbOozZvOH5l4BOZzIqKWiW6RYXyOr19fBzhF/sQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mP2pU7PMI2KXonMuYl5TmwLQOkvliFcUjKi97sf1OZU=; b=dYcH2ARebkMcLraBOsCSRXbHIv
 XODeFEMNTS5J4lYmulETbFDMuo+cMxKeV94I/8Q9GPxEyWQPuokvvff4/biah2WTNKBLYH1/OBsv/
 t9dNmNPMWP3wCMId/C+0xRqUKuKaRd11rYlfc8dw/xgIHGeyxn2ksEscovUQWPVfNldA=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kmi4a-003uhS-Ft
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:50:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607453446;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mP2pU7PMI2KXonMuYl5TmwLQOkvliFcUjKi97sf1OZU=;
 b=BrdKhl0E6JbxFps0W5ufnabXbKdbGNBC6bwIBA9U9xO2SrxA/uLOS8tC2w/MKVLUySYena
 VjYvk9xhgFWSQ6qN5Zt3zBkrNH+C3RlPvXOpZi3RkiPgKT48uVlR2CBoW49tHq9DLtILYB
 y/Sh69hRtMQR5bTmLZCYix7MWlvz7Xc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-465-aFk-ZIYqN1aLcfM2XMSCxQ-1; Tue, 08 Dec 2020 13:50:41 -0500
X-MC-Unique: aFk-ZIYqN1aLcfM2XMSCxQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 61FE4802EA6;
 Tue,  8 Dec 2020 18:50:25 +0000 (UTC)
Received: from f31.redhat.com (ovpn-116-129.rdu2.redhat.com [10.10.116.129])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 25E7C2B394;
 Tue,  8 Dec 2020 18:50:24 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Tue,  8 Dec 2020 13:50:01 -0500
Message-Id: <20201208185012.265508-6-jmaloy@redhat.com>
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
X-Headers-End: 1kmi4a-003uhS-Ft
Subject: [tipc-discussion] [net-next 05/16] tipc: simplify call signatures
 for publication creation
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

We simplify the call signatures for tipc_nametbl_insert_publ() and
tipc_publ_create() so that fewer parameters are passed around.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/name_distr.c | 23 ++++++++--------
 net/tipc/name_table.c | 61 +++++++++++++++++++------------------------
 net/tipc/name_table.h | 10 ++++---
 net/tipc/socket.c     |  8 ++----
 4 files changed, 47 insertions(+), 55 deletions(-)

diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
index 721d2fca3d6f..df42fc2b4536 100644
--- a/net/tipc/name_distr.c
+++ b/net/tipc/name_distr.c
@@ -293,30 +293,31 @@ static bool tipc_update_nametbl(struct net *net, struct distr_item *i,
 				u32 node, u32 dtype)
 {
 	struct publication *p = NULL;
-	u32 lower = ntohl(i->lower);
-	u32 upper = ntohl(i->upper);
-	u32 type = ntohl(i->type);
-	u32 port = ntohl(i->port);
+	struct tipc_socket_addr sk;
+	struct tipc_uaddr ua;
 	u32 key = ntohl(i->key);
 
+	tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_CLUSTER_SCOPE,
+		   ntohl(i->type), ntohl(i->lower), ntohl(i->upper));
+	sk.ref = ntohl(i->port);
+	sk.node = node;
+
 	if (dtype == PUBLICATION) {
-		p = tipc_nametbl_insert_publ(net, type, lower, upper,
-					     TIPC_CLUSTER_SCOPE, node,
-					     port, key);
+		p = tipc_nametbl_insert_publ(net, &ua, &sk, key);
 		if (p) {
 			tipc_node_subscribe(net, &p->binding_node, node);
 			return true;
 		}
 	} else if (dtype == WITHDRAWAL) {
-		p = tipc_nametbl_remove_publ(net, type, lower,
-					     upper, node, key);
+		p = tipc_nametbl_remove_publ(net, ua.sr.type, ua.sr.lower,
+					     ua.sr.upper, node, key);
 		if (p) {
 			tipc_node_unsubscribe(net, &p->binding_node, node);
 			kfree_rcu(p, rcu);
 			return true;
 		}
-		pr_warn_ratelimited("Failed to remove binding %u,%u from %x\n",
-				    type, lower, node);
+		pr_warn_ratelimited("Failed to remove binding %u,%u from %u\n",
+				    ua.sr.type, ua.sr.lower, node);
 	} else {
 		pr_warn("Unrecognized name table message received\n");
 	}
diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index d951e9345122..ba96d5fc57f3 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -222,36 +222,30 @@ static int hash(int x)
 
 /**
  * tipc_publ_create - create a publication structure
- * @type: name sequence type
- * @lower: name sequence lower bound
- * @upper: name sequence upper bound
- * @scope: publication scope
- * @node: network address of publishing socket
- * @port: publishing port
+ * @ua: the service range the user is binding to
+ * @sk: the address of the socket thatis bound
  * @key: publication key
  */
-static struct publication *tipc_publ_create(u32 type, u32 lower, u32 upper,
-					    u32 scope, u32 node, u32 port,
+static struct publication *tipc_publ_create(struct tipc_uaddr *ua,
+					    struct tipc_socket_addr *sk,
 					    u32 key)
 {
-	struct publication *publ = kzalloc(sizeof(*publ), GFP_ATOMIC);
+	struct publication *p = kzalloc(sizeof(*p), GFP_ATOMIC);
 
-	if (!publ)
+	if (!p)
 		return NULL;
 
-	publ->sr.type = type;
-	publ->sr.lower = lower;
-	publ->sr.upper = upper;
-	publ->scope = scope;
-	publ->sk.node = node;
-	publ->sk.ref = port;
-	publ->key = key;
-	INIT_LIST_HEAD(&publ->binding_sock);
-	INIT_LIST_HEAD(&publ->binding_node);
-	INIT_LIST_HEAD(&publ->local_publ);
-	INIT_LIST_HEAD(&publ->all_publ);
-	INIT_LIST_HEAD(&publ->list);
-	return publ;
+	p->sr = ua->sr;
+	p->sk = *sk;
+	p->addrtype = ua->addrtype;
+	p->scope = ua->scope;
+	p->key = key;
+	INIT_LIST_HEAD(&p->binding_sock);
+	INIT_LIST_HEAD(&p->binding_node);
+	INIT_LIST_HEAD(&p->local_publ);
+	INIT_LIST_HEAD(&p->all_publ);
+	INIT_LIST_HEAD(&p->list);
+	return p;
 }
 
 /**
@@ -468,23 +462,24 @@ static struct tipc_service *tipc_service_find(struct net *net, u32 type)
 	return NULL;
 };
 
-struct publication *tipc_nametbl_insert_publ(struct net *net, u32 type,
-					     u32 lower, u32 upper,
-					     u32 scope, u32 node,
-					     u32 port, u32 key)
+struct publication *tipc_nametbl_insert_publ(struct net *net,
+					     struct tipc_uaddr *ua,
+					     struct tipc_socket_addr *sk,
+					     u32 key)
 {
 	struct name_table *nt = tipc_name_table(net);
 	struct tipc_service *sc;
 	struct publication *p;
+	u32 type = ua->sr.type;
 	bool res = false;
 
-	p = tipc_publ_create(type, lower, upper, scope, node, port, key);
+	p = tipc_publ_create(ua, sk, key);
 	if (!p)
 		return NULL;
 
-	if (scope > TIPC_NODE_SCOPE || lower > upper) {
-		pr_debug("Failed to bind illegal {%u,%u,%u} with scope %u\n",
-			 type, lower, upper, scope);
+	if (ua->sr.lower > ua->sr.upper) {
+		pr_debug("Failed to bind illegal {%u,%u,%u} from node %u\n",
+			 type, ua->sr.lower, ua->sr.upper, sk->node);
 		return NULL;
 	}
 	sc = tipc_service_find(net, type);
@@ -758,9 +753,7 @@ struct publication *tipc_nametbl_publish(struct net *net, struct tipc_uaddr *ua,
 		goto exit;
 	}
 
-	p = tipc_nametbl_insert_publ(net, ua->sr.type, ua->sr.lower,
-				     ua->sr.upper, ua->scope,
-				     sk->node, sk->ref, key);
+	p = tipc_nametbl_insert_publ(net, ua, sk, key);
 	if (p) {
 		nt->local_publ_count++;
 		skb = tipc_named_publish(net, p);
diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
index 5e969e060509..e12b9eb2c7f1 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -75,7 +75,8 @@ struct tipc_uaddr;
 struct publication {
 	struct tipc_service_range sr;
 	struct tipc_socket_addr sk;
-	u32 scope;
+	u16 addrtype;
+	u16 scope;
 	u32 key;
 	u32 id;
 	struct list_head binding_node;
@@ -125,9 +126,10 @@ struct publication *tipc_nametbl_publish(struct net *net, struct tipc_uaddr *ua,
 					 struct tipc_socket_addr *sk, u32 key);
 int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower, u32 upper,
 			  u32 key);
-struct publication *tipc_nametbl_insert_publ(struct net *net, u32 type,
-					     u32 lower, u32 upper, u32 scope,
-					     u32 node, u32 ref, u32 key);
+struct publication *tipc_nametbl_insert_publ(struct net *net,
+					     struct tipc_uaddr *ua,
+					     struct tipc_socket_addr *sk,
+					     u32 key);
 struct publication *tipc_nametbl_remove_publ(struct net *net, u32 type,
 					     u32 lower, u32 upper,
 					     u32 node, u32 key);
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 598c8611b75f..0a92ebdd096d 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -3088,12 +3088,8 @@ static int tipc_sk_join(struct tipc_sock *tsk, struct tipc_group_req *mreq)
 	msg_set_nametype(hdr, mreq->type);
 	msg_set_dest_droppable(hdr, true);
 	tipc_nametbl_build_group(net, grp, mreq->type, mreq->scope);
-
-	ua.sr.type = mreq->type;
-	ua.sr.lower = mreq->instance;
-	ua.sr.upper = ua.sr.lower;
-	ua.scope = mreq->scope;
-	ua.addrtype = TIPC_SERVICE_RANGE;
+	tipc_uaddr(&ua, TIPC_SERVICE_RANGE, mreq->scope,
+		   mreq->type, mreq->instance, mreq->instance);
 	rc = tipc_sk_publish(tsk, &ua);
 	if (rc) {
 		tipc_group_delete(net, grp);
-- 
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
