Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC008E1400
	for <lists+tipc-discussion@lfdr.de>; Wed, 23 Oct 2019 10:22:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iNBu4-0006Ip-00; Wed, 23 Oct 2019 08:22:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iNBu2-0006Ia-46
 for tipc-discussion@lists.sourceforge.net; Wed, 23 Oct 2019 08:21:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KpRGWpQieHm6V5QDJS1MlbEXp2v2pWYIFwRGRiHsv9c=; b=AgRHAKTkbMiFAtcYCvMVkgtErc
 VhJ60opngze9O8T6QzZpWXucgMchUZo7CLqeP3QyHXGLwbIn81ZckeLDis3Jfm540JMcBZY41GJcV
 a1C9XuQzWxokv+UW+khUeKi8XIzb1uYDDG96an0X0k1GmY9E6H3f/B3IEO2vWkfK2JvY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KpRGWpQieHm6V5QDJS1MlbEXp2v2pWYIFwRGRiHsv9c=; b=lEaKvuGN7q50RawrvsX/u3774v
 j2j94/dPcfB2WXv35j9BU9Re0XNGMf1YnybG/pBpi3txGPGfByJvi4TntsITVxxQoC7prGGcVfPFS
 sWom8AVpdbYIYRy6Dz7Qe5JjDmLZ2/0nKb8W+KxMdhOLqdHLYUeB68VSriXtPaatyY8Q=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iNBty-00070l-LP
 for tipc-discussion@lists.sourceforge.net; Wed, 23 Oct 2019 08:21:58 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id C2C5E48E41;
 Wed, 23 Oct 2019 19:21:46 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1571818906; bh=nsPVx
 +Gy/eCt7BO6nj9LsG0kBPo04HarGc4MmuqLquQ=; b=SHioNCoTlovxEMv1O2S7M
 HKFz0h+GTOtn8iK3bw3AoTMP2K4ikLtwJwSOt1jjQL8X6O/KpwztnMQuH0KhKzVl
 mKyQ1kj5QgVr8iCT4qSFpfdSHeCgu5DuCqNMfv4WMHZ70PZmf5CviuR8MRQiSNyp
 L0viVrUrbTXTcCxmuhHa9I=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id AM2745s5FxpL; Wed, 23 Oct 2019 19:21:46 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 56A53496A6;
 Wed, 23 Oct 2019 19:21:46 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 4937F48E41;
 Wed, 23 Oct 2019 19:21:45 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Wed, 23 Oct 2019 15:21:38 +0700
Message-Id: <20191023082138.14469-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iNBty-00070l-LP
Subject: [tipc-discussion] [net-next] tipc: eliminate the dummy packet in
 link synching
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

When preparing tunnel packets for the link failover or synchronization,
as for the safe algorithm, we added a dummy packet on the pair link but
never sent it out. In the case of failover, the pair link will be reset
anyway. But for link synching, it will always result in retransmission
of the dummy packet after that.
We have also observed that such the retransmission at the early stage
when a new node comes in a large cluster will take some time and hard
to be done, leading to the repeated retransmit failures and the link is
reset.

Since in commit 4929a932be33 ("tipc: optimize link synching mechanism")
we have already built a dummy 'TUNNEL_PROTOCOL' message on the new link
for the synchronization, there's no need for the dummy on the pair one,
this commit will skip it when the new mechanism takes in place. In case
nothing exists in the pair link's transmq, the link synching will just
start and stop shortly on the peer side.

The patch is backward compatible.

Acked-by: Jon Maloy <jon.maloy@ericsson.com>
Tested-by: Hoang Le <hoang.h.le@dektech.com.au>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/link.c | 29 ++++++++++++++---------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 999eab592de8..7e36b7ba61a9 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1728,21 +1728,6 @@ void tipc_link_tnl_prepare(struct tipc_link *l, struct tipc_link *tnl,
 		return;
 
 	__skb_queue_head_init(&tnlq);
-	__skb_queue_head_init(&tmpxq);
-	__skb_queue_head_init(&frags);
-
-	/* At least one packet required for safe algorithm => add dummy */
-	skb = tipc_msg_create(TIPC_LOW_IMPORTANCE, TIPC_DIRECT_MSG,
-			      BASIC_H_SIZE, 0, l->addr, tipc_own_addr(l->net),
-			      0, 0, TIPC_ERR_NO_PORT);
-	if (!skb) {
-		pr_warn("%sunable to create tunnel packet\n", link_co_err);
-		return;
-	}
-	__skb_queue_tail(&tnlq, skb);
-	tipc_link_xmit(l, &tnlq, &tmpxq);
-	__skb_queue_purge(&tmpxq);
-
 	/* Link Synching:
 	 * From now on, send only one single ("dummy") SYNCH message
 	 * to peer. The SYNCH message does not contain any data, just
@@ -1768,6 +1753,20 @@ void tipc_link_tnl_prepare(struct tipc_link *l, struct tipc_link *tnl,
 		return;
 	}
 
+	__skb_queue_head_init(&tmpxq);
+	__skb_queue_head_init(&frags);
+	/* At least one packet required for safe algorithm => add dummy */
+	skb = tipc_msg_create(TIPC_LOW_IMPORTANCE, TIPC_DIRECT_MSG,
+			      BASIC_H_SIZE, 0, l->addr, tipc_own_addr(l->net),
+			      0, 0, TIPC_ERR_NO_PORT);
+	if (!skb) {
+		pr_warn("%sunable to create tunnel packet\n", link_co_err);
+		return;
+	}
+	__skb_queue_tail(&tnlq, skb);
+	tipc_link_xmit(l, &tnlq, &tmpxq);
+	__skb_queue_purge(&tmpxq);
+
 	/* Initialize reusable tunnel packet header */
 	tipc_msg_init(tipc_own_addr(l->net), &tnlhdr, TUNNEL_PROTOCOL,
 		      mtyp, INT_H_SIZE, l->addr);
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
