Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 32926F3E47
	for <lists+tipc-discussion@lfdr.de>; Fri,  8 Nov 2019 04:03:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iSuYB-0001l0-6a; Fri, 08 Nov 2019 03:03:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1iSuY7-0001kk-8y
 for tipc-discussion@lists.sourceforge.net; Fri, 08 Nov 2019 03:02:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zAKhMJj3A73zJlCRPCUgQEpRI11xR0ta6cODeG42j+s=; b=hiwGWBspBY9QtpDAeCuX5F7Jhr
 r2FcsG/m4BaSCu+YiRh3BhTTgVn4HTy7dcgxQcjuKQ/P228wUgD9GNnZORwY95PUHKiHrPb1NNDT2
 lNPtq73X+EzgLnhKk9PQ7R6YgjJFve9W/WT+C8H7gOo00zUgT5NmUbsx67++lrWyS5co=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zAKhMJj3A73zJlCRPCUgQEpRI11xR0ta6cODeG42j+s=; b=m
 1V2764lEPg+J+jLnRe11wlaf/1apLVwBzpTko2BROyecC4dbzMGeAMFC+5IiAW10HZIc42KvaIYqF
 MSkRofSlz9QWuhdCJZ36ZmqNWje5LfQjswQx7WDhDMt8pTzwlkJCht8nMgnWxiHHcn+E0Jvyxc9go
 eYgRoN/FiylCH9IU=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iSuY3-004Th5-NX
 for tipc-discussion@lists.sourceforge.net; Fri, 08 Nov 2019 03:02:59 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 304B54A9AE;
 Fri,  8 Nov 2019 14:02:49 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:mime-version:x-mailer:message-id
 :date:date:subject:subject:from:from:received:received:received;
 s=mail_dkim; t=1573182169; bh=Ljy6J+7VJgFq3gtlOr17+gQvJEXANk+H/
 hS2OJAAudY=; b=DmtuRy1xs2CgNNquWXjdIp2Pk/brifkR9zSjLdkbqUq6AYfuX
 O0UPyy3F1tAnMi7wIC4OKo9+Xkkr2O9RX6FSG6dtvT/WUGuY9B3HpHZqGbCvT4u1
 eRmZrm+pEEZulYyZNJ/7+oy5WAMuOjVBYG06LISYjYdei+XIYIzQFx80Lg=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 8uyePDZKCrd4; Fri,  8 Nov 2019 14:02:49 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 15D784AAFB;
 Fri,  8 Nov 2019 14:02:48 +1100 (AEDT)
Received: from dhost.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 270584A9AE;
 Fri,  8 Nov 2019 14:02:48 +1100 (AEDT)
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jon.maloy@ericsson.com, maloy@donjonn.com,
 tipc-discussion@lists.sourceforge.net, netdev@vger.kernel.org
Date: Fri,  8 Nov 2019 10:02:37 +0700
Message-Id: <20191108030237.6619-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iSuY3-004Th5-NX
Subject: [tipc-discussion] [net-next] tipc: eliminate checking netns if node
 established
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

Currently, we scan over all network namespaces at each received
discovery message in order to check if the sending peer might be
present in a host local namespaces.

This is unnecessary since we can assume that a peer will not change its
location during an established session.

We now improve the condition for this testing so that we don't perform
any redundant scans.

Fixes: f73b12812a3d ("tipc: improve throughput between nodes in netns")
Acked-by: Jon Maloy <jon.maloy@ericsson.com>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/node.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/net/tipc/node.c b/net/tipc/node.c
index 1f1584518221..b66d2f67b1dd 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -472,10 +472,6 @@ static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
 				 tipc_bc_sndlink(net),
 				 &n->bc_entry.link)) {
 		pr_warn("Broadcast rcv link creation failed, no memory\n");
-		if (n->peer_net) {
-			n->peer_net = NULL;
-			n->peer_hash_mix = 0;
-		}
 		kfree(n);
 		n = NULL;
 		goto exit;
@@ -1073,6 +1069,9 @@ void tipc_node_check_dest(struct net *net, u32 addr,
 	if (sign_match && addr_match && link_up) {
 		/* All is fine. Do nothing. */
 		reset = false;
+		/* Peer node is not a container/local namespace */
+		if (!n->peer_hash_mix)
+			n->peer_hash_mix = hash_mixes;
 	} else if (sign_match && addr_match && !link_up) {
 		/* Respond. The link will come up in due time */
 		*respond = true;
@@ -1398,11 +1397,8 @@ static void node_lost_contact(struct tipc_node *n,
 
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
