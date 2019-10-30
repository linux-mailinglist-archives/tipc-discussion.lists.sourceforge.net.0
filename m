Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F25B7E9A40
	for <lists+tipc-discussion@lfdr.de>; Wed, 30 Oct 2019 11:42:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iPlQv-0001S1-57; Wed, 30 Oct 2019 10:42:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iPlQt-0001Rj-TM
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Oct 2019 10:42:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lo/MPPgP3PXlawxmlOuu30GuUReurD18ZrECbZX4CPY=; b=FaI4e4EYB6eWgaCO4CZCJKyOX2
 v5hI3stR1OWNaHESZ3glOojiZMooDCIjjlI2t+NeB6jc2FM3WPIQ/WgW+7HDiah6dezG2V7fDNPg3
 bNCnOnBX4l9EbiAaIX5ut/XKP+MqRpSZ9+9/Iw4mQW5aiWAapn9T0krCQz4l6SewSRU4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Lo/MPPgP3PXlawxmlOuu30GuUReurD18ZrECbZX4CPY=; b=OA7bQi2BYXS4Dtk4QhLo8FUj9g
 /xK5e8mqbplW6JBC5+jnpc/S05944lhsQzMLVNOM4tEXlQTw2vHI22OeuxB+ytzT7wt5PUErMDGef
 2gphFtu2HBiOccC4+ypLIWdlwceCklXxIh4WJkM0FsnEAnru1wpnRv+ozng39uORUps4=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iPlQp-00AiFG-T9
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Oct 2019 10:42:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 09F8048ED5;
 Wed, 30 Oct 2019 21:42:21 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1572432140; bh=QoYo2
 0pgp1MN+t+CeoqlL2GP7TkG+xgkknWkv3d72IM=; b=ITAgQq/ImXZIVbWq6eB85
 N8jFUQooGnxZW4H/+yHD88/BWUvJAi0FlMClFCPRKt/oA+i4jmXlQibefBnH87en
 wiUNeogtcdmaXFss2YnnxtFWND0+4vVw/anxzpg9VOGlTvuFKl0yhXVWCSPmGFBD
 gFqThF53MfrrGitZIcQf6c=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id nd6tlGDca6YG; Wed, 30 Oct 2019 21:42:20 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id A00A74A80F;
 Wed, 30 Oct 2019 21:42:20 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 8E9A848ED5;
 Wed, 30 Oct 2019 21:42:19 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Wed, 30 Oct 2019 17:42:14 +0700
Message-Id: <20191030104214.20254-1-tuong.t.lien@dektech.com.au>
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
X-Headers-End: 1iPlQp-00AiFG-T9
Subject: [tipc-discussion] [net-next] tipc: support in-order name
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

Acked-by: Jon Maloy <jon.maloy@ericsson.com>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/name_table.c | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 66a65c2cdb23..a98cfba7ed93 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -35,6 +35,7 @@
  */
 
 #include <net/sock.h>
+#include <linux/list_sort.h>
 #include "core.h"
 #include "netlink.h"
 #include "name_table.h"
@@ -54,6 +55,8 @@
  *   Used by closest_first lookup and multicast lookup algorithm
  * @all_publ: all publications identical to this one, whatever node and scope
  *   Used by round-robin lookup algorithm
+ * @list: to form a list of interested service ranges
+ * @id: the service range's ID in the same tipc service
  */
 struct service_range {
 	u32 lower;
@@ -61,11 +64,14 @@ struct service_range {
 	struct rb_node tree_node;
 	struct list_head local_publ;
 	struct list_head all_publ;
+	struct list_head list;
+	u16 id;
 };
 
 /**
  * struct tipc_service - container for all published instances of a service type
  * @type: 32 bit 'type' value for service
+ * @range_cnt: increasing counter for service ranges in this service
  * @ranges: rb tree containing all service ranges for this service
  * @service_list: links to adjacent name ranges in hash chain
  * @subscriptions: list of subscriptions for this service type
@@ -74,6 +80,7 @@ struct service_range {
  */
 struct tipc_service {
 	u32 type;
+	u16 range_cnt;
 	struct rb_root ranges;
 	struct hlist_node service_list;
 	struct list_head subscriptions;
@@ -209,6 +216,7 @@ static struct service_range *tipc_service_create_range(struct tipc_service *sc,
 		return NULL;
 	sr->lower = lower;
 	sr->upper = upper;
+	sr->id = sc->range_cnt++;
 	INIT_LIST_HEAD(&sr->local_publ);
 	INIT_LIST_HEAD(&sr->all_publ);
 	rb_link_node(&sr->tree_node, parent, n);
@@ -277,6 +285,17 @@ static struct publication *tipc_service_remove_publ(struct service_range *sr,
 	return NULL;
 }
 
+static int service_range_cmp(void *priv, struct list_head *a,
+			     struct list_head *b)
+{
+	struct service_range *sra, *srb;
+
+	sra = container_of(a, struct service_range, list);
+	srb = container_of(b, struct service_range, list);
+
+	return more(sra->id, srb->id);
+}
+
 /**
  * tipc_service_subscribe - attach a subscription, and optionally
  * issue the prescribed number of events if there is any service
@@ -287,6 +306,7 @@ static void tipc_service_subscribe(struct tipc_service *service,
 {
 	struct tipc_subscr *sb = &sub->evt.s;
 	struct service_range *sr;
+	struct list_head sr_list;
 	struct tipc_name_seq ns;
 	struct publication *p;
 	struct rb_node *n;
@@ -302,14 +322,19 @@ static void tipc_service_subscribe(struct tipc_service *service,
 	if (tipc_sub_read(sb, filter) & TIPC_SUB_NO_STATUS)
 		return;
 
+	INIT_LIST_HEAD(&sr_list);
 	for (n = rb_first(&service->ranges); n; n = rb_next(n)) {
 		sr = container_of(n, struct service_range, tree_node);
 		if (sr->lower > ns.upper)
 			break;
 		if (!tipc_sub_check_overlap(&ns, sr->lower, sr->upper))
 			continue;
-		first = true;
+		list_add(&sr->list, &sr_list);
+	}
 
+	list_sort(NULL, &sr_list, service_range_cmp);
+	list_for_each_entry(sr, &sr_list, list) {
+		first = true;
 		list_for_each_entry(p, &sr->all_publ, all_publ) {
 			tipc_sub_report_overlap(sub, sr->lower, sr->upper,
 						TIPC_PUBLISHED,	p->port,
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
