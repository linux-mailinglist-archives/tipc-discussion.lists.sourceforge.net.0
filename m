Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A50A66A2E5
	for <lists+tipc-discussion@lfdr.de>; Tue, 16 Jul 2019 09:27:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hnHrR-0007dh-Hq; Tue, 16 Jul 2019 07:26:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1hnHrQ-0007dT-8M
 for tipc-discussion@lists.sourceforge.net; Tue, 16 Jul 2019 07:26:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=blFHQR+zEayRpS8n/JdO9BElwQqc2DovVKobVRcx1wg=; b=ZqyQEF++9qk91yUQr5HMEHnnK2
 MZZqeF1OHdwtCGdwzdW2lcQ+tCWyJg1nxael2PVJIHXDbyi8eT4Mm50K2Cu38J5HzqZwCKE7dTQAY
 nzBLAjZ345tHWMhoP2opl4rq7CVRPjszEfWQrgWp0fIe98cCU7bA+ZD6ggu2Dnoq7Ok4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=blFHQR+zEayRpS8n/JdO9BElwQqc2DovVKobVRcx1wg=; b=HD6p3LYqLMhMf5g2j+N+zFThNk
 Wrds6qjxPsmoc0p5BECeUzAj0i2n1HExRHuhNd55brBjGBqHV0/hVN+1xvDx7cC1cVzT58yTPgsWV
 esGr6ruaXnUK13jFJfjYrxAZ/JVYCEeUdcWlL8yuNJhz4swNRo/RXzJYUwSqClSru/gU=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hnHrM-002nM2-51
 for tipc-discussion@lists.sourceforge.net; Tue, 16 Jul 2019 07:26:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id CB90A461E2;
 Tue, 16 Jul 2019 17:26:39 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1563261999; bh=rTre3
 59LbNVXxnOjDROBl/M/gTa5M5fyW9eXQm+mzVs=; b=dLqBHYr19RjMWB2qz+8SR
 N7l/FaC//jsVD05X89kXshmsknf1uwVZ6sohr7dVDbGbq4LyNyjizNpTr6gQs0cR
 AFqvdN5EzMHM693L6Dm+JslQ2wdsq7T0cykhqYy1PpueI7Z5AO3v3rdPl+ONag1i
 F/64V4TZFPnpQE2LnrH+dw=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 9QbhXj9dG696; Tue, 16 Jul 2019 17:26:39 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 7FC97461EB;
 Tue, 16 Jul 2019 17:26:39 +1000 (AEST)
Received: from build.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 16454461E2;
 Tue, 16 Jul 2019 17:26:37 +1000 (AEST)
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jon.maloy@ericsson.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Tue, 16 Jul 2019 14:26:29 +0700
Message-Id: <20190716072629.3531-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
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
X-Headers-End: 1hnHrM-002nM2-51
Subject: [tipc-discussion] [net-next] tipc: fix retransmission failure when
 link re-established
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

Currently a link is declared stale and reset if stale limit time is longer
than link tolerance time. But, this stale limit does not initial correctly
when the link is resetting. This lead to a link declared as failure
because reset criteria always passed though no packet re-transmitted when
link is re-establishing.

To fix this, we set stale limit time far into the future in two places:
reset a link and acked from peer.

Fixes: 77cf8edbc0e7 ("tipc: simplify stale link failure criteria")
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/link.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 66d3a07bc571..2ba79d451f08 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -909,6 +909,7 @@ void tipc_link_reset(struct tipc_link *l)
 	l->silent_intv_cnt = 0;
 	l->rst_cnt = 0;
 	l->bc_peer_is_up = false;
+	l->stale_limit = msecs_to_jiffies(~0);
 	memset(&l->mon_state, 0, sizeof(l->mon_state));
 	tipc_link_reset_stats(l);
 }
@@ -1510,6 +1511,7 @@ int tipc_link_rcv(struct tipc_link *l, struct sk_buff *skb,
 
 		/* Forward queues and wake up waiting users */
 		if (likely(tipc_link_release_pkts(l, msg_ack(hdr)))) {
+			l->stale_limit = msecs_to_jiffies(~0);
 			tipc_link_advance_backlog(l, xmitq);
 			if (unlikely(!skb_queue_empty(&l->wakeupq)))
 				link_prepare_wakeup(l);
-- 
2.17.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
