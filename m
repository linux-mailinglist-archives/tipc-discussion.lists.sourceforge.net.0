Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8D9F14AD
	for <lists+tipc-discussion@lfdr.de>; Wed,  6 Nov 2019 12:12:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iSJEu-0007y7-LG; Wed, 06 Nov 2019 11:12:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iSJEt-0007xj-Am
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 11:12:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KpRGWpQieHm6V5QDJS1MlbEXp2v2pWYIFwRGRiHsv9c=; b=k84WJBz+1URvkK2VS3arOr5Qa+
 aYunT8AvbJ9uSqlIk7/jG5v7StvCACZ1Q5K7aykC7FhbMat6phu5yil5D/uwi9rlX+GfYJoPuzT3i
 J0HS9FT4a62ZsJhBFgCRJX504sP7nHE2aX5Cb+1XQ5xG/3mePu6keDZ+2DptKqi4OHR4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KpRGWpQieHm6V5QDJS1MlbEXp2v2pWYIFwRGRiHsv9c=; b=NNOnxDI1f9GNuhKlkvHAAI8Z4x
 S6ILXkS4uI+yBSuEyX5Ny2rboVlFo9cCOoBA82lYvB4cZf/hpPhWpm8Bkz4k+ua2E0vzx3P1CHUES
 bgHASDQTeZ2RUWt4ag3mFwxfGWWSAyHRoOsMI4GHrPERZAhSfu/vuXSB4bW84cIv5H7o=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iSJEo-0029R8-Lo
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 11:12:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 8615A49141;
 Wed,  6 Nov 2019 22:12:25 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1573038745; bh=nsPVx
 +Gy/eCt7BO6nj9LsG0kBPo04HarGc4MmuqLquQ=; b=ey7EWWcLurejZxa97zGjY
 /YZh7D546VpAUheXMl/e+FsK43blno8xLnsQCztY5/ryqCZ2fwzgrNcjAigStvjB
 cdRQpxa5wIk3D/z5PGZ14LniF5jXj1yM5O46tsgr8WukB0RK/hl2eHoUDRD9faga
 c7XSYMVZsIvrQcgzQHezZ4=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id A7rQPwA9KJry; Wed,  6 Nov 2019 22:12:25 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 2DBCA4945B;
 Wed,  6 Nov 2019 22:12:24 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id BFE4F49141;
 Wed,  6 Nov 2019 22:12:23 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jon.maloy@ericsson.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Wed,  6 Nov 2019 18:12:17 +0700
Message-Id: <20191106111217.23178-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iSJEo-0029R8-Lo
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
Cc: tipc-discussion@lists.sourceforge.net
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
