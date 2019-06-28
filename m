Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F9559E6B
	for <lists+tipc-discussion@lfdr.de>; Fri, 28 Jun 2019 17:06:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hgsSL-0002QE-LG; Fri, 28 Jun 2019 15:06:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hgsSK-0002Q7-AP
 for tipc-discussion@lists.sourceforge.net; Fri, 28 Jun 2019 15:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RBdhbqwDBi8SHuR63H43n5YYTE3NygS3UXxU+S0KB7s=; b=gRbw6bn6NbPnNrZE6Zu7cafN2V
 fXE4xf1pHOQhbB1fDN8jegCbe7OGuUY5cGXQaK3ogNbcO317E8bRIHuBSsWv3dD5XkM/WTkYVb3mn
 sc0WqFwGsswaj3gT+Ie4d5hXIq8c0QzA19DZNgixd+OYU/DKE1N+Kt5E5vMy74vJW0iI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RBdhbqwDBi8SHuR63H43n5YYTE3NygS3UXxU+S0KB7s=; b=X
 FaCMRJwFYC1NPbEDQE/dxjNbOIcqQuQgL9Ju1TC4sqn0vnaPkakWHlxp2xESFvVw1uapH95mnX8QB
 5jbbDO+eHNNlDkBBIyqC3CFYJNNOqf0GGnoh9fLKx2X7ers0n8xWU/k77tMcyXRhhe/S2aKFWBNo5
 VLgkrK2xMM+v1uhM=;
Received: from sesbmg23.ericsson.net ([193.180.251.37])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hgsSL-000YZU-GF
 for tipc-discussion@lists.sourceforge.net; Fri, 28 Jun 2019 15:06:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ericsson.com; s=mailgw201801;
 c=relaxed/relaxed; 
 q=dns/txt; i=@ericsson.com; t=1561734381; x=1564326381;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RBdhbqwDBi8SHuR63H43n5YYTE3NygS3UXxU+S0KB7s=;
 b=cO67tS/rfPGznvnVYlbF2AVsqZMw1EXWnbF5zcyIwAfEf1oAZW1ZOdtdQIOJdrrc
 hRF2yQXlOhMu0hh2FUoCz1fsYtzOP77loW9Dqm1qMxuvNi+bcrdbrc5/NAkZZSlt
 dnD29LYD+aJ+YXSOAzLn9LPinrLyr6UZdj8LEX6FpRM=;
X-AuditID: c1b4fb25-3b1ff700000029f0-5c-5d162cedd4f3
Received: from ESESBMB505.ericsson.se (Unknown_Domain [153.88.183.118])
 by sesbmg23.ericsson.net (Symantec Mail Security) with SMTP id
 F8.BD.10736.DEC261D5; Fri, 28 Jun 2019 17:06:21 +0200 (CEST)
Received: from ESESSMR506.ericsson.se (153.88.183.128) by
 ESESBMB505.ericsson.se (153.88.183.188) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Fri, 28 Jun 2019 17:06:21 +0200
Received: from ESESBMB503.ericsson.se (153.88.183.170) by
 ESESSMR506.ericsson.se (153.88.183.128) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Fri, 28 Jun 2019 17:06:20 +0200
Received: from tipsy.lab.linux.ericsson.se (153.88.183.153) by
 smtp.internal.ericsson.com (153.88.183.186) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 28 Jun 2019 17:06:20 +0200
From: Jon Maloy <jon.maloy@ericsson.com>
To: <davem@davemloft.net>, <netdev@vger.kernel.org>
Date: Fri, 28 Jun 2019 17:06:20 +0200
Message-ID: <1561734380-26868-1-git-send-email-jon.maloy@ericsson.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGLMWRmVeSWpSXmKPExsUyM2J7me5bHbFYgz3b5S1uNPQwW8w538Ji
 sWL3JFaLt69msVscWyBmseV8lsWV9rPsFo+vX2d24PDYsvImk8e7K2weuxd8ZvL4vEnOY/2W
 rUwBrFFcNimpOZllqUX6dglcGUdWtzAWzOWvmPz9PEsD4x6eLkZODgkBE4m+zZPZQGwhgaOM
 Egc38HcxcgHZ3xglVnxfygyRAHKOTqmDsC8wSrxfFQ1iswloSLyc1sEIYosIGEu8WtnJBNLM
 LPCYUeLL/VVgU4UF3CTuf78GZrMIqErceb4RzOYFih949IAV4go5ifPHf0ItU5aY+2EaE0SN
 oMTJmU9YQGxmAQmJgy9eME9g5J+FJDULSWoBI9MqRtHi1OKk3HQjY73Uoszk4uL8PL281JJN
 jMDQPbjlt+oOxstvHA8xCnAwKvHwLv4qGivEmlhWXJl7iFGCg1lJhFfynEisEG9KYmVValF+
 fFFpTmrxIUZpDhYlcd713v9ihATSE0tSs1NTC1KLYLJMHJxSDYz58UHbf+o0Twn/OTHmBFO0
 VUtk5cffa141Z3+1PHjZfW3QFlFR84IurYkK84T/Hm80WGYpIX5sy2SZ2ZX8nrqps63aN4v1
 rlsQvLX55IaDs3boeNz+ETrf9+XMDaaeCtG7zv73O3T7RVUT7xrebzUm744otE0uX+mewvfL
 dP/cSkGH2Z+W6CkpsRRnJBpqMRcVJwIAGB+H0VkCAAA=
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hgsSL-000YZU-GF
Subject: [tipc-discussion] [net-next 1/1] tipc: embed jiffies in macro
 TIPC_BC_RETR_LIM
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

The macro TIPC_BC_RETR_LIM is always used in combination with 'jiffies',
so we can just as well perform the addition in the macro itself. This
way, we get a few shorter code lines and one less line break.

Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
---
 net/tipc/link.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index f8bf63b..66d3a07 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -207,7 +207,7 @@ enum {
 	BC_NACK_SND_SUPPRESS,
 };
 
-#define TIPC_BC_RETR_LIM msecs_to_jiffies(10)   /* [ms] */
+#define TIPC_BC_RETR_LIM  (jiffies + msecs_to_jiffies(10))
 #define TIPC_UC_RETR_TIME (jiffies + msecs_to_jiffies(1))
 
 /*
@@ -976,8 +976,7 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 			__skb_queue_tail(transmq, skb);
 			/* next retransmit attempt */
 			if (link_is_bc_sndlink(l))
-				TIPC_SKB_CB(skb)->nxt_retr =
-					jiffies + TIPC_BC_RETR_LIM;
+				TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
 			__skb_queue_tail(xmitq, _skb);
 			TIPC_SKB_CB(skb)->ackers = l->ackers;
 			l->rcv_unacked = 0;
@@ -1027,7 +1026,7 @@ static void tipc_link_advance_backlog(struct tipc_link *l,
 		__skb_queue_tail(&l->transmq, skb);
 		/* next retransmit attempt */
 		if (link_is_bc_sndlink(l))
-			TIPC_SKB_CB(skb)->nxt_retr = jiffies + TIPC_BC_RETR_LIM;
+			TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
 
 		__skb_queue_tail(xmitq, _skb);
 		TIPC_SKB_CB(skb)->ackers = l->ackers;
@@ -1123,7 +1122,7 @@ static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_link *r,
 		if (link_is_bc_sndlink(l)) {
 			if (time_before(jiffies, TIPC_SKB_CB(skb)->nxt_retr))
 				continue;
-			TIPC_SKB_CB(skb)->nxt_retr = jiffies + TIPC_BC_RETR_LIM;
+			TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
 		}
 		_skb = __pskb_copy(skb, LL_MAX_HEADER + MIN_H_SIZE, GFP_ATOMIC);
 		if (!_skb)
-- 
2.1.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
