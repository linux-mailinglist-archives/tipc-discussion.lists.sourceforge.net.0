Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB9B2D3267
	for <lists+tipc-discussion@lfdr.de>; Tue,  8 Dec 2020 19:51:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kmi5H-0004pB-2z; Tue, 08 Dec 2020 18:51:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kmi4k-0004k9-Sb
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:51:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EduEV2zlTXGiyQkPl8MovE//6p0QYT7cBY1gE63vS7s=; b=jPjmUv0EJMQrQRLOYT3fmguEQy
 ddkHPeczV3uT5IVUFmwvNZT1YZ4kcaMYnCzPaXzy3vXtIqR+BLK+eGtlOxUmUELmkU7ldpMzQxJRb
 FvxpILkwKuxnuIqBKhcA4AAHOeWTwdhlr4BlOARCIS5fOxS+HGf7xVsBIzjUCVWkFqbM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EduEV2zlTXGiyQkPl8MovE//6p0QYT7cBY1gE63vS7s=; b=BsEpAA3s1Y/N4foUVUqgMgQHVl
 tue61cEyYYPUILveO0oKWYzB+1UVntbVv+wlQ0pye2HDB4w+D9h64wCbJq6P5Qba/0pkCbBfb2QJ+
 Qm1hp+xmUUj2y/M5qSdQonEWnl6UjMOFKQ7mM+g73COPx0/crk6Kzf2Hzwgbyj7GpNyU=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kmi4b-006uyl-R0
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:51:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607453447;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EduEV2zlTXGiyQkPl8MovE//6p0QYT7cBY1gE63vS7s=;
 b=c9YhjOdZGfTrYH7puj9M1QBVRLaH4JcthV2QvgD2skDevZSnPe0KpzmsRr4GV/M0VvowSw
 Bwx5k1sV/SmW6LEWc6eFkv+FvcYPzYAgwv6WhQJOGhusWi4/ovS/ejOz497wKmtA+yQw/H
 rDcVOcO5lK7j6tBKdtfaewNITqiYQ8E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-276-RT4Gi2syPpqCu7EfGazamA-1; Tue, 08 Dec 2020 13:50:46 -0500
X-MC-Unique: RT4Gi2syPpqCu7EfGazamA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 41A158144E7;
 Tue,  8 Dec 2020 18:50:40 +0000 (UTC)
Received: from f31.redhat.com (ovpn-116-129.rdu2.redhat.com [10.10.116.129])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A321660877;
 Tue,  8 Dec 2020 18:50:38 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Tue,  8 Dec 2020 13:50:08 -0500
Message-Id: <20201208185012.265508-13-jmaloy@redhat.com>
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kmi4b-006uyl-R0
Subject: [tipc-discussion] [net-next 12/16] tipc: simplify signature of
 tipc_service_find_range()
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

We simplify the signatures of the functions tipc_service_create_range()
and tipc_service_finc_range().

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/name_table.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 7f2fb446233e..57abed74d0d9 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -276,13 +276,13 @@ static struct tipc_service *tipc_service_create(u32 type, struct hlist_head *hd)
 /*  tipc_service_find_range - find service range matching publication parameters
  */
 static struct service_range *tipc_service_find_range(struct tipc_service *sc,
-						     u32 lower, u32 upper)
+						     struct tipc_uaddr *ua)
 {
 	struct service_range *sr;
 
-	service_range_foreach_match(sr, sc, lower, upper) {
+	service_range_foreach_match(sr, sc, ua->sr.lower, ua->sr.upper) {
 		/* Look for exact match */
-		if (sr->lower == lower && sr->upper == upper)
+		if (sr->lower == ua->sr.lower && sr->upper == ua->sr.upper)
 			return sr;
 	}
 
@@ -290,10 +290,12 @@ static struct service_range *tipc_service_find_range(struct tipc_service *sc,
 }
 
 static struct service_range *tipc_service_create_range(struct tipc_service *sc,
-						       u32 lower, u32 upper)
+						       struct publication *p)
 {
 	struct rb_node **n, *parent = NULL;
 	struct service_range *sr;
+	u32 lower = p->sr.lower;
+	u32 upper = p->sr.upper;
 
 	n = &sc->ranges.rb_node;
 	while (*n) {
@@ -331,7 +333,7 @@ static bool tipc_service_insert_publ(struct net *net,
 	u32 node = p->sk.node;
 	bool first = false;
 
-	sr = tipc_service_create_range(sc, p->sr.lower, p->sr.upper);
+	sr = tipc_service_create_range(sc, p);
 	if (!sr)
 		goto  err;
 
@@ -515,7 +517,7 @@ struct publication *tipc_nametbl_remove_publ(struct net *net,
 		return NULL;
 
 	spin_lock_bh(&sc->lock);
-	sr = tipc_service_find_range(sc, ua->sr.lower, ua->sr.upper);
+	sr = tipc_service_find_range(sc, ua);
 	if (!sr)
 		goto exit;
 	p = tipc_service_remove_publ(sr, ua, sk, key);
-- 
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
