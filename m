Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3712D3265
	for <lists+tipc-discussion@lfdr.de>; Tue,  8 Dec 2020 19:51:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kmi4z-0003Cw-2F; Tue, 08 Dec 2020 18:51:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kmi4r-0003Bs-VG
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:51:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sc3k+YJoblnSqdbtqa5kaIrCloAowAuHjYlGfHGQ2fM=; b=IBxjahjqdzfdEwiOg22owYnP6l
 K6/Boud+L0d3FAwxLCBtm8Hkccm6hV40INxzdWOrZd9hh7UjdD9lXTa7Njs60k9ymmiMJM904+fVr
 5ziXLJqwb94TVkvSJmscDid22R6b2ZVjS6n3fga1vxQJ3kIxe4zH+hd0pp8Py60MW2YQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sc3k+YJoblnSqdbtqa5kaIrCloAowAuHjYlGfHGQ2fM=; b=ZNQsyBbaovQJGrVR8VLTgznjzP
 HXSYLeK4ui3fyR+OkgTdzcfey76rYgxrzYNPbf9elAGd3/CZSupEMwkNQpX6xNFoYHoYo73pgVyC7
 oa343SV+FyDBSgn5pFBySBbKjvRL6VAdjfZQ3epp9HFJ7f3bgIiTUBLl+steESsBgMrY=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kmi4h-003uhp-Cz
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:51:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607453446;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sc3k+YJoblnSqdbtqa5kaIrCloAowAuHjYlGfHGQ2fM=;
 b=h5dv1CfeySpgNPTaUEhH5ns7Fi3yZF4GNw2ri/N/vUVGKGYYkMNdxs4W6gX5S2yIElaJL/
 gTyPyo2cIIpmwDh0+djKi3gBgbay8AmXXhwDNQSYrf8zEmktE8RlZtodkoy2doj02Q1SAE
 qiAQTFI0e9PdspNa4F1BqKIuqZeWLD4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-108-NprYyhYAN_KxyHkOFtq6QA-1; Tue, 08 Dec 2020 13:50:43 -0500
X-MC-Unique: NprYyhYAN_KxyHkOFtq6QA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DE68F107ACFA;
 Tue,  8 Dec 2020 18:50:19 +0000 (UTC)
Received: from f31.redhat.com (ovpn-116-129.rdu2.redhat.com [10.10.116.129])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 68FCC60877;
 Tue,  8 Dec 2020 18:50:18 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Tue,  8 Dec 2020 13:49:58 -0500
Message-Id: <20201208185012.265508-3-jmaloy@redhat.com>
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
X-Headers-End: 1kmi4h-003uhp-Cz
Subject: [tipc-discussion] [net-next 02/16] tipc: move creation of
 publication item one level up in call chain
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

We instantiante struct publication in tipc_nametbl_insert_publ()
instead of as currently in tipc_service_insert_publ(). This has the
advantage that we can pass a pointer to the publication struct to
the next call levels, instead of the numerous individual parameters
we pass on now. It also gives us a location to keep the contents of
the additional fields we will introduce in a later commit.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/name_table.c | 63 ++++++++++++++++++++++---------------------
 1 file changed, 32 insertions(+), 31 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index c37a4a9c87ca..68e269b49780 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -327,49 +327,44 @@ static struct service_range *tipc_service_create_range(struct tipc_service *sc,
 	return sr;
 }
 
-static struct publication *tipc_service_insert_publ(struct net *net,
-						    struct tipc_service *sc,
-						    u32 type, u32 lower,
-						    u32 upper, u32 scope,
-						    u32 node, u32 port,
-						    u32 key)
+static bool tipc_service_insert_publ(struct net *net,
+				     struct tipc_service *sc,
+				     struct publication *p)
 {
 	struct tipc_subscription *sub, *tmp;
 	struct service_range *sr;
-	struct publication *p;
+	struct publication *_p;
+	u32 node = p->sk.node;
 	bool first = false;
 
-	sr = tipc_service_create_range(sc, lower, upper);
+	sr = tipc_service_create_range(sc, p->sr.lower, p->sr.upper);
 	if (!sr)
 		goto  err;
 
 	first = list_empty(&sr->all_publ);
 
 	/* Return if the publication already exists */
-	list_for_each_entry(p, &sr->all_publ, all_publ) {
-		if (p->key == key && (!p->sk.node || p->sk.node == node))
-			return NULL;
+	list_for_each_entry(_p, &sr->all_publ, all_publ) {
+		if (_p->key == p->key && (!_p->sk.node || _p->sk.node == node))
+			return false;
 	}
 
-	/* Create and insert publication */
-	p = tipc_publ_create(type, lower, upper, scope, node, port, key);
-	if (!p)
-		goto err;
-	/* Suppose there shouldn't be a huge gap btw publs i.e. >INT_MAX */
-	p->id = sc->publ_cnt++;
-	if (in_own_node(net, node))
+	if (in_own_node(net, p->sk.node))
 		list_add(&p->local_publ, &sr->local_publ);
 	list_add(&p->all_publ, &sr->all_publ);
+	p->id = sc->publ_cnt++;
 
 	/* Any subscriptions waiting for notification?  */
 	list_for_each_entry_safe(sub, tmp, &sc->subscriptions, service_list) {
-		tipc_sub_report_overlap(sub, p->sr.lower, p->sr.upper, TIPC_PUBLISHED,
-					p->sk.ref, p->sk.node, p->scope, first);
+		tipc_sub_report_overlap(sub, p->sr.lower, p->sr.upper,
+					TIPC_PUBLISHED, p->sk.ref, p->sk.node,
+					p->scope, first);
 	}
-	return p;
+	return true;
 err:
-	pr_warn("Failed to bind to %u,%u,%u, no memory\n", type, lower, upper);
-	return NULL;
+	pr_warn("Failed to bind to %u,%u,%u, no memory\n",
+		p->sr.type, p->sr.lower, p->sr.upper);
+	return false;
 }
 
 /**
@@ -481,6 +476,11 @@ struct publication *tipc_nametbl_insert_publ(struct net *net, u32 type,
 	struct name_table *nt = tipc_name_table(net);
 	struct tipc_service *sc;
 	struct publication *p;
+	bool res = false;
+
+	p = tipc_publ_create(type, lower, upper, scope, node, port, key);
+	if (!p)
+		return NULL;
 
 	if (scope > TIPC_NODE_SCOPE || lower > upper) {
 		pr_debug("Failed to bind illegal {%u,%u,%u} with scope %u\n",
@@ -490,14 +490,15 @@ struct publication *tipc_nametbl_insert_publ(struct net *net, u32 type,
 	sc = tipc_service_find(net, type);
 	if (!sc)
 		sc = tipc_service_create(type, &nt->services[hash(type)]);
-	if (!sc)
-		return NULL;
-
-	spin_lock_bh(&sc->lock);
-	p = tipc_service_insert_publ(net, sc, type, lower, upper,
-				     scope, node, port, key);
-	spin_unlock_bh(&sc->lock);
-	return p;
+	if (sc) {
+		spin_lock_bh(&sc->lock);
+		res = tipc_service_insert_publ(net, sc, p);
+		spin_unlock_bh(&sc->lock);
+	}
+	if (res)
+		return p;
+	kfree(p);
+	return NULL;
 }
 
 struct publication *tipc_nametbl_remove_publ(struct net *net, u32 type,
-- 
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
