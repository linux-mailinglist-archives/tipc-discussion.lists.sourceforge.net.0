Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 44ADEF0E0C
	for <lists+tipc-discussion@lfdr.de>; Wed,  6 Nov 2019 06:03:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iSDTT-0005lb-9U; Wed, 06 Nov 2019 05:03:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1iSDTR-0005lU-OF
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 05:03:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4nwCJd/f7sxF0HYns+2KzSbh1IgxPH7oJVcnwYSqNRQ=; b=fgwvsVnK2GnpkDwPAwiYp0p/k7
 70hGu03wDGvNE5moomQ7PHVziWfFUffFaF97uxzAJG8lQljGFORxvzVu04qc8eaxqWLDqon5YGcBt
 EkSQLoluwqE+7X0Y1qtxdNQNYCe9BhmphbPEjd2/BubB1g4EFp2h+7H/ZA3VFMh5Oxec=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4nwCJd/f7sxF0HYns+2KzSbh1IgxPH7oJVcnwYSqNRQ=; b=S
 6mQSn8F1/hD4Ge8mc5uCl6QxF/9k5Bypug9EGQ6SvVHtj/Em2zPslXmbFeIXj1VkG6FFhJCAL6coY
 xJAsLNHgrZSGlTdXC244OaMNcWZhm4Bp8JXSQmlSpTSDFrG6yKX1OO1sfoor6ZxgRnpc3JPRYdMQR
 cGhJYcZa3vxN7scc=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iSDTO-001i8D-Lk
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 05:03:17 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id C31224AABC;
 Wed,  6 Nov 2019 16:03:05 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:mime-version:x-mailer:message-id
 :date:date:subject:subject:from:from:received:received:received;
 s=mail_dkim; t=1573016585; bh=0FOYqQSZzOr2j+GXJMGIrxGYuDlLThM56
 ei1aWM2sE8=; b=avLA9b+QBrH6ab80+I3tdLFKFx3ZCINd/HxEUFgEnvRnCSHR0
 VU/BjeH94XOvq+P/Yhxde9kZah0iW3IhAuPpmtDFCQOImR7xIYTnUNYknMFHNw7n
 +j/FmLon5W1crOQmisEyFN+pqo24GuZLVG2IhUFu12g1UHa5ybY+lhe1JU=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 3CPghUIqa4nh; Wed,  6 Nov 2019 16:03:05 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 9C8B14AABD;
 Wed,  6 Nov 2019 16:03:05 +1100 (AEDT)
Received: from dhost.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id D87694AABC;
 Wed,  6 Nov 2019 16:03:04 +1100 (AEDT)
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com
Date: Wed,  6 Nov 2019 12:02:59 +0700
Message-Id: <20191106050259.10628-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
X-Headers-End: 1iSDTO-001i8D-Lk
Subject: [tipc-discussion] [net-next] tipc: eliminate checking netns if node
 acknowledge
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

At current we do check netns local for every neighbor discovery that
is being sent from external netns node. This is become unnecessary
for node acknowledge.

We now improve above checking for peer node come back and discovery
message sent from unacknowledge node.

Fixes: f73b12812a3d ("tipc: improve throughput between nodes in netns")
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/node.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/net/tipc/node.c b/net/tipc/node.c
index 4b60928049ea..742c04756d72 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -472,10 +472,8 @@ static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
 				 tipc_bc_sndlink(net),
 				 &n->bc_entry.link)) {
 		pr_warn("Broadcast rcv link creation failed, no memory\n");
-		if (n->peer_net) {
-			n->peer_net = NULL;
-			n->peer_hash_mix = 0;
-		}
+		n->peer_net = NULL;
+		n->peer_hash_mix = 0;
 		kfree(n);
 		n = NULL;
 		goto exit;
@@ -1068,6 +1066,9 @@ void tipc_node_check_dest(struct net *net, u32 addr,
 	if (sign_match && addr_match && link_up) {
 		/* All is fine. Do nothing. */
 		reset = false;
+		/* Peer node is not a container/netns local */
+		if (!n->peer_hash_mix)
+			n->peer_hash_mix = hash_mixes;
 	} else if (sign_match && addr_match && !link_up) {
 		/* Respond. The link will come up in due time */
 		*respond = true;
@@ -1393,11 +1394,8 @@ static void node_lost_contact(struct tipc_node *n,
 
 	/* Notify publications from this node */
 	n->action_flags |= TIPC_NOTIFY_NODE_DOWN;
-
-	if (n->peer_net) {
-		n->peer_net = NULL;
-		n->peer_hash_mix = 0;
-	}
+	n->peer_net = NULL;
+	n->peer_hash_mix = 0;
 	/* Notify sockets connected to node */
 	list_for_each_entry_safe(conn, safe, conns, list) {
 		skb = tipc_msg_create(TIPC_CRITICAL_IMPORTANCE, TIPC_CONN_MSG,
-- 
2.20.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
