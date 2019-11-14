Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC8DFC04E
	for <lists+tipc-discussion@lfdr.de>; Thu, 14 Nov 2019 07:43:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iV8r9-0007xy-6o; Thu, 14 Nov 2019 06:43:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iV8r7-0007xb-RZ
 for tipc-discussion@lists.sourceforge.net; Thu, 14 Nov 2019 06:43:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:To:
 From:Sender:Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HeKThCBDKE2ghgdDfKVU3m0MUMiWODb7FyjO9W76MfA=; b=RTg1u1RslWwx648rNCLZomJ131
 uK4qvZh0ZLe6T9fPP0f6qMfyXvyR4JQwsWJRE0GFczM7JVXALqNHxmz8vqSHJ2FBZ6MPVfvqkRTKm
 m4ME1duE9kdUTXz3nb2oDAcVhR4/+248JAvsgeRYseqYzxJWo+TYt5YamJ1avy7HASno=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HeKThCBDKE2ghgdDfKVU3m0MUMiWODb7FyjO9W76MfA=; b=hJfISE0uTk5nadddOpqCxDrf3U
 knKFFBiSRBKL2avgg9x1qmV8rLzBZ/ivhzlWSlyPdWOx3R/C5AbjFKl40XHiTFi7HKkBkBRraif/r
 DZByTBi5ekE0pjw+yHymdju4KEMnDzvrwdpDRNc33624WiRjnFVHdlevcNGuNEcgqguM=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iV8r5-002gPG-Co
 for tipc-discussion@lists.sourceforge.net; Thu, 14 Nov 2019 06:43:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id CF2E54AD0B;
 Thu, 14 Nov 2019 17:43:40 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mail_dkim; t=
 1573713820; bh=XQylrrZt2y/WSYXMJoxIOswkdLHWUM+x1WQ/juArsno=; b=V
 CMQthsPqTQn0ynTw7E8ACS1aKSZ3s3R2soD1bVuHLHCjeFs8gbT8KdYzRutMM0yv
 lGq0EPdssWh/BZYw0fOPGhjPDTwfmgg8aMjCmubOEOyfk4D1J3QOv60WqdKv39qj
 WPmMyYK2h48aKSDARNngm4OS/jr7igaQ8qrUVf8RoQ=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id GXgvN_hIAI9C; Thu, 14 Nov 2019 17:43:40 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id A83B44AD01;
 Thu, 14 Nov 2019 17:43:40 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id D0C1C4ACB1;
 Thu, 14 Nov 2019 17:43:39 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Thu, 14 Nov 2019 13:43:32 +0700
Message-Id: <20191114064332.15061-3-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20191114064332.15061-1-tuong.t.lien@dektech.com.au>
References: <20191114064332.15061-1-tuong.t.lien@dektech.com.au>
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.8 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iV8r5-002gPG-Co
Subject: [tipc-discussion] [net-next 2/2] tipc: fix name table rbtree issues
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

The current rbtree for service ranges in the name table is built based
on the 'lower' & 'upper' range values resulting in a flaw in the rbtree
searching. Some issues have been observed in case of range overlapping:

Case #1: unable to withdraw a name entry:
After some name services are bound, all of them are withdrawn by user
but one remains in the name table forever. This corrupts the table and
that service becomes dummy i.e. no real port.
E.g.

                /
           {22, 22}
              /
             /
   --->  {10, 50}
           /  \
          /    \
    {10, 30}  {20, 60}

The node {10, 30} cannot be removed since the rbtree searching stops at
the node's ancestor i.e. {10, 50}, so starting from it will never reach
the finding node.

Case #2: failed to send data in some cases:
E.g. Two service ranges: {20, 60}, {10, 50} are bound. The rbtree for
this service will be one of the two cases below depending on the order
of the bindings:

        {20, 60}             {10, 50} <--
          /  \                 /  \
         /    \               /    \
    {10, 50}  NIL <--       NIL  {20, 60}

          (a)                    (b)

Now, try to send some data to service {30}, there will be two results:
(a): Failed, no route to host.
(b): Ok.

The reason is that the rbtree searching will stop at the pointing node
as shown above.

Case #3: Same as case #2b above but if the data sending's scope is
local and the {10, 50} is published by a peer node, then it will result
in 'no route to host' even though the other {20, 60} is for example on
the local node which should be able to get the data.

The issues are actually due to the way we built the rbtree. This commit
fixes it by introducing an additional field to each node - named 'max',
which is the largest 'upper' of that node subtree. The 'max' value for
each subtrees will be propagated correctly whenever a node is inserted/
removed or the tree is rebalanced by the augmented rbtree callbacks.

By this way, we can change the rbtree searching appoarch to solve the
issues above. Another benefit from this is that we can now improve the
searching for a next range matching e.g. in case of multicast, so get
rid of the unneeded looping over all nodes in the tree.

v2: remove the 'round-robin' case's description (i.e. not fixed) & call
the service_range_match_first() directly as suggested by Jon; rebase to
make a series.

Acked-by: Jon Maloy <jon.maloy@ericsson.com>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/name_table.c | 279 ++++++++++++++++++++++++++++++++------------------
 1 file changed, 179 insertions(+), 100 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 45a9ab539fdb..2290b09e080d 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -36,6 +36,7 @@
 
 #include <net/sock.h>
 #include <linux/list_sort.h>
+#include <linux/rbtree_augmented.h>
 #include "core.h"
 #include "netlink.h"
 #include "name_table.h"
@@ -51,6 +52,7 @@
  * @lower: service range lower bound
  * @upper: service range upper bound
  * @tree_node: member of service range RB tree
+ * @max: largest 'upper' in this node subtree
  * @local_publ: list of identical publications made from this node
  *   Used by closest_first lookup and multicast lookup algorithm
  * @all_publ: all publications identical to this one, whatever node and scope
@@ -60,6 +62,7 @@ struct service_range {
 	u32 lower;
 	u32 upper;
 	struct rb_node tree_node;
+	u32 max;
 	struct list_head local_publ;
 	struct list_head all_publ;
 };
@@ -84,6 +87,130 @@ struct tipc_service {
 	struct rcu_head rcu;
 };
 
+#define service_range_upper(sr) ((sr)->upper)
+RB_DECLARE_CALLBACKS_MAX(static, sr_callbacks,
+			 struct service_range, tree_node, u32, max,
+			 service_range_upper)
+
+#define service_range_entry(rbtree_node)				\
+	(container_of(rbtree_node, struct service_range, tree_node))
+
+#define service_range_overlap(sr, start, end)				\
+	((sr)->lower <= (end) && (sr)->upper >= (start))
+
+/**
+ * service_range_foreach_match - iterate over tipc service rbtree for each
+ *                               range match
+ * @sr: the service range pointer as a loop cursor
+ * @sc: the pointer to tipc service which holds the service range rbtree
+ * @start, end: the range (end >= start) for matching
+ */
+#define service_range_foreach_match(sr, sc, start, end)			\
+	for (sr = service_range_match_first((sc)->ranges.rb_node,	\
+					    start,			\
+					    end);			\
+	     sr;							\
+	     sr = service_range_match_next(&(sr)->tree_node,		\
+					   start,			\
+					   end))
+
+/**
+ * service_range_match_first - find first service range matching a range
+ * @n: the root node of service range rbtree for searching
+ * @start, end: the range (end >= start) for matching
+ *
+ * Return: the leftmost service range node in the rbtree that overlaps the
+ * specific range if any. Otherwise, returns NULL.
+ */
+static struct service_range *service_range_match_first(struct rb_node *n,
+						       u32 start, u32 end)
+{
+	struct service_range *sr;
+	struct rb_node *l, *r;
+
+	/* Non overlaps in tree at all? */
+	if (!n || service_range_entry(n)->max < start)
+		return NULL;
+
+	while (n) {
+		l = n->rb_left;
+		if (l && service_range_entry(l)->max >= start) {
+			/* A leftmost overlap range node must be one in the left
+			 * subtree. If not, it has lower > end, then nodes on
+			 * the right side cannot satisfy the condition either.
+			 */
+			n = l;
+			continue;
+		}
+
+		/* No one in the left subtree can match, return if this node is
+		 * an overlap i.e. leftmost.
+		 */
+		sr = service_range_entry(n);
+		if (service_range_overlap(sr, start, end))
+			return sr;
+
+		/* Ok, try to lookup on the right side */
+		r = n->rb_right;
+		if (sr->lower <= end &&
+		    r && service_range_entry(r)->max >= start) {
+			n = r;
+			continue;
+		}
+		break;
+	}
+
+	return NULL;
+}
+
+/**
+ * service_range_match_next - find next service range matching a range
+ * @n: a node in service range rbtree from which the searching starts
+ * @start, end: the range (end >= start) for matching
+ *
+ * Return: the next service range node to the given node in the rbtree that
+ * overlaps the specific range if any. Otherwise, returns NULL.
+ */
+static struct service_range *service_range_match_next(struct rb_node *n,
+						      u32 start, u32 end)
+{
+	struct service_range *sr;
+	struct rb_node *p, *r;
+
+	while (n) {
+		r = n->rb_right;
+		if (r && service_range_entry(r)->max >= start)
+			/* A next overlap range node must be one in the right
+			 * subtree. If not, it has lower > end, then any next
+			 * successor (- an ancestor) of this node cannot
+			 * satisfy the condition either.
+			 */
+			return service_range_match_first(r, start, end);
+
+		/* No one in the right subtree can match, go up to find an
+		 * ancestor of this node which is parent of a left-hand child.
+		 */
+		while ((p = rb_parent(n)) && n == p->rb_right)
+			n = p;
+		if (!p)
+			break;
+
+		/* Return if this ancestor is an overlap */
+		sr = service_range_entry(p);
+		if (service_range_overlap(sr, start, end))
+			return sr;
+
+		/* Ok, try to lookup more from this ancestor */
+		if (sr->lower <= end) {
+			n = p;
+			continue;
+		}
+		break;
+	}
+
+	return NULL;
+}
+
 static int hash(int x)
 {
 	return x & (TIPC_NAMETBL_SIZE - 1);
@@ -139,84 +266,51 @@ static struct tipc_service *tipc_service_create(u32 type, struct hlist_head *hd)
 	return service;
 }
 
-/**
- * tipc_service_first_range - find first service range in tree matching instance
- *
- * Very time-critical, so binary search through range rb tree
- */
-static struct service_range *tipc_service_first_range(struct tipc_service *sc,
-						      u32 instance)
-{
-	struct rb_node *n = sc->ranges.rb_node;
-	struct service_range *sr;
-
-	while (n) {
-		sr = container_of(n, struct service_range, tree_node);
-		if (sr->lower > instance)
-			n = n->rb_left;
-		else if (sr->upper < instance)
-			n = n->rb_right;
-		else
-			return sr;
-	}
-	return NULL;
-}
-
 /*  tipc_service_find_range - find service range matching publication parameters
  */
 static struct service_range *tipc_service_find_range(struct tipc_service *sc,
 						     u32 lower, u32 upper)
 {
-	struct rb_node *n = sc->ranges.rb_node;
 	struct service_range *sr;
 
-	sr = tipc_service_first_range(sc, lower);
-	if (!sr)
-		return NULL;
-
-	/* Look for exact match */
-	for (n = &sr->tree_node; n; n = rb_next(n)) {
-		sr = container_of(n, struct service_range, tree_node);
-		if (sr->upper == upper)
-			break;
+	service_range_foreach_match(sr, sc, lower, upper) {
+		/* Look for exact match */
+		if (sr->lower == lower && sr->upper == upper)
+			return sr;
 	}
-	if (!n || sr->lower != lower || sr->upper != upper)
-		return NULL;
 
-	return sr;
+	return NULL;
 }
 
 static struct service_range *tipc_service_create_range(struct tipc_service *sc,
 						       u32 lower, u32 upper)
 {
 	struct rb_node **n, *parent = NULL;
-	struct service_range *sr, *tmp;
+	struct service_range *sr;
 
 	n = &sc->ranges.rb_node;
 	while (*n) {
-		tmp = container_of(*n, struct service_range, tree_node);
 		parent = *n;
-		tmp = container_of(parent, struct service_range, tree_node);
-		if (lower < tmp->lower)
-			n = &(*n)->rb_left;
-		else if (lower > tmp->lower)
-			n = &(*n)->rb_right;
-		else if (upper < tmp->upper)
-			n = &(*n)->rb_left;
-		else if (upper > tmp->upper)
-			n = &(*n)->rb_right;
+		sr = service_range_entry(parent);
+		if (lower == sr->lower && upper == sr->upper)
+			return sr;
+		if (sr->max < upper)
+			sr->max = upper;
+		if (lower <= sr->lower)
+			n = &parent->rb_left;
 		else
-			return tmp;
+			n = &parent->rb_right;
 	}
 	sr = kzalloc(sizeof(*sr), GFP_ATOMIC);
 	if (!sr)
 		return NULL;
 	sr->lower = lower;
 	sr->upper = upper;
+	sr->max = upper;
 	INIT_LIST_HEAD(&sr->local_publ);
 	INIT_LIST_HEAD(&sr->all_publ);
 	rb_link_node(&sr->tree_node, parent, n);
-	rb_insert_color(&sr->tree_node, &sc->ranges);
+	rb_insert_augmented(&sr->tree_node, &sc->ranges, &sr_callbacks);
 	return sr;
 }
 
@@ -306,7 +400,6 @@ static void tipc_service_subscribe(struct tipc_service *service,
 	struct list_head publ_list;
 	struct service_range *sr;
 	struct tipc_name_seq ns;
-	struct rb_node *n;
 	u32 filter;
 
 	ns.type = tipc_sub_read(sb, seq.type);
@@ -321,13 +414,7 @@ static void tipc_service_subscribe(struct tipc_service *service,
 		return;
 
 	INIT_LIST_HEAD(&publ_list);
-	for (n = rb_first(&service->ranges); n; n = rb_next(n)) {
-		sr = container_of(n, struct service_range, tree_node);
-		if (sr->lower > ns.upper)
-			break;
-		if (!tipc_sub_check_overlap(&ns, sr->lower, sr->upper))
-			continue;
-
+	service_range_foreach_match(sr, service, ns.lower, ns.upper) {
 		first = NULL;
 		list_for_each_entry(p, &sr->all_publ, all_publ) {
 			if (filter & TIPC_SUB_PORTS)
@@ -421,7 +508,7 @@ struct publication *tipc_nametbl_remove_publ(struct net *net, u32 type,
 
 	/* Remove service range item if this was its last publication */
 	if (list_empty(&sr->all_publ)) {
-		rb_erase(&sr->tree_node, &sc->ranges);
+		rb_erase_augmented(&sr->tree_node, &sc->ranges, &sr_callbacks);
 		kfree(sr);
 	}
 
@@ -469,34 +556,39 @@ u32 tipc_nametbl_translate(struct net *net, u32 type, u32 instance, u32 *dnode)
 	rcu_read_lock();
 	sc = tipc_service_find(net, type);
 	if (unlikely(!sc))
-		goto not_found;
+		goto exit;
 
 	spin_lock_bh(&sc->lock);
-	sr = tipc_service_first_range(sc, instance);
-	if (unlikely(!sr))
-		goto no_match;
-
-	/* Select lookup algorithm: local, closest-first or round-robin */
-	if (*dnode == self) {
-		list = &sr->local_publ;
-		if (list_empty(list))
-			goto no_match;
-		p = list_first_entry(list, struct publication, local_publ);
-		list_move_tail(&p->local_publ, &sr->local_publ);
-	} else if (legacy && !*dnode && !list_empty(&sr->local_publ)) {
-		list = &sr->local_publ;
-		p = list_first_entry(list, struct publication, local_publ);
-		list_move_tail(&p->local_publ, &sr->local_publ);
-	} else {
-		list = &sr->all_publ;
-		p = list_first_entry(list, struct publication, all_publ);
-		list_move_tail(&p->all_publ, &sr->all_publ);
+	service_range_foreach_match(sr, sc, instance, instance) {
+		/* Select lookup algo: local, closest-first or round-robin */
+		if (*dnode == self) {
+			list = &sr->local_publ;
+			if (list_empty(list))
+				continue;
+			p = list_first_entry(list, struct publication,
+					     local_publ);
+			list_move_tail(&p->local_publ, &sr->local_publ);
+		} else if (legacy && !*dnode && !list_empty(&sr->local_publ)) {
+			list = &sr->local_publ;
+			p = list_first_entry(list, struct publication,
+					     local_publ);
+			list_move_tail(&p->local_publ, &sr->local_publ);
+		} else {
+			list = &sr->all_publ;
+			p = list_first_entry(list, struct publication,
+					     all_publ);
+			list_move_tail(&p->all_publ, &sr->all_publ);
+		}
+		port = p->port;
+		node = p->node;
+		/* Todo: as for legacy, pick the first matching range only, a
+		 * "true" round-robin will be performed as needed.
+		 */
+		break;
 	}
-	port = p->port;
-	node = p->node;
-no_match:
 	spin_unlock_bh(&sc->lock);
-not_found:
+
+exit:
 	rcu_read_unlock();
 	*dnode = node;
 	return port;
@@ -519,7 +611,8 @@ bool tipc_nametbl_lookup(struct net *net, u32 type, u32 instance, u32 scope,
 
 	spin_lock_bh(&sc->lock);
 
-	sr = tipc_service_first_range(sc, instance);
+	/* Todo: a full search i.e. service_range_foreach_match() instead? */
+	sr = service_range_match_first(sc->ranges.rb_node, instance, instance);
 	if (!sr)
 		goto no_match;
 
@@ -548,7 +641,6 @@ void tipc_nametbl_mc_lookup(struct net *net, u32 type, u32 lower, u32 upper,
 	struct service_range *sr;
 	struct tipc_service *sc;
 	struct publication *p;
-	struct rb_node *n;
 
 	rcu_read_lock();
 	sc = tipc_service_find(net, type);
@@ -556,13 +648,7 @@ void tipc_nametbl_mc_lookup(struct net *net, u32 type, u32 lower, u32 upper,
 		goto exit;
 
 	spin_lock_bh(&sc->lock);
-
-	for (n = rb_first(&sc->ranges); n; n = rb_next(n)) {
-		sr = container_of(n, struct service_range, tree_node);
-		if (sr->upper < lower)
-			continue;
-		if (sr->lower > upper)
-			break;
+	service_range_foreach_match(sr, sc, lower, upper) {
 		list_for_each_entry(p, &sr->local_publ, local_publ) {
 			if (p->scope == scope || (!exact && p->scope < scope))
 				tipc_dest_push(dports, 0, p->port);
@@ -583,7 +669,6 @@ void tipc_nametbl_lookup_dst_nodes(struct net *net, u32 type, u32 lower,
 	struct service_range *sr;
 	struct tipc_service *sc;
 	struct publication *p;
-	struct rb_node *n;
 
 	rcu_read_lock();
 	sc = tipc_service_find(net, type);
@@ -591,13 +676,7 @@ void tipc_nametbl_lookup_dst_nodes(struct net *net, u32 type, u32 lower,
 		goto exit;
 
 	spin_lock_bh(&sc->lock);
-
-	for (n = rb_first(&sc->ranges); n; n = rb_next(n)) {
-		sr = container_of(n, struct service_range, tree_node);
-		if (sr->upper < lower)
-			continue;
-		if (sr->lower > upper)
-			break;
+	service_range_foreach_match(sr, sc, lower, upper) {
 		list_for_each_entry(p, &sr->all_publ, all_publ) {
 			tipc_nlist_add(nodes, p->node);
 		}
@@ -795,7 +874,7 @@ static void tipc_service_delete(struct net *net, struct tipc_service *sc)
 			tipc_service_remove_publ(sr, p->node, p->key);
 			kfree_rcu(p, rcu);
 		}
-		rb_erase(&sr->tree_node, &sc->ranges);
+		rb_erase_augmented(&sr->tree_node, &sc->ranges, &sr_callbacks);
 		kfree(sr);
 	}
 	hlist_del_init_rcu(&sc->service_list);
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
