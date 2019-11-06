Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B566F0EE2
	for <lists+tipc-discussion@lfdr.de>; Wed,  6 Nov 2019 07:26:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iSEm6-0002uJ-JK; Wed, 06 Nov 2019 06:26:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1iSEm5-0002u5-Bm
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 06:26:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hjo1daxMTuhOVJCKd3q8qNELlZzBExzGhWdHSO9omvg=; b=ACQvW7FDWquFsng3tsjNIi+eKy
 zFzqQgCBMf+NKjzRMC8Z+Q1Vdt15dKC1HUpF1Hrsv/RHVfMeVBto/73dKw71j1YtbxqWFLBzRX04O
 7kfdHb8CFami65kUyTtpv1j9/6PnMDZU5sBBruO+B3NN3d8OjY9zVn0mCNtSb1NyeK6o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hjo1daxMTuhOVJCKd3q8qNELlZzBExzGhWdHSO9omvg=; b=m
 1WR8R1mdqdLsOH9QEtZ7DpB1o+n+RXOtkQJcnrFwYDKwMkwPv93x0wUVMXOu9FfItW3ZedS2+SZ92
 hkIcTqFCPDXEfi2az6z9KMpPGw2oSMpKQ/S8pVdtWuynaAS1ki+HRH64M9fkFEryXUyUOqrjfgo0F
 0PwdEgUbfuy+qv8s=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iSEm2-001mR8-HG
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 06:26:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 6103C4AAC6;
 Wed,  6 Nov 2019 17:26:24 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:mime-version:x-mailer:message-id
 :date:date:subject:subject:from:from:received:received:received;
 s=mail_dkim; t=1573021584; bh=jI0AGYhJquj9/cmKZ5Y8DmCDwYuP1OnHc
 itq87VvODs=; b=oJefkvlsE2sD17FgNfZUfBTvirzoP8jwKvYY7TZCl5pLIqcV1
 Qlg3M6oG+T8HfQm8LwY/7gX779ffCTcJwSCdCWu/Gq8TZbMLbq+QMb+NciFRhKMc
 3eRGxLpZxbQW7r6a60rouztyPBYzXMYbzq4BECuxYav4h1T+GJjgkMdoPE=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Q-LKzfX5ulxZ; Wed,  6 Nov 2019 17:26:24 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 3A0D64AAC5;
 Wed,  6 Nov 2019 17:26:24 +1100 (AEDT)
Received: from dhost.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 473114AAC4;
 Wed,  6 Nov 2019 17:26:23 +1100 (AEDT)
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jon.maloy@ericsson.com, maloy@donjonn.com, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Wed,  6 Nov 2019 13:26:09 +0700
Message-Id: <20191106062610.12039-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
X-Headers-End: 1iSEm2-001mR8-HG
Subject: [tipc-discussion] [net-next 1/2] tipc: update cluster capabilities
 if node deleted
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

There are two improvements when re-calculate cluster capabilities:

- When deleting a specific down node, need to re-calculate.
- In tipc_node_cleanup(), do not need to re-calculate if node
is still existing in cluster.

Acked-by: Jon Maloy <jon.maloy@ericsson.com>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/node.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/net/tipc/node.c b/net/tipc/node.c
index 742c04756d72..a20fabd09e7e 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -665,6 +665,11 @@ static bool tipc_node_cleanup(struct tipc_node *peer)
 	}
 	tipc_node_write_unlock(peer);
 
+	if (!deleted) {
+		spin_unlock_bh(&tn->node_list_lock);
+		return deleted;
+	}
+
 	/* Calculate cluster capabilities */
 	tn->capabilities = TIPC_NODE_CAPABILITIES;
 	list_for_each_entry_rcu(temp_node, &tn->node_list, list) {
@@ -2041,7 +2046,7 @@ int tipc_nl_peer_rm(struct sk_buff *skb, struct genl_info *info)
 	struct net *net = sock_net(skb->sk);
 	struct tipc_net *tn = net_generic(net, tipc_net_id);
 	struct nlattr *attrs[TIPC_NLA_NET_MAX + 1];
-	struct tipc_node *peer;
+	struct tipc_node *peer, *temp_node;
 	u32 addr;
 	int err;
 
@@ -2082,6 +2087,11 @@ int tipc_nl_peer_rm(struct sk_buff *skb, struct genl_info *info)
 	tipc_node_write_unlock(peer);
 	tipc_node_delete(peer);
 
+	/* Calculate cluster capabilities */
+	tn->capabilities = TIPC_NODE_CAPABILITIES;
+	list_for_each_entry_rcu(temp_node, &tn->node_list, list) {
+		tn->capabilities &= temp_node->capabilities;
+	}
 	err = 0;
 err_out:
 	tipc_node_put(peer);
-- 
2.20.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
