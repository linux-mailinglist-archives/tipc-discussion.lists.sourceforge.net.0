Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD29326DFE
	for <lists+tipc-discussion@lfdr.de>; Sat, 27 Feb 2021 17:56:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lG2tJ-0000TP-P6; Sat, 27 Feb 2021 16:56:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lG2tG-0000Rm-KC
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HOUERnheBfG9G7MNm0vwjv/8GYqa4hrcoIAsYQ5AtJo=; b=ZFZu1x8b5Rub09dXBVGqeukehF
 SnPU1gZ0xl9uaZqO9k0mlK7mAiy9b+Lb3QSGbtTZu5BqnEvuiznGEpiXb9BooPHAVnVh86HyQa9bq
 32wj/66iU+Jbq51Rw7/o2jFr9Oc6GjQOwEf3Rj8sloBUALbw6jUjFg+coiOcx8tmbi5U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HOUERnheBfG9G7MNm0vwjv/8GYqa4hrcoIAsYQ5AtJo=; b=BXes98vF0n3PHu4CsRjRZ/ueWl
 XNCM1y/7H0WAOE4DsGDe/WUMZpLXwS557NlCcvQSEVV6+XScIQ+xYH58efwagX/fyi4f5yi5lJngY
 7aLHBA8vzMF8XlfMC6b25gCKJvtb4tcMoPHuPh73x/qRuv0JXTm7GACYUfwvC3KhsGNA=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lG2t7-0002HM-8O
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614444971;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HOUERnheBfG9G7MNm0vwjv/8GYqa4hrcoIAsYQ5AtJo=;
 b=MRJhTcvWUS6tozNAy7hesA3PgTwGXkhymgK1kfSnqt/GntUmdlqfrp/2BOC+yPVIJLdCVm
 Rgi4ocahetEiZC8lFXTu0/cx+ixDCVFrTrVXZMwJkqVebrpuGWsWmYGavyoZLCxwGyGt+g
 hwzduEO/dcveVVig2HsGVuEEW8g9LYg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-75-mUsqkurFNr6lIHM-FUFl1g-1; Sat, 27 Feb 2021 11:56:09 -0500
X-MC-Unique: mUsqkurFNr6lIHM-FUFl1g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C0B66107ACE4;
 Sat, 27 Feb 2021 16:56:07 +0000 (UTC)
Received: from fenrir.redhat.com (ovpn-114-105.rdu2.redhat.com [10.10.114.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7D12262A02;
 Sat, 27 Feb 2021 16:56:06 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Sat, 27 Feb 2021 11:55:41 -0500
Message-Id: <20210227165542.3781624-16-jmaloy@redhat.com>
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
X-Headers-End: 1lG2t7-0002HM-8O
Subject: [tipc-discussion] [net-next v2 15/16] tipc: add host-endian copy of
 user subscription to struct tipc_subscription
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

We reduce and localize the usage of the tipc_sub_xx() macros by adding a
corresponding member, with fields set in host-endian format, to struct
tipc_subscription.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
Acked-by: Ying Xue <ying.xue@windriver.com>
Acked-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/name_table.c | 29 +++++++++++-----------------
 net/tipc/subscr.c     | 45 +++++++++++++++++++++++--------------------
 net/tipc/subscr.h     |  3 ++-
 3 files changed, 37 insertions(+), 40 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index f648feae446f..98b8874ad2f7 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -416,17 +416,14 @@ static int tipc_publ_sort(void *priv, struct list_head *a,
 static void tipc_service_subscribe(struct tipc_service *service,
 				   struct tipc_subscription *sub)
 {
-	struct tipc_subscr *sb = &sub->evt.s;
 	struct publication *p, *first, *tmp;
 	struct list_head publ_list;
 	struct service_range *sr;
-	struct tipc_service_range r;
-	u32 filter;
+	u32 filter, lower, upper;
 
-	r.type = tipc_sub_read(sb, seq.type);
-	r.lower = tipc_sub_read(sb, seq.lower);
-	r.upper = tipc_sub_read(sb, seq.upper);
-	filter = tipc_sub_read(sb, filter);
+	filter = sub->s.filter;
+	lower = sub->s.seq.lower;
+	upper = sub->s.seq.upper;
 
 	tipc_sub_get(sub);
 	list_add(&sub->service_list, &service->subscriptions);
@@ -435,7 +432,7 @@ static void tipc_service_subscribe(struct tipc_service *service,
 		return;
 
 	INIT_LIST_HEAD(&publ_list);
-	service_range_foreach_match(sr, service, r.lower, r.upper) {
+	service_range_foreach_match(sr, service, lower, upper) {
 		first = NULL;
 		list_for_each_entry(p, &sr->all_publ, all_publ) {
 			if (filter & TIPC_SUB_PORTS)
@@ -826,14 +823,13 @@ void tipc_nametbl_withdraw(struct net *net, struct tipc_uaddr *ua,
 bool tipc_nametbl_subscribe(struct tipc_subscription *sub)
 {
 	struct tipc_net *tn = tipc_net(sub->net);
-	struct tipc_subscr *s = &sub->evt.s;
-	u32 type = tipc_sub_read(s, seq.type);
+	u32 type = sub->s.seq.type;
 	struct tipc_service *sc;
 	struct tipc_uaddr ua;
 	bool res = true;
 
 	tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_NODE_SCOPE, type,
-		   tipc_sub_read(s, seq.lower), tipc_sub_read(s, seq.upper));
+		   sub->s.seq.lower, sub->s.seq.upper);
 	spin_lock_bh(&tn->nametbl_lock);
 	sc = tipc_service_find(sub->net, &ua);
 	if (!sc)
@@ -843,9 +839,8 @@ bool tipc_nametbl_subscribe(struct tipc_subscription *sub)
 		tipc_service_subscribe(sc, sub);
 		spin_unlock_bh(&sc->lock);
 	} else {
-		pr_warn("Failed to subscribe for {%u,%u,%u}\n", type,
-			tipc_sub_read(s, seq.lower),
-			tipc_sub_read(s, seq.upper));
+		pr_warn("Failed to subscribe for {%u,%u,%u}\n",
+			type, sub->s.seq.lower, sub->s.seq.upper);
 		res = false;
 	}
 	spin_unlock_bh(&tn->nametbl_lock);
@@ -859,13 +854,11 @@ bool tipc_nametbl_subscribe(struct tipc_subscription *sub)
 void tipc_nametbl_unsubscribe(struct tipc_subscription *sub)
 {
 	struct tipc_net *tn = tipc_net(sub->net);
-	struct tipc_subscr *s = &sub->evt.s;
-	u32 type = tipc_sub_read(s, seq.type);
 	struct tipc_service *sc;
 	struct tipc_uaddr ua;
 
-	tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_NODE_SCOPE, type,
-		   tipc_sub_read(s, seq.lower), tipc_sub_read(s, seq.upper));
+	tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_NODE_SCOPE,
+		   sub->s.seq.type, sub->s.seq.lower, sub->s.seq.upper);
 	spin_lock_bh(&tn->nametbl_lock);
 	sc = tipc_service_find(sub->net, &ua);
 	if (!sc)
diff --git a/net/tipc/subscr.c b/net/tipc/subscr.c
index 5f8dc0e7488f..8e00d739f03a 100644
--- a/net/tipc/subscr.c
+++ b/net/tipc/subscr.c
@@ -65,37 +65,32 @@ static void tipc_sub_send_event(struct tipc_subscription *sub,
 
 /**
  * tipc_sub_check_overlap - test for subscription overlap with the given values
- * @seq: tipc_name_seq to check
- * @found_lower: lower value to test
- * @found_upper: upper value to test
+ * @subscribed: the service range subscribed for
+ * @found: the service range we are checning for match
  *
  * Returns true if there is overlap, otherwise false.
  */
-bool tipc_sub_check_overlap(struct tipc_service_range *sr,
-			    u32 found_lower, u32 found_upper)
+static bool tipc_sub_check_overlap(struct tipc_service_range *subscribed,
+				   struct tipc_service_range *found)
 {
-	if (found_lower < sr->lower)
-		found_lower = sr->lower;
-	if (found_upper > sr->upper)
-		found_upper = sr->upper;
-	if (found_lower > found_upper)
-		return false;
-	return true;
+	u32 found_lower = found->lower;
+	u32 found_upper = found->upper;
+
+	if (found_lower < subscribed->lower)
+		found_lower = subscribed->lower;
+	if (found_upper > subscribed->upper)
+		found_upper = subscribed->upper;
+	return found_lower <= found_upper;
 }
 
 void tipc_sub_report_overlap(struct tipc_subscription *sub,
 			     struct publication *p,
 			     u32 event, bool must)
 {
-	struct tipc_subscr *s = &sub->evt.s;
-	u32 filter = tipc_sub_read(s, filter);
-	struct tipc_service_range seq;
-
-	seq.type = tipc_sub_read(s, seq.type);
-	seq.lower = tipc_sub_read(s, seq.lower);
-	seq.upper = tipc_sub_read(s, seq.upper);
+	struct tipc_service_range *sr = &sub->s.seq;
+	u32 filter = sub->s.filter;
 
-	if (!tipc_sub_check_overlap(&seq, p->sr.lower, p->sr.upper))
+	if (!tipc_sub_check_overlap(sr, &p->sr))
 		return;
 	if (!must && !(filter & TIPC_SUB_PORTS))
 		return;
@@ -137,12 +132,14 @@ struct tipc_subscription *tipc_sub_subscribe(struct net *net,
 					     struct tipc_subscr *s,
 					     int conid)
 {
+	u32 lower = tipc_sub_read(s, seq.lower);
+	u32 upper = tipc_sub_read(s, seq.upper);
 	u32 filter = tipc_sub_read(s, filter);
 	struct tipc_subscription *sub;
 	u32 timeout;
 
 	if ((filter & TIPC_SUB_PORTS && filter & TIPC_SUB_SERVICE) ||
-	    (tipc_sub_read(s, seq.lower) > tipc_sub_read(s, seq.upper))) {
+	    lower > upper) {
 		pr_warn("Subscription rejected, illegal request\n");
 		return NULL;
 	}
@@ -157,6 +154,12 @@ struct tipc_subscription *tipc_sub_subscribe(struct net *net,
 	sub->conid = conid;
 	sub->inactive = false;
 	memcpy(&sub->evt.s, s, sizeof(*s));
+	sub->s.seq.type = tipc_sub_read(s, seq.type);
+	sub->s.seq.lower = lower;
+	sub->s.seq.upper = upper;
+	sub->s.filter = filter;
+	sub->s.timeout = tipc_sub_read(s, timeout);
+	memcpy(sub->s.usr_handle, s->usr_handle, 8);
 	spin_lock_init(&sub->lock);
 	kref_init(&sub->kref);
 	if (!tipc_nametbl_subscribe(sub)) {
diff --git a/net/tipc/subscr.h b/net/tipc/subscr.h
index 56769ce46e4d..ddea6554ec46 100644
--- a/net/tipc/subscr.h
+++ b/net/tipc/subscr.h
@@ -60,12 +60,13 @@ struct tipc_conn;
  * @lock: serialize up/down and timer events
  */
 struct tipc_subscription {
+	struct tipc_subscr s;
+	struct tipc_event evt;
 	struct kref kref;
 	struct net *net;
 	struct timer_list timer;
 	struct list_head service_list;
 	struct list_head sub_list;
-	struct tipc_event evt;
 	int conid;
 	bool inactive;
 	spinlock_t lock;
-- 
2.29.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
