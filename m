Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE33B326DFF
	for <lists+tipc-discussion@lfdr.de>; Sat, 27 Feb 2021 17:56:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lG2tK-0002Ek-CT; Sat, 27 Feb 2021 16:56:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lG2tI-0002E9-Mg
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YM0bqwJWl7bCH4uCnGxz92C+Hi2omHYRCBArO6kZeWU=; b=Pnd6W3BsufIyzNCg785OkcCq+m
 mK6XdQd29CbYtMznLLXwXQbOYXer8J7GatdSKrE+2K8cax9uxWc9y4gi1PH6ROGx6kdlUdemgorUx
 tMHtRmeBnKgGs98Rx49lCUeaRjGfarCvSTOJIdQbv6KQ3ybU8Ea9CpBQBGpiPTDMrTx8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YM0bqwJWl7bCH4uCnGxz92C+Hi2omHYRCBArO6kZeWU=; b=EevLxd/LVRZBoAGxp0qwhjVM/r
 9PYdrOk93PFCXndAcLCv7ShT1iz34MXJOkQrEjIWUU3CVvSiFrfpWoeXKTuQ9oY2/sPc4EXQi7XyT
 683ljh0fBDRBz84Gvy4YbMAeyHwp/3FIM9j/zJQHhHXyO+xBtZ74ihHzCn02WwhIWl9A=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lG2t4-007iBo-NB
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614444968;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YM0bqwJWl7bCH4uCnGxz92C+Hi2omHYRCBArO6kZeWU=;
 b=W9ow2ButhAruB9sZgbGcFypkbI8Kj+ib4+JIqmXE2gmAIq78EJZv/buvVEghQjGVpAT2qK
 4N/FUP3Th3ixVmKqesKW690VvhLGyvxOhanBOLPYsYolXWgNkEI2234f94K5ZTrZJi2C2n
 JJr3GZqE1LAzqoKFxSfF3wjYSHsTlkI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-388-0UZboWGEOpmIfPK_CdwZ1g-1; Sat, 27 Feb 2021 11:56:04 -0500
X-MC-Unique: 0UZboWGEOpmIfPK_CdwZ1g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5AD45100A24F;
 Sat, 27 Feb 2021 16:56:03 +0000 (UTC)
Received: from fenrir.redhat.com (ovpn-114-105.rdu2.redhat.com [10.10.114.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 19C7262A02;
 Sat, 27 Feb 2021 16:56:01 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Sat, 27 Feb 2021 11:55:38 -0500
Message-Id: <20210227165542.3781624-13-jmaloy@redhat.com>
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
X-Headers-End: 1lG2t4-007iBo-NB
Subject: [tipc-discussion] [net-next v2 12/16] tipc: simplify signature of
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
and tipc_service_find_range().

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
Acked-by: Ying Xue <ying.xue@windriver.com>
Acked-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/name_table.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 1ce65cbce672..f6a1b78a807e 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -275,13 +275,13 @@ static struct tipc_service *tipc_service_create(u32 type, struct hlist_head *hd)
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
 
@@ -289,10 +289,12 @@ static struct service_range *tipc_service_find_range(struct tipc_service *sc,
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
@@ -332,7 +334,7 @@ static bool tipc_service_insert_publ(struct net *net,
 	bool res = false;
 
 	spin_lock_bh(&sc->lock);
-	sr = tipc_service_create_range(sc, p->sr.lower, p->sr.upper);
+	sr = tipc_service_create_range(sc, p);
 	if (!sr)
 		goto  exit;
 
@@ -513,7 +515,7 @@ struct publication *tipc_nametbl_remove_publ(struct net *net,
 		return NULL;
 
 	spin_lock_bh(&sc->lock);
-	sr = tipc_service_find_range(sc, lower, upper);
+	sr = tipc_service_find_range(sc, ua);
 	if (!sr)
 		goto exit;
 	p = tipc_service_remove_publ(sr, sk, key);
-- 
2.29.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
