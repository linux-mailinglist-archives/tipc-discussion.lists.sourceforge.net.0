Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F30E4798E
	for <lists+tipc-discussion@lfdr.de>; Mon, 17 Jun 2019 06:56:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hcjh6-0002jl-IZ; Mon, 17 Jun 2019 04:56:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1hcjh4-0002jL-5X
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Jun 2019 04:56:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CC7JWTIOpYzqSw967opZfCCKc4pPNqnMGc1a7mWZuEc=; b=LEQ3nSCbj2YnjqYKU4GJPcXYW4
 QYl4Mp8eIPe2Rqp6Ixg5SaSpkwcHTENiriCLAsTNRIs4SunUGD3nwyJ0Nsh8gNOHuqsXhFdiNC+y7
 OYtEULV6nXyUZ2BCYFW/DdFAn1MdYey0SO7L9mgE7p2dhpIpktX0y3DUApu+C9iyeRqU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CC7JWTIOpYzqSw967opZfCCKc4pPNqnMGc1a7mWZuEc=; b=a23B+/IEgqkr4SeGLcacivI26E
 mmI2ZTdcgzHguwOWFPipgC1nxoK8YTdJdBDzgRO6KY6rQdRQnwonFQeCdR3Hqj3lEIz5kRTeJ5VGm
 iy8zEnrtjRGu08z5bMO2lFCz54rQ/xZ55wPnXC5EUx0N6uaOuieXnnyt54Jt2FEGDwk4=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hcjgy-000GoG-Va
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Jun 2019 04:56:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id E2E5EE4E5E;
 Mon, 17 Jun 2019 14:56:21 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1560747381; bh=VAgPq
 XUK+w4bRPwkOn9ZSufdF5DppLVtnKmJpiSMH6s=; b=OUt03EJAAFD4XU/bTfgHT
 IRjR6KSZagsc2cjcveHy8lMi+4IgquARYrUcsOGLYOGyUztqlCMEvG627zcbQ2MI
 C7U54hIvZZLxVYFvKeLoAiC7Aw7s1SCSUAJLjXohuX/4Xkwn++PekkzgueM/Yh0G
 07EJXfiW8xdSdPwZApJAaU=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id FUXOhCK52xqO; Mon, 17 Jun 2019 14:56:21 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 2936FE4F70;
 Mon, 17 Jun 2019 14:56:20 +1000 (AEST)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 4E20DE4E5E;
 Mon, 17 Jun 2019 14:56:19 +1000 (AEST)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jon.maloy@ericsson.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Mon, 17 Jun 2019 11:56:12 +0700
Message-Id: <20190617045612.3509-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hcjgy-000GoG-Va
Subject: [tipc-discussion] [net] tipc: fix issues with early FAILOVER_MSG
 from peer
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

It appears that a FAILOVER_MSG can come from peer even when the failure
link is resetting (i.e. just after the 'node_write_unlock()'...). This
means the failover procedure on the node has not been started yet.
The situation is as follows:

         node1                                node2
  linkb          linka                  linka        linkb
    |              |                      |            |
    |              |                      x failure    |
    |              |                  RESETTING        |
    |              |                      |            |
    |              x failure            RESET          |
    |          RESETTING             FAILINGOVER       |
    |              |   (FAILOVER_MSG)     |            |
    |<-------------------------------------------------|
    | *FAILINGOVER |                      |            |
    |              | (dummy FAILOVER_MSG) |            |
    |------------------------------------------------->|
    |            RESET                    |            | FAILOVER_END
    |         FAILINGOVER               RESET          |
    .              .                      .            .
    .              .                      .            .
    .              .                      .            .

Once this happens, the link failover procedure will be triggered
wrongly on the receiving node since the node isn't in FAILINGOVER state
but then another link failover will be carried out.
The consequences are:

1) A peer might get stuck in FAILINGOVER state because the 'sync_point'
was set, reset and set incorrectly, the criteria to end the failover
would not be met, it could keep waiting for a message that has already
received.

2) The early FAILOVER_MSG(s) could be queued in the link failover
deferdq but would be purged or not pulled out because the 'drop_point'
was not set correctly.

3) The early FAILOVER_MSG(s) could be dropped too.

4) The dummy FAILOVER_MSG could make the peer leaving FAILINGOVER state
shortly, but later on it would be restarted.

The same situation can also happen when the link is in PEER_RESET state
and a FAILOVER_MSG arrives.

The commit resolves the issues by forcing the link down immediately, so
the failover procedure will be started normally (which is the same as
when receiving a FAILOVER_MSG and the link is in up state).

Also, the function "tipc_node_link_failover()" is toughen to avoid such
a situation from happening.

Acked-by: Jon Maloy <jon.maloy@ericsson.se>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/link.c |  1 -
 net/tipc/node.c | 10 +++++++---
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index d5ed509e0660..bcfb0a4ab485 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1762,7 +1762,6 @@ void tipc_link_failover_prepare(struct tipc_link *l, struct tipc_link *tnl,
 	 * node has entered SELF_DOWN_PEER_LEAVING and both peer nodes
 	 * would have to start over from scratch instead.
 	 */
-	WARN_ON(l && tipc_link_is_up(l));
 	tnl->drop_point = 1;
 	tnl->failover_reasm_skb = NULL;
 
diff --git a/net/tipc/node.c b/net/tipc/node.c
index e4dba865105e..65644642c091 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -777,9 +777,9 @@ static void tipc_node_link_up(struct tipc_node *n, int bearer_id,
  *	   disturbance, wrong session, etc.)
  *	3. Link <1B-2B> up
  *	4. Link endpoint 2A down (e.g. due to link tolerance timeout)
- *	5. Node B starts failover onto link <1B-2B>
+ *	5. Node 2 starts failover onto link <1B-2B>
  *
- *	==> Node A does never start link/node failover!
+ *	==> Node 1 does never start link/node failover!
  *
  * @n: tipc node structure
  * @l: link peer endpoint failingover (- can be NULL)
@@ -794,6 +794,10 @@ static void tipc_node_link_failover(struct tipc_node *n, struct tipc_link *l,
 	if (!tipc_link_is_up(tnl))
 		return;
 
+	/* Don't rush, failure link may be in the process of resetting */
+	if (l && !tipc_link_is_reset(l))
+		return;
+
 	tipc_link_fsm_evt(tnl, LINK_SYNCH_END_EVT);
 	tipc_node_fsm_evt(n, NODE_SYNCH_END_EVT);
 
@@ -1719,7 +1723,7 @@ static bool tipc_node_check_state(struct tipc_node *n, struct sk_buff *skb,
 	/* Initiate or update failover mode if applicable */
 	if ((usr == TUNNEL_PROTOCOL) && (mtyp == FAILOVER_MSG)) {
 		syncpt = oseqno + exp_pkts - 1;
-		if (pl && tipc_link_is_up(pl)) {
+		if (pl && !tipc_link_is_reset(pl)) {
 			__tipc_node_link_down(n, &pb_id, xmitq, &maddr);
 			trace_tipc_node_link_down(n, true,
 						  "node link down <- failover!");
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
