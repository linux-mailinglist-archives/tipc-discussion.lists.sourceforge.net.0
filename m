Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8F3E994F
	for <lists+tipc-discussion@lfdr.de>; Wed, 30 Oct 2019 10:39:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iPkRp-00041I-M0; Wed, 30 Oct 2019 09:39:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1iPkRo-000413-D7
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Oct 2019 09:39:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zOyAofCvFWtJqvrrQUz5g/FCqnPtIExbN0k+0oDXt6I=; b=jk8fqnTrzDBJTYNyj+sqihxyBe
 fAl+2co3SM8y3Kc7PEB/Q8Ke37j1DTQL+rINUw581YTkcdbCcq6yso7E3nlq+eNs6PWiTAenA2LaX
 jXWgOFHNeSuTZH0vO/GO5HWfv0UGDZDmI5FuLDnevOxDUefERjmxqIj+GD8iq1BN/ZPU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zOyAofCvFWtJqvrrQUz5g/FCqnPtIExbN0k+0oDXt6I=; b=W
 OvQbRCQ+CbnXkenYeJqErMuBy5wGBmMUIyw0cvMQ8lC1N6UKGEo4jewE/hSb15kKXuWOk4YNADeKJ
 HmZh0aZ+3u+U+lNg2p/WqZRwOz9F3aDSimhzNBXq239NNQeuFT4qFMRf66WJmvE4+mmFqAERWzVOj
 JJUr3ztezQmoUa4M=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iPkRh-00AeAc-VI
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Oct 2019 09:39:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id A6C284A85C;
 Wed, 30 Oct 2019 20:39:06 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:mime-version:x-mailer:message-id
 :date:date:subject:subject:from:from:received:received:received;
 s=mail_dkim; t=1572428346; bh=7ly0q4GYnRApkAdkQu3t59vBQb8Ky1NU1
 0cDSrzVwGs=; b=aesHgPUxbV+DMadM60tplalU7u1ed0+K28rMSDCjmgHV8EBnU
 OsdD89XZ8fwrfY0fLwXZ3hlpIQQB052RRy9hHi7TLGeJfu17BQkWBNf5TQxcBp5S
 yKhoV1v8zJaCuPoQdN+5xJDhWacS+4Uwhn/vDrHVMvQoilaVR/xyhPCa84=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id IplfGuPoI2KO; Wed, 30 Oct 2019 20:39:06 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 3ED644A85D;
 Wed, 30 Oct 2019 20:39:06 +1100 (AEDT)
Received: from dhost.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 428E64A85C;
 Wed, 30 Oct 2019 20:39:05 +1100 (AEDT)
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jon.maloy@ericsson.com, maloy@donjonn.com,
 tipc-discussion@lists.sourceforge.net, ying.xue@windriver.com
Date: Wed, 30 Oct 2019 16:37:39 +0700
Message-Id: <20191030093739.19741-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
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
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iPkRh-00AeAc-VI
Subject: [tipc-discussion] [net-next] tipc: update cluster capabilities if
 node deleted
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

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/node.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/net/tipc/node.c b/net/tipc/node.c
index 4b60928049ea..1f1584518221 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -667,6 +667,11 @@ static bool tipc_node_cleanup(struct tipc_node *peer)
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
@@ -2043,7 +2048,7 @@ int tipc_nl_peer_rm(struct sk_buff *skb, struct genl_info *info)
 	struct net *net = sock_net(skb->sk);
 	struct tipc_net *tn = net_generic(net, tipc_net_id);
 	struct nlattr *attrs[TIPC_NLA_NET_MAX + 1];
-	struct tipc_node *peer;
+	struct tipc_node *peer, *temp_node;
 	u32 addr;
 	int err;
 
@@ -2084,6 +2089,11 @@ int tipc_nl_peer_rm(struct sk_buff *skb, struct genl_info *info)
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
