Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CCB7AAE1
	for <lists+tipc-discussion@lfdr.de>; Tue, 30 Jul 2019 16:23:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hsT2O-0000yw-Jn; Tue, 30 Jul 2019 14:23:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hsT2L-0000y1-93
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Jul 2019 14:23:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xzZm2LQXTQHz+42GuRIe5BF2uYaMGKYsWxhdm9sG8YQ=; b=EI4xMsySmcW9WslDlbcYGVaYRs
 eSqk0ZJDgZo1lhsu/WqSbixZSf8NQlKIGdY7iTg2R7mt6mysP6R85NbQipf30X8btph8LqLTOc1Nq
 XUjLc/reBJyiblTfsY8nz+Sd7yje9IaLZ0vSD4f+mq3mOB1/f50Xfz7OOiBTp+V7RVK8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xzZm2LQXTQHz+42GuRIe5BF2uYaMGKYsWxhdm9sG8YQ=; b=N
 APy0Wi35WF50tFZZEFdT45VigjEZz33DEdWRfOJZEx6o+pJs3sKlToG2HimPd0BCm2RmaIDkaTTvu
 qxQiH5VvgXS5yWbcmQrjQ1FI3FJ6QpT89ynQ22ukHS5ti8SLldhd/EgL+eiuiIXt22QJUhnz3j7Ko
 Ng4sW72XBt9wT4es=;
Received: from sesbmg23.ericsson.net ([193.180.251.37])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsT2H-004oSY-C2
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Jul 2019 14:23:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ericsson.com; s=mailgw201801;
 c=relaxed/relaxed; 
 q=dns/txt; i=@ericsson.com; t=1564496598; x=1567088598;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xzZm2LQXTQHz+42GuRIe5BF2uYaMGKYsWxhdm9sG8YQ=;
 b=Dub/+n4JQfHn9phnpevEJiajQlRBeDP9SCyzkv7qkTKW3rUuwp3EuVZTaK7xVzb0
 aJBgkqyrYCj7z1x8/XdRB9S/zfcngNDSwfVQUQxcEXgBcDHc5hxI1WtgoBvhtnBt
 XMq5Jhn3/T8GCx8XmIJEaS4edF8BlNA9tERdnAVB3b0=;
X-AuditID: c1b4fb25-399ff700000029f0-94-5d4052d6ab3a
Received: from ESESSMB503.ericsson.se (Unknown_Domain [153.88.183.121])
 by sesbmg23.ericsson.net (Symantec Mail Security) with SMTP id
 21.97.10736.6D2504D5; Tue, 30 Jul 2019 16:23:18 +0200 (CEST)
Received: from ESESBMR506.ericsson.se (153.88.183.202) by
 ESESSMB503.ericsson.se (153.88.183.191) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Tue, 30 Jul 2019 16:23:18 +0200
Received: from ESESBMB505.ericsson.se (153.88.183.172) by
 ESESBMR506.ericsson.se (153.88.183.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Tue, 30 Jul 2019 16:23:18 +0200
Received: from tipsy.lab.linux.ericsson.se (153.88.183.153) by
 smtp.internal.ericsson.com (153.88.183.188) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 30 Jul 2019 16:23:18 +0200
From: Jon Maloy <jon.maloy@ericsson.com>
To: <davem@davemloft.net>, <netdev@vger.kernel.org>
Date: Tue, 30 Jul 2019 16:23:18 +0200
Message-ID: <1564496598-5080-1-git-send-email-jon.maloy@ericsson.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrOLMWRmVeSWpSXmKPExsUyM2J7pe61IIdYgxkzDCxuNPQwW8w538Ji
 sWL3JFaLt69msVscWyBmseV8lsWV9rPsFo+vX2d24PDYsvImk8e7K2weuxd8ZvL4vEnOY/2W
 rUwBrFFcNimpOZllqUX6dglcGbdfyxScFq34/ussSwPjLcEuRk4OCQETiXkvN7J0MXJxCAkc
 ZZTY/HYNE4TzjVFi5sp3LHDO9GOz2SGcC4wSf2Z9YQfpZxPQkHg5rYMRxBYRMJZ4tbITrJ1Z
 4DGjxJf7q9hAEsICrhJXFjxhBbFZBFQlNnzaATSWg4MXKD59lRvEHXIS54//ZAaxhQSUJeZ+
 mMYEYvMKCEqcnPmEBcRmFpCQOPjiBfMERv5ZSFKzkKQWMDKtYhQtTi1Oyk03MtZLLcpMLi7O
 z9PLSy3ZxAgM3oNbfqvuYLz8xvEQowAHoxIP75qt4rFCrIllxZW5hxglOJiVRHglz4nECvGm
 JFZWpRblxxeV5qQWH2KU5mBREudd7/0vRkggPbEkNTs1tSC1CCbLxMEp1cDowGDquk//QXzv
 rXknIitFGnXkF/746jrtIafW3JnhKV2+lzKFb3XeZKmTapp4plttqfBpm1TTdXeab5TzfWi5
 mbbuMvP+fT4n9j4I4T2aFcZc9FGe2SwqdM5tw7Nb8w90rd6vuNLnME+q0J8tThKTH0d+YFUW
 fzhl8+wT4U6Gp1v+/M8ujvivxFKckWioxVxUnAgA4SLCV1oCAAA=
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hsT2H-004oSY-C2
Subject: [tipc-discussion] [net-next 1/1] tipc: reduce risk of wakeup queue
 starvation
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

In commit 365ad353c256 ("tipc: reduce risk of user starvation during
link congestion") we allowed senders to add exactly one list of extra
buffers to the link backlog queues during link congestion (aka
"oversubscription"). However, the criteria for when to stop adding
wakeup messages to the input queue when the overload abates is
inaccurate, and may cause starvation problems during very high load.

Currently, we stop adding wakeup messages after 10 total failed attempts
where we find that there is no space left in the backlog queue for a
certain importance level. The counter for this is accumulated across all
levels, which may lead the algorithm to leave the loop prematurely,
although there may still be plenty of space available at some levels.
The result is sometimes that messages near the wakeup queue tail are not
added to the input queue as they should be.

We now introduce a more exact algorithm, where we keep adding wakeup
messages to a level as long as the backlog queue has free slots for
the corresponding level, and stop at the moment there are no more such
slots or when there are no more wakeup messages to dequeue.

Fixes: 365ad35 ("tipc: reduce risk of user starvation during link congestion")
Reported-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
Acked-by: Ying Xue <ying.xue@windriver.com>
Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
---
 net/tipc/link.c | 29 +++++++++++++++++++++--------
 1 file changed, 21 insertions(+), 8 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 2c27477..dd3155b 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -854,18 +854,31 @@ static int link_schedule_user(struct tipc_link *l, struct tipc_msg *hdr)
  */
 static void link_prepare_wakeup(struct tipc_link *l)
 {
+	struct sk_buff_head *wakeupq = &l->wakeupq;
+	struct sk_buff_head *inputq = l->inputq;
 	struct sk_buff *skb, *tmp;
-	int imp, i = 0;
+	struct sk_buff_head tmpq;
+	int avail[5] = {0,};
+	int imp = 0;
+
+	__skb_queue_head_init(&tmpq);
 
-	skb_queue_walk_safe(&l->wakeupq, skb, tmp) {
+	for (; imp <= TIPC_SYSTEM_IMPORTANCE; imp++)
+		avail[imp] = l->backlog[imp].limit - l->backlog[imp].len;
+
+	skb_queue_walk_safe(wakeupq, skb, tmp) {
 		imp = TIPC_SKB_CB(skb)->chain_imp;
-		if (l->backlog[imp].len < l->backlog[imp].limit) {
-			skb_unlink(skb, &l->wakeupq);
-			skb_queue_tail(l->inputq, skb);
-		} else if (i++ > 10) {
-			break;
-		}
+		if (avail[imp] <= 0)
+			continue;
+		avail[imp]--;
+		__skb_unlink(skb, wakeupq);
+		__skb_queue_tail(&tmpq, skb);
 	}
+
+	spin_lock_bh(&inputq->lock);
+	skb_queue_splice_tail(&tmpq, inputq);
+	spin_unlock_bh(&inputq->lock);
+
 }
 
 void tipc_link_reset(struct tipc_link *l)
-- 
2.1.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
