Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F083D326DFB
	for <lists+tipc-discussion@lfdr.de>; Sat, 27 Feb 2021 17:56:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lG2tG-0000nk-Ms; Sat, 27 Feb 2021 16:56:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lG2t5-0000mc-P6
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a87htDdSt4ntm99PqiJy8G4yPvxyucSKHt9wxxmD01E=; b=FN0PdXHK85kkFYgSht9tRSpjgA
 H1CBUqrcaYu+BCml9u211IdbkFoB8ISkxGuVSzLdqDrpI2vIB2Uo9kGlv93vG6E/zpFXna4lPiIfk
 PdeIlOxyWl5dQNk/AylNFyXkga5PiOf2Zlf1eurKonW3/3o+1Ozu6Ece+WLo05OP4bYE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a87htDdSt4ntm99PqiJy8G4yPvxyucSKHt9wxxmD01E=; b=BRE0ynNE7gn6Y6N5DBVYBqlLKx
 AjjzalSFpvOciua9BjZwJAX79QsSMOLh1NITb6eih87H2KU728lE8c4FBFqWRb7TAY+NV1mkMMEPJ
 33gIa4UnYVexWC+80sUWvkwIlCbqAt6rFPiXq+viDWPvDXWesyMTBqnuvYUnd1KrVLxw=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lG2ss-007iB2-Bc
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614444956;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=a87htDdSt4ntm99PqiJy8G4yPvxyucSKHt9wxxmD01E=;
 b=Z8Fy61kF11dUeSgTgg8UlJj5hTbAtjDlaQg4MtQ6lVgGc94cee4OM6tfTWfkXeOTqpqWVM
 O+UrIDph1KktwNdfkuo95iIycc8QF64YN6Cqwe48mLd3Z1tOPb1b02WBc2lWH29L0yRQBV
 B44BxwlzFf3bpg8praXd2fP9BmxHwS0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-456-C0kR6ej_Oj6TmgjRW3uDog-1; Sat, 27 Feb 2021 11:55:54 -0500
X-MC-Unique: C0kR6ej_Oj6TmgjRW3uDog-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C3380100A24D;
 Sat, 27 Feb 2021 16:55:52 +0000 (UTC)
Received: from fenrir.redhat.com (ovpn-114-105.rdu2.redhat.com [10.10.114.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 79DFE62A02;
 Sat, 27 Feb 2021 16:55:51 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Sat, 27 Feb 2021 11:55:31 -0500
Message-Id: <20210227165542.3781624-6-jmaloy@redhat.com>
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
 for more information. [URIs: windriver.com]
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
X-Headers-End: 1lG2ss-007iB2-Bc
Subject: [tipc-discussion] [net-next v2 05/16] tipc: simplify call
 signatures for publication creation
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
Acked-by: Ying Xue <ying.xue@windriver.com>
Acked-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/name_distr.c | 23 ++++++++++++-----------
 net/tipc/name_table.c | 42 +++++++++++++++++-------------------------
 net/tipc/name_table.h |  9 +++++----
 3 files changed, 34 insertions(+), 40 deletions(-)

diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
index 1070b04d1126..727f8c54df6b 100644
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
index 7b309fdd0090..146c478143a6 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -222,16 +222,12 @@ static int hash(int x)
 
 /**
  * tipc_publ_create - create a publication structure
- * @type: name sequence type
- * @lower: name sequence lower bound
- * @upper: name sequence upper bound
- * @scope: publication scope
- * @node: network address of publishing socket
- * @port: publishing port
+ * @ua: the service range the user is binding to
+ * @sk: the address of the socket that is bound
  * @key: publication key
  */
-static struct publication *tipc_publ_create(u32 type, u32 lower, u32 upper,
-					    u32 scope, u32 node, u32 port,
+static struct publication *tipc_publ_create(struct tipc_uaddr *ua,
+					    struct tipc_socket_addr *sk,
 					    u32 key)
 {
 	struct publication *p = kzalloc(sizeof(*p), GFP_ATOMIC);
@@ -239,12 +235,9 @@ static struct publication *tipc_publ_create(u32 type, u32 lower, u32 upper,
 	if (!p)
 		return NULL;
 
-	p->sr.type = type;
-	p->sr.lower = lower;
-	p->sr.upper = upper;
-	p->scope = scope;
-	p->sk.node = node;
-	p->sk.ref = port;
+	p->sr = ua->sr;
+	p->sk = *sk;
+	p->scope = ua->scope;
 	p->key = key;
 	INIT_LIST_HEAD(&p->binding_sock);
 	INIT_LIST_HEAD(&p->binding_node);
@@ -472,22 +465,23 @@ static struct tipc_service *tipc_service_find(struct net *net, u32 type)
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
@@ -756,9 +750,7 @@ struct publication *tipc_nametbl_publish(struct net *net, struct tipc_uaddr *ua,
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
index 47a8c266bcc8..c8b026e56e81 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -75,7 +75,7 @@ struct tipc_uaddr;
 struct publication {
 	struct tipc_service_range sr;
 	struct tipc_socket_addr sk;
-	u32 scope;
+	u16 scope;
 	u32 key;
 	u32 id;
 	struct list_head binding_node;
@@ -125,9 +125,10 @@ struct publication *tipc_nametbl_publish(struct net *net, struct tipc_uaddr *ua,
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
-- 
2.29.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
