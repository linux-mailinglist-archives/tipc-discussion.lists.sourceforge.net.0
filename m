Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 368695538A
	for <lists+tipc-discussion@lfdr.de>; Tue, 25 Jun 2019 17:37:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hfnV7-0002nc-Qf; Tue, 25 Jun 2019 15:36:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hfnV5-0002nR-Ij
 for tipc-discussion@lists.sourceforge.net; Tue, 25 Jun 2019 15:36:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=58bOMnhE/wDvdWpdEUYrVf5VUvpFoYPxq/5U05f3Y7k=; b=KuvPmUjcTUw9bTJFs86s6grfrs
 3OqjIZSeK9IxNMhlKlGJyj+rFuNC8gLsJMvOtz3J4S26ynLrWYLxS8RGgMszfYSeTS0bK6XxHNb8U
 qsDukujjWn4GvobtANXJTRLi77TqFdwVvIqZZcXCFn9e6G5iEGG26Rrdx3WMAEycUx6Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=58bOMnhE/wDvdWpdEUYrVf5VUvpFoYPxq/5U05f3Y7k=; b=c
 sfLRwgYRbcFTSD0EHzdl8B4d/AX3LYTdXZWscC9k0tA+iceb0HilT9Z+qhk25FySqdC0gVgI1XLTR
 SaWiJq0rfwJ6vtJBCrIdc1TtK0CSYYo5HeyjxUUi75KVII1YH1Kpy2x9LJf/OglETt260FXIGCCI3
 cwlLDCr8mL/X+WdA=;
Received: from sessmg22.ericsson.net ([193.180.251.58])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hfnV6-00Dfwf-Ax
 for tipc-discussion@lists.sourceforge.net; Tue, 25 Jun 2019 15:36:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ericsson.com; s=mailgw201801;
 c=relaxed/relaxed; 
 q=dns/txt; i=@ericsson.com; t=1561477004; x=1564069004;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=58bOMnhE/wDvdWpdEUYrVf5VUvpFoYPxq/5U05f3Y7k=;
 b=YWtsqRu5DvsMBfVb7mnRxaKKHejvIB+4SwIHuURfrhLBkGyti9Jlc9zyoDgHwP2w
 ZE37n9XUrgPojbXCWWHqFHEZIbgvKjBG6ae2tID+wunasKhiJCCZ1Hs3P3Z6mu9c
 rK4qAC1T+B+u3zxEqu9ndJ3MgUHQGUXNIoXaziTAI9w=;
X-AuditID: c1b4fb3a-709ff7000000189f-12-5d123f8c5d6d
Received: from ESESBMB504.ericsson.se (Unknown_Domain [153.88.183.117])
 by sessmg22.ericsson.net (Symantec Mail Security) with SMTP id
 E3.C7.06303.C8F321D5; Tue, 25 Jun 2019 17:36:44 +0200 (CEST)
Received: from ESESSMR506.ericsson.se (153.88.183.128) by
 ESESBMB504.ericsson.se (153.88.183.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Tue, 25 Jun 2019 17:36:43 +0200
Received: from ESESBMB504.ericsson.se (153.88.183.171) by
 ESESSMR506.ericsson.se (153.88.183.128) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Tue, 25 Jun 2019 17:36:43 +0200
Received: from tipsy.lab.linux.ericsson.se (153.88.183.153) by
 smtp.internal.ericsson.com (153.88.183.187) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 25 Jun 2019 17:36:43 +0200
From: Jon Maloy <jon.maloy@ericsson.com>
To: <davem@davemloft.net>, <netdev@vger.kernel.org>
Date: Tue, 25 Jun 2019 17:36:43 +0200
Message-ID: <1561477003-25362-1-git-send-email-jon.maloy@ericsson.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGLMWRmVeSWpSXmKPExsUyM2J7qW6PvVCsQecWfosbDT3MFnPOt7BY
 rNg9idXi7atZ7BbHFohZbDmfZXGl/Sy7xePr15kdODy2rLzJ5PHuCpvH7gWfmTw+b5LzWL9l
 K1MAaxSXTUpqTmZZapG+XQJXxrGzp5gKjkpUTDzSztzA+Fy4i5GTQ0LAROLWvK+sXYxcHEIC
 Rxkl3t7/ygLhfGOU6NvRywZSBeZ8/JoLkbjAKHFr6zEmkASbgIbEy2kdjCC2iICxxKuVnUwg
 RcwCjxklvtxfBdTNziEs4CyxnRmkhEVAVeLi5+Ng5bwCbhIN154zQVwhJ3H++E9miF3KEnM/
 TGOCqBGUODnzCQuIzSwgIXHwxQvmCYz8s5CkZiFJLWBkWsUoWpxaXJybbmSkl1qUmVxcnJ+n
 l5dasokRGLoHt/y22sF48LnjIUYBDkYlHt42W6FYIdbEsuLK3EOMEhzMSiK8SxMFYoV4UxIr
 q1KL8uOLSnNSiw8xSnOwKInzrvf+FyMkkJ5YkpqdmlqQWgSTZeLglGpgTHl7+c7PeZpu144s
 y/6SYNf6csW+Q669i0++2fj4yYmiNSvmhf8NZjCIC7IQMGdkM2afFV/5ui7q67OCGy6fNRMK
 5n6quJW7cs/W4FlxZV835HopreNeOdPKpKdG8+SeGj8Le501vzxm/zDzKzMTa0rwO6D713Zu
 +aNG1tnn6+fHRGir/ePuVGIpzkg01GIuKk4EAGvDUDxZAgAA
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
X-Headers-End: 1hfnV6-00Dfwf-Ax
Subject: [tipc-discussion] [net-next 1/1] tipc: simplify stale link failure
 criteria
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

In commit a4dc70d46cf1 ("tipc: extend link reset criteria for stale
packet retransmission") we made link retransmission failure events
dependent on the link tolerance, and not only of the number of failed
retransmission attempts, as we did earlier. This works well. However,
keeping the original, additional criteria of 99 failed retransmissions
is now redundant, and may in some cases lead to failure detection
times in the order of minutes instead of the expected 1.5 sec link
tolerance value.

We now remove this criteria altogether.

Acked-by: Ying Xue <ying.xue@windriver.com>
Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
---
 net/tipc/link.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index bcfb0a4..af50b53 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -107,7 +107,6 @@ struct tipc_stats {
  * @backlogq: queue for messages waiting to be sent
  * @snt_nxt: next sequence number to use for outbound messages
  * @prev_from: sequence number of most previous retransmission request
- * @stale_cnt: counter for number of identical retransmit attempts
  * @stale_limit: time when repeated identical retransmits must force link reset
  * @ackers: # of peers that needs to ack each packet before it can be released
  * @acked: # last packet acked by a certain peer. Used for broadcast.
@@ -167,7 +166,6 @@ struct tipc_link {
 	u16 snd_nxt;
 	u16 prev_from;
 	u16 window;
-	u16 stale_cnt;
 	unsigned long stale_limit;
 
 	/* Reception */
@@ -910,7 +908,6 @@ void tipc_link_reset(struct tipc_link *l)
 	l->acked = 0;
 	l->silent_intv_cnt = 0;
 	l->rst_cnt = 0;
-	l->stale_cnt = 0;
 	l->bc_peer_is_up = false;
 	memset(&l->mon_state, 0, sizeof(l->mon_state));
 	tipc_link_reset_stats(l);
@@ -1068,8 +1065,7 @@ static bool link_retransmit_failure(struct tipc_link *l, struct tipc_link *r,
 	if (r->prev_from != from) {
 		r->prev_from = from;
 		r->stale_limit = jiffies + msecs_to_jiffies(r->tolerance);
-		r->stale_cnt = 0;
-	} else if (++r->stale_cnt > 99 && time_after(jiffies, r->stale_limit)) {
+	} else if (time_after(jiffies, r->stale_limit)) {
 		pr_warn("Retransmission failure on link <%s>\n", l->name);
 		link_print(l, "State of link ");
 		pr_info("Failed msg: usr %u, typ %u, len %u, err %u\n",
@@ -1515,7 +1511,6 @@ int tipc_link_rcv(struct tipc_link *l, struct sk_buff *skb,
 
 		/* Forward queues and wake up waiting users */
 		if (likely(tipc_link_release_pkts(l, msg_ack(hdr)))) {
-			l->stale_cnt = 0;
 			tipc_link_advance_backlog(l, xmitq);
 			if (unlikely(!skb_queue_empty(&l->wakeupq)))
 				link_prepare_wakeup(l);
@@ -2584,7 +2579,7 @@ int tipc_link_dump(struct tipc_link *l, u16 dqueues, char *buf)
 	i += scnprintf(buf + i, sz - i, " %u", l->silent_intv_cnt);
 	i += scnprintf(buf + i, sz - i, " %u", l->rst_cnt);
 	i += scnprintf(buf + i, sz - i, " %u", l->prev_from);
-	i += scnprintf(buf + i, sz - i, " %u", l->stale_cnt);
+	i += scnprintf(buf + i, sz - i, " %u", 0);
 	i += scnprintf(buf + i, sz - i, " %u", l->acked);
 
 	list = &l->transmq;
-- 
2.1.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
