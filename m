Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2BC6109835
	for <lists+tipc-discussion@lfdr.de>; Tue, 26 Nov 2019 05:07:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iZS8C-00023y-3z; Tue, 26 Nov 2019 04:07:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iZS8A-00023k-Kl
 for tipc-discussion@lists.sourceforge.net; Tue, 26 Nov 2019 04:07:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PM4aflxN/sfCaSRKc2YgUyuGcG8T6NJ0QooOKQ7dDOY=; b=ShUj32RYjguzGYTmhR2mZlOXtd
 +ueAeG96OAbOn3ObXEAucpeygAdQVwTtiBhIl8CtZOvFFLuhsGyYSW/JU6XS6Wtq7N7d+T7lamaJs
 moSPWnribGPlQgegBk2+z65hq4pL8KEDvlJyoUodFIykgU1g+Yg/MzGL9Oiab3O19Cu4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PM4aflxN/sfCaSRKc2YgUyuGcG8T6NJ0QooOKQ7dDOY=; b=hjOlSC/J42hf6WL+avV6/nqpYC
 VbTZJVj3Wm6FJ1lXzsPLIqPSsJ1G5tlBrkltmTTO01RwXpwH7o/RsXtO8ue50V4bfLbldprCp70O9
 6ptQE1nJBMGVUGwK5uq6M2J2w5sEJ6ZvaCs6c+CE1gjJMryYCh9foRV6iwxmnuV7Kv6U=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iZS86-00Deue-C8
 for tipc-discussion@lists.sourceforge.net; Tue, 26 Nov 2019 04:07:14 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id CD8CF4A2CF;
 Tue, 26 Nov 2019 15:07:02 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1574741222; bh=9Fo/P
 /E/PIr81fuAODvoha4GC51xype0xKGiHI+5+FE=; b=Xd3DYUFVn1scr873NVhwI
 rQ73BEIwvSyOBoKsgjOwuLWGnDoF1G6frD0hBdd8FletBKYK1MXcV3Aekj2k3mLg
 c5zhx3Og3c+LN98jMxyU3sWflM/7roeYNUSAgm6Wk9O1+V3bAL8GUSBtjsxC/spI
 osL8BIxkbjuRyEDKK8QsYQ=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id OFlj3mOjb0s9; Tue, 26 Nov 2019 15:07:02 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 70F974A569;
 Tue, 26 Nov 2019 15:07:02 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 5A9BC4A2CF;
 Tue, 26 Nov 2019 15:07:01 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Tue, 26 Nov 2019 11:06:54 +0700
Message-Id: <20191126040654.4028-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iZS86-00Deue-C8
Subject: [tipc-discussion] [PATCH RFC] tipc: fix potential hanging after
 b/rcast changing
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

In commit c55c8edafa91 ("tipc: smooth change between replicast and
broadcast"), we allow instant switching between replicast and broadcast
by sending a dummy 'SYN' packet on the last used link to synchronize
packets on the links. The 'SYN' message is an object of link congestion
also, so if that happens, a 'SOCK_WAKEUP' will be scheduled to be sent
back to the socket...
However, in that commit, we simply use the same socket 'cong_link_cnt'
counter for both the 'SYN' & normal payload message sending. Therefore,
if both the replicast & broadcast links are congested, the counter will
be not updated correctly but overwritten by the latter congestion.
Later on, when the 'SOCK_WAKEUP' messages are processed, the counter is
reduced one by one and eventually overflowed. Consequently, further
activities on the socket will only wait for the false congestion signal
to disappear but never been met.

Because sending the 'SYN' message is vital for the mechanism, it should
be done anyway. This commit fixes the issue by marking the message with
an error code e.g. 'TIPC_ERR_NO_PORT', so its sending should not face a
link congestion, there is no need to touch the socket 'cong_link_cnt'
either. In addition, in the event of any error (e.g. -ENOBUFS), we will
purge the entire payload message queue and make a return immediately.

Fixes: c55c8edafa91 ("tipc: smooth change between replicast and broadcast")
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/bcast.c | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
index 55aeba681cf4..656ebc79c64e 100644
--- a/net/tipc/bcast.c
+++ b/net/tipc/bcast.c
@@ -305,17 +305,17 @@ static int tipc_rcast_xmit(struct net *net, struct sk_buff_head *pkts,
  * @skb: socket buffer to copy
  * @method: send method to be used
  * @dests: destination nodes for message.
- * @cong_link_cnt: returns number of encountered congested destination links
  * Returns 0 if success, otherwise errno
  */
 static int tipc_mcast_send_sync(struct net *net, struct sk_buff *skb,
 				struct tipc_mc_method *method,
-				struct tipc_nlist *dests,
-				u16 *cong_link_cnt)
+				struct tipc_nlist *dests)
 {
 	struct tipc_msg *hdr, *_hdr;
 	struct sk_buff_head tmpq;
 	struct sk_buff *_skb;
+	u16 cong_link_cnt;
+	int rc = 0;
 
 	/* Is a cluster supporting with new capabilities ? */
 	if (!(tipc_net(net)->capabilities & TIPC_MCAST_RBCTL))
@@ -343,18 +343,19 @@ static int tipc_mcast_send_sync(struct net *net, struct sk_buff *skb,
 	_hdr = buf_msg(_skb);
 	msg_set_size(_hdr, MCAST_H_SIZE);
 	msg_set_is_rcast(_hdr, !msg_is_rcast(hdr));
+	msg_set_errcode(_hdr, TIPC_ERR_NO_PORT);
 
 	__skb_queue_head_init(&tmpq);
 	__skb_queue_tail(&tmpq, _skb);
 	if (method->rcast)
-		tipc_bcast_xmit(net, &tmpq, cong_link_cnt);
+		rc = tipc_bcast_xmit(net, &tmpq, &cong_link_cnt);
 	else
-		tipc_rcast_xmit(net, &tmpq, dests, cong_link_cnt);
+		rc = tipc_rcast_xmit(net, &tmpq, dests, &cong_link_cnt);
 
 	/* This queue should normally be empty by now */
 	__skb_queue_purge(&tmpq);
 
-	return 0;
+	return rc;
 }
 
 /* tipc_mcast_xmit - deliver message to indicated destination nodes
@@ -396,9 +397,14 @@ int tipc_mcast_xmit(struct net *net, struct sk_buff_head *pkts,
 		msg_set_is_rcast(hdr, method->rcast);
 
 		/* Switch method ? */
-		if (rcast != method->rcast)
-			tipc_mcast_send_sync(net, skb, method,
-					     dests, cong_link_cnt);
+		if (rcast != method->rcast) {
+			rc = tipc_mcast_send_sync(net, skb, method, dests);
+			if (unlikely(rc)) {
+				pr_err("Unable to send SYN: method %d, rc %d\n",
+				       rcast, rc);
+				goto exit;
+			}
+		}
 
 		if (method->rcast)
 			rc = tipc_rcast_xmit(net, pkts, dests, cong_link_cnt);
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
