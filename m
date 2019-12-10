Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CBB118221
	for <lists+tipc-discussion@lfdr.de>; Tue, 10 Dec 2019 09:21:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iealt-00047F-92; Tue, 10 Dec 2019 08:21:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iealq-00046F-Dj
 for tipc-discussion@lists.sourceforge.net; Tue, 10 Dec 2019 08:21:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Wnn3z49/w6/Uc979We5/rvTLVMFa7a9b7TP56Tm5WJI=; b=cpVXgwWvjLHILLKxCq+ck6Qz+6
 emwmY3w73iU9/k8xI0T+7a4p+QNcrEPxAWXh2w/aX545ysvtRzNMMkixfip5LMLUik0COBxUwJ51+
 EvORoO8uBCD22AcmoiOQZSEzZhAhFUXyvIcZyzijPVMA9esbPYcEa4hoZVzeNEVtXEPY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Wnn3z49/w6/Uc979We5/rvTLVMFa7a9b7TP56Tm5WJI=; b=gEVkKnymJhaD6pbSbm/UObnzHf
 qytzKCW8i/ZqiekLXIFR5FddIgxymW+Nf4f8BgSwNTFnNgH5XlpGiD4QeAktHAj/wytw9nIo2sKCs
 7uv/A9twmAM0co+ndKLuAzZewJ1VPcQr3ItZ7ZhargvX7aN/37VArE8XxTyX0vl8yYjQ=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iealm-00GSni-Kp
 for tipc-discussion@lists.sourceforge.net; Tue, 10 Dec 2019 08:21:26 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id EE61D4BD36;
 Tue, 10 Dec 2019 19:21:15 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mail_dkim; t=
 1575966075; bh=64kUCMMHwQBsV+tjxek2PsXKpfI4g44QRYdDDM2q43U=; b=n
 HQIRHA6pLcLfEMKd1TN01UsQa8dD+BJhv8hFeUWZo01DyGDpw0lAFD9rL0S4Crc5
 zkudWvMsYqc2oA1lYKXyuQazPZ/VMMgiTZAo8VXtb28txSkOqNXNAsIY2Bo8oejJ
 1V8OTDBCTWFQ56batArA4Bb4u05ecEzEHAObwcY1z4=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 7c2fu4iiZxBn; Tue, 10 Dec 2019 19:21:15 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id BDE854BD38;
 Tue, 10 Dec 2019 19:21:15 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id A765F4BD36;
 Tue, 10 Dec 2019 19:21:14 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jon.maloy@ericsson.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Tue, 10 Dec 2019 15:21:03 +0700
Message-Id: <20191210082105.23905-3-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20191210082105.23905-1-tuong.t.lien@dektech.com.au>
References: <20191210082105.23905-1-tuong.t.lien@dektech.com.au>
X-Spam-Score: -0.2 (/)
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
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iealm-00GSni-Kp
Subject: [tipc-discussion] [net 2/4] tipc: fix potential hanging after
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
Cc: tipc-discussion@lists.sourceforge.net
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
Acked-by: Jon Maloy <jon.maloy@ericsson.com>
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
