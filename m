Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 992A32D325E
	for <lists+tipc-discussion@lfdr.de>; Tue,  8 Dec 2020 19:51:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kmi4v-0007xg-K3; Tue, 08 Dec 2020 18:51:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kmi4r-0007wk-VG
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:51:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hVghIgwpo/6PbgydeLQ9wTNipxlrOlcXW2X4CszHax4=; b=bMOng8W57jAHnMXxLHO4JUczld
 +9DNpx2O/C9+tQddHElZy7OuGW5AphLNy2Ko/YPK4kl2dedYkcpgWbUtV5zEyutPUoBxkGsY3QgZ3
 +OmW8j+B8AiHXY6QJnT8dC/fkx38WLqprBTjdpyGntw+7MKA1biOAlDwSbLEcSkKId9w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hVghIgwpo/6PbgydeLQ9wTNipxlrOlcXW2X4CszHax4=; b=YbNO3ZTnSSMVqLzIqPRx72AiXY
 PydAjC3EgmZ5HCsSEwy+c/UwupsQcfNunCgKUeFKquj462Ju2Z5XhC/QlVnB54ZFBpw8UBsLub/8j
 xTL165yF2YR6QRhUltyb1f3D1SUNgx0iEGMO1ls40zbwERI9I4hB++VASPDUcz/gpTVU=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kmi4j-006uz6-V0
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:51:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607453449;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hVghIgwpo/6PbgydeLQ9wTNipxlrOlcXW2X4CszHax4=;
 b=bIASp5iDWrJVWQvIUzarhz+5X8+H6WTsJcc9Xie3SVisuOuL6Jkpy86NtcSEe/Y3KDiNSD
 ep7HzWlmyummWJ76dsXlP00KfyzI8F+F3JBpCIRyzKb234GQIhyb9KekKN//YFivkzymWy
 sHQ5WG7C3ZVVJwqDNEO0N4o4Y/h51Xw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-82-UgYuUGHiP9CDZ9-87jPmqw-1; Tue, 08 Dec 2020 13:50:44 -0500
X-MC-Unique: UgYuUGHiP9CDZ9-87jPmqw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2973C102CB7F;
 Tue,  8 Dec 2020 18:50:43 +0000 (UTC)
Received: from f31.redhat.com (ovpn-116-129.rdu2.redhat.com [10.10.116.129])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E01D960877;
 Tue,  8 Dec 2020 18:50:41 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Tue,  8 Dec 2020 13:50:10 -0500
Message-Id: <20201208185012.265508-15-jmaloy@redhat.com>
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
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kmi4j-006uz6-V0
Subject: [tipc-discussion] [net-next 14/16] tipc: simplify api between
 binding table and topology server
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

The function tipc_report_overlap() is called from the binding table
with numerous parameters taken from an instance of struct publication.
A closer look reveals that it always is safe to send along a pointer
to the instance itself, and hence reduce the call signature. We do
that in this commit.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/name_table.c | 20 ++++++---------
 net/tipc/subscr.c     | 57 +++++++++++++++++++++++--------------------
 net/tipc/subscr.h     |  9 +++----
 3 files changed, 41 insertions(+), 45 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 554a006d7c0d..4dfac3b9d26c 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -357,9 +357,7 @@ static bool tipc_service_insert_publ(struct net *net,
 
 	/* Any subscriptions waiting for notification?  */
 	list_for_each_entry_safe(sub, tmp, &sc->subscriptions, service_list) {
-		tipc_sub_report_overlap(sub, p->sr.lower, p->sr.upper,
-					TIPC_PUBLISHED, p->sk.ref, p->sk.node,
-					p->scope, first);
+		tipc_sub_report_overlap(sub, p, TIPC_PUBLISHED, first);
 	}
 	return true;
 err:
@@ -451,9 +449,7 @@ static void tipc_service_subscribe(struct tipc_service *service,
 	/* Sort the publications before reporting */
 	list_sort(NULL, &publ_list, tipc_publ_sort);
 	list_for_each_entry_safe(p, tmp, &publ_list, list) {
-		tipc_sub_report_overlap(sub, p->sr.lower, p->sr.upper,
-					TIPC_PUBLISHED, p->sk.ref, p->sk.node,
-					p->scope, true);
+		tipc_sub_report_overlap(sub, p, TIPC_PUBLISHED, true);
 		list_del_init(&p->list);
 	}
 }
@@ -532,9 +528,7 @@ struct publication *tipc_nametbl_remove_publ(struct net *net,
 	/* Notify any waiting subscriptions */
 	last = list_empty(&sr->all_publ);
 	list_for_each_entry_safe(sub, tmp, &sc->subscriptions, service_list) {
-		tipc_sub_report_overlap(sub, ua->sr.lower, ua->sr.upper,
-					TIPC_WITHDRAWN, sk->ref, sk->node,
-					ua->scope, last);
+		tipc_sub_report_overlap(sub, p, TIPC_WITHDRAWN, last);
 	}
 
 	/* Remove service range item if this was its last publication */
@@ -543,7 +537,7 @@ struct publication *tipc_nametbl_remove_publ(struct net *net,
 		kfree(sr);
 	}
 
-	/* Delete service item if this no more publications and subscriptions */
+	/* Delete service item if no more publications and subscriptions */
 	if (RB_EMPTY_ROOT(&sc->ranges) && list_empty(&sc->subscriptions)) {
 		hlist_del_init_rcu(&sc->service_list);
 		kfree_rcu(sc, rcu);
@@ -842,7 +836,8 @@ bool tipc_nametbl_subscribe(struct tipc_subscription *sub)
 	struct tipc_uaddr ua;
 	bool res = true;
 
-	tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_NODE_SCOPE, type, 0, 0);
+	tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_NODE_SCOPE, type,
+		   tipc_sub_read(s, seq.lower), tipc_sub_read(s, seq.upper));
 	spin_lock_bh(&tn->nametbl_lock);
 	sc = tipc_service_find(sub->net, &ua);
 	if (!sc)
@@ -873,7 +868,8 @@ void tipc_nametbl_unsubscribe(struct tipc_subscription *sub)
 	struct tipc_service *sc;
 	struct tipc_uaddr ua;
 
-	tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_NODE_SCOPE, type, 0, 0);
+	tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_NODE_SCOPE, type,
+		   tipc_sub_read(s, seq.lower), tipc_sub_read(s, seq.upper));
 	spin_lock_bh(&tn->nametbl_lock);
 	sc = tipc_service_find(sub->net, &ua);
 	if (!sc)
diff --git a/net/tipc/subscr.c b/net/tipc/subscr.c
index f6ad0005218c..feda0b6bbf1b 100644
--- a/net/tipc/subscr.c
+++ b/net/tipc/subscr.c
@@ -40,18 +40,26 @@
 #include "subscr.h"
 
 static void tipc_sub_send_event(struct tipc_subscription *sub,
-				u32 found_lower, u32 found_upper,
-				u32 event, u32 port, u32 node)
+				struct publication *p,
+				u32 event)
 {
+	struct tipc_subscr *s = &sub->evt.s;
 	struct tipc_event *evt = &sub->evt;
 
 	if (sub->inactive)
 		return;
 	tipc_evt_write(evt, event, event);
-	tipc_evt_write(evt, found_lower, found_lower);
-	tipc_evt_write(evt, found_upper, found_upper);
-	tipc_evt_write(evt, port.ref, port);
-	tipc_evt_write(evt, port.node, node);
+	if (p) {
+		tipc_evt_write(evt, found_lower, p->sr.lower);
+		tipc_evt_write(evt, found_upper, p->sr.upper);
+		tipc_evt_write(evt, port.ref, p->sk.ref);
+		tipc_evt_write(evt, port.node, p->sk.node);
+	} else {
+		tipc_evt_write(evt, found_lower, s->seq.lower);
+		tipc_evt_write(evt, found_upper, s->seq.upper);
+		tipc_evt_write(evt, port.ref, 0);
+		tipc_evt_write(evt, port.node, 0);
+	}
 	tipc_topsrv_queue_evt(sub->net, sub->conid, event, evt);
 }
 
@@ -61,24 +69,23 @@ static void tipc_sub_send_event(struct tipc_subscription *sub,
  * @found_lower: lower value to test
  * @found_upper: upper value to test
  *
- * Return: 1 if there is overlap, otherwise 0.
+ * Returns true if there is overlap, otherwise false.
  */
-int tipc_sub_check_overlap(struct tipc_service_range *seq, u32 found_lower,
-			   u32 found_upper)
+bool tipc_sub_check_overlap(struct tipc_service_range *sr,
+			    u32 found_lower, u32 found_upper)
 {
-	if (found_lower < seq->lower)
-		found_lower = seq->lower;
-	if (found_upper > seq->upper)
-		found_upper = seq->upper;
+	if (found_lower < sr->lower)
+		found_lower = sr->lower;
+	if (found_upper > sr->upper)
+		found_upper = sr->upper;
 	if (found_lower > found_upper)
-		return 0;
-	return 1;
+		return false;
+	return true;
 }
 
 void tipc_sub_report_overlap(struct tipc_subscription *sub,
-			     u32 found_lower, u32 found_upper,
-			     u32 event, u32 port, u32 node,
-			     u32 scope, int must)
+			     struct publication *p,
+			     u32 event, bool must)
 {
 	struct tipc_subscr *s = &sub->evt.s;
 	u32 filter = tipc_sub_read(s, filter);
@@ -88,29 +95,25 @@ void tipc_sub_report_overlap(struct tipc_subscription *sub,
 	seq.lower = tipc_sub_read(s, seq.lower);
 	seq.upper = tipc_sub_read(s, seq.upper);
 
-	if (!tipc_sub_check_overlap(&seq, found_lower, found_upper))
+	if (!tipc_sub_check_overlap(&seq, p->sr.lower, p->sr.upper))
 		return;
-
 	if (!must && !(filter & TIPC_SUB_PORTS))
 		return;
-	if (filter & TIPC_SUB_CLUSTER_SCOPE && scope == TIPC_NODE_SCOPE)
+	if (filter & TIPC_SUB_CLUSTER_SCOPE && p->scope == TIPC_NODE_SCOPE)
 		return;
-	if (filter & TIPC_SUB_NODE_SCOPE && scope != TIPC_NODE_SCOPE)
+	if (filter & TIPC_SUB_NODE_SCOPE && p->scope != TIPC_NODE_SCOPE)
 		return;
 	spin_lock(&sub->lock);
-	tipc_sub_send_event(sub, found_lower, found_upper,
-			    event, port, node);
+	tipc_sub_send_event(sub, p, event);
 	spin_unlock(&sub->lock);
 }
 
 static void tipc_sub_timeout(struct timer_list *t)
 {
 	struct tipc_subscription *sub = from_timer(sub, t, timer);
-	struct tipc_subscr *s = &sub->evt.s;
 
 	spin_lock(&sub->lock);
-	tipc_sub_send_event(sub, s->seq.lower, s->seq.upper,
-			    TIPC_SUBSCR_TIMEOUT, 0, 0);
+	tipc_sub_send_event(sub, NULL, TIPC_SUBSCR_TIMEOUT);
 	sub->inactive = true;
 	spin_unlock(&sub->lock);
 }
diff --git a/net/tipc/subscr.h b/net/tipc/subscr.h
index 3ded27391d54..5fce2e13fc1a 100644
--- a/net/tipc/subscr.h
+++ b/net/tipc/subscr.h
@@ -43,6 +43,7 @@
 #define TIPC_MAX_SUBSCR         65535
 #define TIPC_MAX_PUBL           65535
 
+struct publication;
 struct tipc_subscription;
 struct tipc_conn;
 
@@ -74,13 +75,9 @@ struct tipc_subscription *tipc_sub_subscribe(struct net *net,
 					     struct tipc_subscr *s,
 					     int conid);
 void tipc_sub_unsubscribe(struct tipc_subscription *sub);
-
-int tipc_sub_check_overlap(struct tipc_service_range *seq,
-			   u32 found_lower, u32 found_upper);
 void tipc_sub_report_overlap(struct tipc_subscription *sub,
-			     u32 found_lower, u32 found_upper,
-			     u32 event, u32 port, u32 node,
-			     u32 scope, int must);
+			     struct publication *p,
+			     u32 event, bool must);
 
 int __net_init tipc_topsrv_init_net(struct net *net);
 void __net_exit tipc_topsrv_exit_net(struct net *net);
-- 
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
