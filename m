Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F9E104E0F
	for <lists+tipc-discussion@lfdr.de>; Thu, 21 Nov 2019 09:35:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iXhvt-0003H6-2r; Thu, 21 Nov 2019 08:35:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iXhvo-0003Fx-IG
 for tipc-discussion@lists.sourceforge.net; Thu, 21 Nov 2019 08:35:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RxnRfSRLTzTIbbA1e8xh7OHhyD7JbOcUdHFrt5fVDzY=; b=imZ1dSIdEEn3fjZT+ZlK4NknkA
 dmYBsgUIcSaDxaj6+1uJA+hlb96UBL6ocSxerTs1hQfvxbRLyR3nHkqMtyWEC0I0Z7RMkvzjJacwu
 H1hhWPxI3EUtohVnW6wXq4nVcwjLEGKcA6Y8OhRBx+QWZxpZBiYCj7RFQoBBdSPyNhAw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RxnRfSRLTzTIbbA1e8xh7OHhyD7JbOcUdHFrt5fVDzY=; b=CHvEe/Ae0A2blj6EghYUUV24sa
 wQAiWMY/1g3QFN+aQIg4+rRJiN3O93L3cnFDV68HuVTdTEUEavY6v5YyyFbwddoZXcObXV+vIu6Bj
 Xgc7/aBFXNVAekvtp6/PqqBOnyUIPpLBWZEhcGUCbmjrs+NDchf0AnPOIL1ofeWpA0l0=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iXhvk-008Gt3-IR
 for tipc-discussion@lists.sourceforge.net; Thu, 21 Nov 2019 08:35:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id D66084AF78;
 Thu, 21 Nov 2019 19:35:05 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1574325305; bh=JEtNz
 ocA3RxvFtAqaAMpQqBldFGH253+H6dnWKwSP7U=; b=lekhQlikusjpPqORUPsSC
 V6+HVRa2LLwgOFbMkWdzo/ul53W6iQzdPcFuPgMxCBIweAg4Y8WyPo8nBcFCdyjT
 37CFRZEOD/H5oDlIGIgjEaqhzp1dpyUvuFqROVazA77zHMB7REzxSOsOWt7eg5jK
 8nUUi6RftWJHFZXfA7u8No=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id oXpzZk8u81mp; Thu, 21 Nov 2019 19:35:05 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 414604AF79;
 Thu, 21 Nov 2019 19:35:05 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id A7A034AF78;
 Thu, 21 Nov 2019 19:35:03 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jon.maloy@ericsson.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Thu, 21 Nov 2019 15:34:58 +0700
Message-Id: <20191121083458.19096-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iXhvk-008Gt3-IR
Subject: [tipc-discussion] [net-next v3] tipc: support in-order name
 publication events
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
Cc: tipc-discussion@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

It is observed that TIPC service binding order will not be kept in the
publication event report to user if the service is subscribed after the
bindings.

For example, services are bound by application in the following order:

Server: bound port A to {18888,66,66} scope 2
Server: bound port A to {18888,33,33} scope 2

Now, if a client subscribes to the service range (e.g. {18888, 0-100}),
it will get the 'TIPC_PUBLISHED' events in that binding order only when
the subscription is started before the bindings.
Otherwise, if started after the bindings, the events will arrive in the
opposite order:

Client: received event for published {18888,33,33}
Client: received event for published {18888,66,66}

For the latter case, it is clear that the bindings have existed in the
name table already, so when reported, the events' order will follow the
order of the rbtree binding nodes (- a node with lesser 'lower'/'upper'
range value will be first).

This is correct as we provide the tracking on a specific service status
(available or not), not the relationship between multiple services.
However, some users expect to see the same order of arriving events
irrespective of when the subscription is issued. This turns out to be
easy to fix. We now add functionality to ensure that publication events
always are issued in the same temporal order as the corresponding
bindings were performed.

v2: replace the unnecessary macro - 'publication_after()' with inline
function.
v3: reuse 'time_after32()' instead of reinventing the same exact code.

Acked-by: Jon Maloy <jon.maloy@ericsson.com>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/name_table.c | 51 +++++++++++++++++++++++++++++++++++++++++++--------
 net/tipc/name_table.h |  4 ++++
 2 files changed, 47 insertions(+), 8 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 66a65c2cdb23..92d04dc2a44b 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -35,6 +35,7 @@
  */
 
 #include <net/sock.h>
+#include <linux/list_sort.h>
 #include "core.h"
 #include "netlink.h"
 #include "name_table.h"
@@ -66,6 +67,7 @@ struct service_range {
 /**
  * struct tipc_service - container for all published instances of a service type
  * @type: 32 bit 'type' value for service
+ * @publ_cnt: increasing counter for publications in this service
  * @ranges: rb tree containing all service ranges for this service
  * @service_list: links to adjacent name ranges in hash chain
  * @subscriptions: list of subscriptions for this service type
@@ -74,6 +76,7 @@ struct service_range {
  */
 struct tipc_service {
 	u32 type;
+	u32 publ_cnt;
 	struct rb_root ranges;
 	struct hlist_node service_list;
 	struct list_head subscriptions;
@@ -109,6 +112,7 @@ static struct publication *tipc_publ_create(u32 type, u32 lower, u32 upper,
 	INIT_LIST_HEAD(&publ->binding_node);
 	INIT_LIST_HEAD(&publ->local_publ);
 	INIT_LIST_HEAD(&publ->all_publ);
+	INIT_LIST_HEAD(&publ->list);
 	return publ;
 }
 
@@ -244,6 +248,8 @@ static struct publication *tipc_service_insert_publ(struct net *net,
 	p = tipc_publ_create(type, lower, upper, scope, node, port, key);
 	if (!p)
 		goto err;
+	/* Suppose there shouldn't be a huge gap btw publs i.e. >INT_MAX */
+	p->id = sc->publ_cnt++;
 	if (in_own_node(net, node))
 		list_add(&p->local_publ, &sr->local_publ);
 	list_add(&p->all_publ, &sr->all_publ);
@@ -278,6 +284,20 @@ static struct publication *tipc_service_remove_publ(struct service_range *sr,
 }
 
 /**
+ * Code reused: time_after32() for the same purpose
+ */
+#define publication_after(pa, pb) time_after32((pa)->id, (pb)->id)
+static int tipc_publ_sort(void *priv, struct list_head *a,
+			  struct list_head *b)
+{
+	struct publication *pa, *pb;
+
+	pa = container_of(a, struct publication, list);
+	pb = container_of(b, struct publication, list);
+	return publication_after(pa, pb);
+}
+
+/**
  * tipc_service_subscribe - attach a subscription, and optionally
  * issue the prescribed number of events if there is any service
  * range overlapping with the requested range
@@ -286,36 +306,51 @@ static void tipc_service_subscribe(struct tipc_service *service,
 				   struct tipc_subscription *sub)
 {
 	struct tipc_subscr *sb = &sub->evt.s;
+	struct publication *p, *first, *tmp;
+	struct list_head publ_list;
 	struct service_range *sr;
 	struct tipc_name_seq ns;
-	struct publication *p;
 	struct rb_node *n;
-	bool first;
+	u32 filter;
 
 	ns.type = tipc_sub_read(sb, seq.type);
 	ns.lower = tipc_sub_read(sb, seq.lower);
 	ns.upper = tipc_sub_read(sb, seq.upper);
+	filter = tipc_sub_read(sb, filter);
 
 	tipc_sub_get(sub);
 	list_add(&sub->service_list, &service->subscriptions);
 
-	if (tipc_sub_read(sb, filter) & TIPC_SUB_NO_STATUS)
+	if (filter & TIPC_SUB_NO_STATUS)
 		return;
 
+	INIT_LIST_HEAD(&publ_list);
 	for (n = rb_first(&service->ranges); n; n = rb_next(n)) {
 		sr = container_of(n, struct service_range, tree_node);
 		if (sr->lower > ns.upper)
 			break;
 		if (!tipc_sub_check_overlap(&ns, sr->lower, sr->upper))
 			continue;
-		first = true;
 
+		first = NULL;
 		list_for_each_entry(p, &sr->all_publ, all_publ) {
-			tipc_sub_report_overlap(sub, sr->lower, sr->upper,
-						TIPC_PUBLISHED,	p->port,
-						p->node, p->scope, first);
-			first = false;
+			if (filter & TIPC_SUB_PORTS)
+				list_add_tail(&p->list, &publ_list);
+			else if (!first || publication_after(first, p))
+				/* Pick this range's *first* publication */
+				first = p;
 		}
+		if (first)
+			list_add_tail(&first->list, &publ_list);
+	}
+
+	/* Sort the publications before reporting */
+	list_sort(NULL, &publ_list, tipc_publ_sort);
+	list_for_each_entry_safe(p, tmp, &publ_list, list) {
+		tipc_sub_report_overlap(sub, p->lower, p->upper,
+					TIPC_PUBLISHED, p->port, p->node,
+					p->scope, true);
+		list_del_init(&p->list);
 	}
 }
 
diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
index f79066334cc8..728bc7016c38 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -58,6 +58,7 @@ struct tipc_group;
  * @node: network address of publishing socket's node
  * @port: publishing port
  * @key: publication key, unique across the cluster
+ * @id: publication id
  * @binding_node: all publications from the same node which bound this one
  * - Remote publications: in node->publ_list
  *   Used by node/name distr to withdraw publications when node is lost
@@ -69,6 +70,7 @@ struct tipc_group;
  *   Used by closest_first and multicast receive lookup algorithms
  * @all_publ: all publications identical to this one, whatever node and scope
  *   Used by round-robin lookup algorithm
+ * @list: to form a list of publications in temporal order
  * @rcu: RCU callback head used for deferred freeing
  */
 struct publication {
@@ -79,10 +81,12 @@ struct publication {
 	u32 node;
 	u32 port;
 	u32 key;
+	u32 id;
 	struct list_head binding_node;
 	struct list_head binding_sock;
 	struct list_head local_publ;
 	struct list_head all_publ;
+	struct list_head list;
 	struct rcu_head rcu;
 };
 
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
