Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9C2F141D
	for <lists+tipc-discussion@lfdr.de>; Wed,  6 Nov 2019 11:39:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iSIix-0004np-8R; Wed, 06 Nov 2019 10:39:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iSIiv-0004ne-0z
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 10:39:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gEjOJhblRmjoQpE9B5MS0Xgug3wA3MvFxcVqz0IFKI8=; b=YGA7pGd3n4WCQk3n3If4am3LFe
 RusAkgzazpSIfLFO1QeOaVFOtrrJQQLOcqoyDz0jj5iSZVKZ3W7itk0GxDynWEVx9rXzOjpDw8xZb
 NlTISTJjRojmUQ9qHlkMI8IDZd6/gNk4bahBdgu1DaV3BYsGaXFlptxL7FOlha2se1xE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gEjOJhblRmjoQpE9B5MS0Xgug3wA3MvFxcVqz0IFKI8=; b=jWIcguElQ2X0oIZd2oBi8Ll3Yu
 OO6b7mo/CCgRfZ6Jp4aYLRPQ3xfe1RQGS70SBE2EWaSDbglMAXHj8QNCH900Sxs+5SgyW2Cpu+p/c
 T2UP31xzBxHJBDsGF49mwVhbGjJMWcGR2b1OcmcdVe4YeSsFiS+SZ245jASWPUTwpYSU=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iSIiq-0023xD-04
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 10:39:36 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 4AD004AA75;
 Wed,  6 Nov 2019 21:39:25 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1573036765; bh=XiFcS
 qp1UHwc4l3CqWhCRGLFwh8JG42/RRndlKdn4wg=; b=bH3eIgv9uIIx7Flyf4Xs4
 gMAHTZwXRBtGQ1iKPHX1CklSKUS4G5NAQLbrn1dSsp4NpDIpa9DXLJnapt2J7RwB
 DzY1x22Ypf93rHrA+9q+1oQ1AIP/nCJhkz+fU5ZQ7oiO4YbCgLKVyJc6DzX4exbM
 qnXPXn7fg99e30a5Cl1ylU=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id HcO8-GB1BggV; Wed,  6 Nov 2019 21:39:25 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 261154AA80;
 Wed,  6 Nov 2019 21:39:24 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id ECE8C4AA75;
 Wed,  6 Nov 2019 21:39:23 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Wed,  6 Nov 2019 17:39:15 +0700
Message-Id: <20191106103915.22599-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: -0.1 (/)
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
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iSIiq-0023xD-04
Subject: [tipc-discussion] [PATCH RFC] tipc: fix name table rbtree issues
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

Case #3: no round-robin in data sending:
Same as case #2b above, the data sending to service {30} will always
arrive in the {10, 50}.

Case #4: failed to send data:
Same as case #2b above but if the data sending's scope is local and the
{10, 50} is published by a peer node, then it will result in "no route
to host" even though the other {20, 60} is for example on the local
node which should be able to get the data.

The issues are actually due to the way we built the rbtree. This commit
fixes it by introducing an additional field to each node, named 'max',
which is the largest 'upper' of that node subtree. The 'max' value for
each subtrees will be propagated correctly whenever a node is inserted/
removed or the tree is rebalanced by the augmented rbtree callbacks.

By this way, we can change the rbtree searching appoarch to solve the
issues above. Case #3 is however not covered by this commit, we leave
it as current until one is proven to need a round-robin fashion for it.

Besides, since now we have the 'max' value, we can even improve the
searching for a next range matching e.g. in case of multicast, so get
rid of the unneeded looping over all the nodes in the tree.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/name_table.c | 268 +++++++++++++++++++++++++++++++++-----------------
 1 file changed, 179 insertions(+), 89 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 66a65c2cdb23..5cac6c1dfeb0 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -35,6 +35,7 @@
  */
 
 #include <net/sock.h>
+#include <linux/rbtree_augmented.h>
 #include "core.h"
 #include "netlink.h"
 #include "name_table.h"
@@ -50,6 +51,7 @@
  * @lower: service range lower bound
  * @upper: service range upper bound
  * @tree_node: member of service range RB tree
+ * @max: largest 'upper' in this node subtree
  * @local_publ: list of identical publications made from this node
  *   Used by closest_first lookup and multicast lookup algorithm
  * @all_publ: all publications identical to this one, whatever node and scope
@@ -59,6 +61,7 @@ struct service_range {
 	u32 lower;
 	u32 upper;
 	struct rb_node tree_node;
+	u32 max;
 	struct list_head local_publ;
 	struct list_head all_publ;
 };
@@ -81,6 +84,130 @@ struct tipc_service {
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
+					    (start),			\
+					    (end));			\
+	     sr;							\
+	     sr = service_range_match_next(&(sr)->tree_node,		\
+					   (start),			\
+					   (end)))
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
@@ -143,19 +270,8 @@ static struct tipc_service *tipc_service_create(u32 type, struct hlist_head *hd)
 static struct service_range *tipc_service_first_range(struct tipc_service *sc,
 						      u32 instance)
 {
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
+	return service_range_match_first(sc->ranges.rb_node, instance,
+					 instance);
 }
 
 /*  tipc_service_find_range - find service range matching publication parameters
@@ -163,56 +279,46 @@ static struct service_range *tipc_service_first_range(struct tipc_service *sc,
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
 
@@ -289,7 +395,6 @@ static void tipc_service_subscribe(struct tipc_service *service,
 	struct service_range *sr;
 	struct tipc_name_seq ns;
 	struct publication *p;
-	struct rb_node *n;
 	bool first;
 
 	ns.type = tipc_sub_read(sb, seq.type);
@@ -302,14 +407,8 @@ static void tipc_service_subscribe(struct tipc_service *service,
 	if (tipc_sub_read(sb, filter) & TIPC_SUB_NO_STATUS)
 		return;
 
-	for (n = rb_first(&service->ranges); n; n = rb_next(n)) {
-		sr = container_of(n, struct service_range, tree_node);
-		if (sr->lower > ns.upper)
-			break;
-		if (!tipc_sub_check_overlap(&ns, sr->lower, sr->upper))
-			continue;
+	service_range_foreach_match(sr, service, ns.lower, ns.upper) {
 		first = true;
-
 		list_for_each_entry(p, &sr->all_publ, all_publ) {
 			tipc_sub_report_overlap(sub, sr->lower, sr->upper,
 						TIPC_PUBLISHED,	p->port,
@@ -390,7 +489,7 @@ struct publication *tipc_nametbl_remove_publ(struct net *net, u32 type,
 
 	/* Remove service range item if this was its last publication */
 	if (list_empty(&sr->all_publ)) {
-		rb_erase(&sr->tree_node, &sc->ranges);
+		rb_erase_augmented(&sr->tree_node, &sc->ranges, &sr_callbacks);
 		kfree(sr);
 	}
 
@@ -438,34 +537,39 @@ u32 tipc_nametbl_translate(struct net *net, u32 type, u32 instance, u32 *dnode)
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
+		/* As for legacy, pick the first matching range only, a "true"
+		 * round-robin will be performed as needed.
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
@@ -517,7 +621,6 @@ void tipc_nametbl_mc_lookup(struct net *net, u32 type, u32 lower, u32 upper,
 	struct service_range *sr;
 	struct tipc_service *sc;
 	struct publication *p;
-	struct rb_node *n;
 
 	rcu_read_lock();
 	sc = tipc_service_find(net, type);
@@ -525,13 +628,7 @@ void tipc_nametbl_mc_lookup(struct net *net, u32 type, u32 lower, u32 upper,
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
@@ -552,7 +649,6 @@ void tipc_nametbl_lookup_dst_nodes(struct net *net, u32 type, u32 lower,
 	struct service_range *sr;
 	struct tipc_service *sc;
 	struct publication *p;
-	struct rb_node *n;
 
 	rcu_read_lock();
 	sc = tipc_service_find(net, type);
@@ -560,13 +656,7 @@ void tipc_nametbl_lookup_dst_nodes(struct net *net, u32 type, u32 lower,
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
@@ -764,7 +854,7 @@ static void tipc_service_delete(struct net *net, struct tipc_service *sc)
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
