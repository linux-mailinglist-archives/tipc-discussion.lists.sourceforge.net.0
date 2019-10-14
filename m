Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD69D59F1
	for <lists+tipc-discussion@lfdr.de>; Mon, 14 Oct 2019 05:27:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iJr0b-0000B1-8S; Mon, 14 Oct 2019 03:26:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1iJr0Y-0000Ap-Ks
 for tipc-discussion@lists.sourceforge.net; Mon, 14 Oct 2019 03:26:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U69yGFskg1dPaYTTW9e03y4FnR/2+dKkajvPEo1qrFM=; b=CfBQwPIXc5+xcSOL9kHWDOfpfA
 Uv7GQRccSb+sgYQEseQOM7/jWJD3MQU08Gz315JDMrD+uQFEstRjXl6qr8UuUgB5SPZNjMletVRMD
 zMFqSuJZChODsLENl6nzoDuPKW2Fy3ZGkXQqDDZY7ybOZ8RCkJnLCmcvxCSORCj5ntqg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=U69yGFskg1dPaYTTW9e03y4FnR/2+dKkajvPEo1qrFM=; b=V
 o6pDvDUYPBy8JbPcE1yHk4qvFwp3lYJraPeFD9xnlpIZnNvbL0ls2csoPUBwciMSY2X9rrGLHWPaB
 tHkvKba0xWv9SVgMIP7TxvdNHia4pP7EFAAM9CxGG7fKUbUAioJXY4qagcNFn1KbTR8MMNJZeCKp4
 QFRf0uVL+IqBuCQU=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iJr0T-008H9V-K2
 for tipc-discussion@lists.sourceforge.net; Mon, 14 Oct 2019 03:26:54 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id A47114443A;
 Mon, 14 Oct 2019 14:26:40 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:mime-version:x-mailer:message-id
 :date:date:subject:subject:from:from:received:received:received;
 s=mail_dkim; t=1571023600; bh=ukEiN+VW7H8m+NTKzKIhg3mU7t8VIDpJu
 iE2pwxU+0M=; b=X3LYruGWavyFghHOF7oXuCRGuF/KBDUwMvrc1TOxH4Dz5tloi
 HIJ5k0NKJFQKVtAvZipe3VC8JnafqJyYE+2aeZDFX/Nvr9Ee8lGLAUTUvC8PM/+8
 TCjQBNfCLZreKMicjw7A0cuyQ2iJywVYhJFmaervPMBVEOkgPnaxthXJ8M=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id JEi9PcvRxaDX; Mon, 14 Oct 2019 14:26:40 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 49A7948CB7;
 Mon, 14 Oct 2019 14:26:40 +1100 (AEDT)
Received: from build.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 4C1934443A;
 Mon, 14 Oct 2019 14:26:39 +1100 (AEDT)
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com, lxin@redhat.com
Date: Mon, 14 Oct 2019 10:25:23 +0700
Message-Id: <20191014032523.4672-1-hoang.h.le@dektech.com.au>
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
X-Headers-End: 1iJr0T-008H9V-K2
Subject: [tipc-discussion] [net-next] tipc: support 128bit node identity for
 peer removing
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

We add the support to remove a specific node down with 128bit
node identifier, as an alternative to legacy 32-bit node address.

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/node.c | 29 +++++++++++++++++++++--------
 1 file changed, 21 insertions(+), 8 deletions(-)

diff --git a/net/tipc/node.c b/net/tipc/node.c
index c8f6177dd5a2..152b98b2e8f5 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -1926,8 +1926,11 @@ int tipc_nl_peer_rm(struct sk_buff *skb, struct genl_info *info)
 	struct net *net = sock_net(skb->sk);
 	struct tipc_net *tn = net_generic(net, tipc_net_id);
 	struct nlattr *attrs[TIPC_NLA_NET_MAX + 1];
+	u8 node_id[NODE_ID_LEN];
+	u64 *w0 = (u64 *)&node_id[0];
+	u64 *w1 = (u64 *)&node_id[8];
 	struct tipc_node *peer;
-	u32 addr;
+	u32 addr = 0;
 	int err;
 
 	/* We identify the peer by its net */
@@ -1940,16 +1943,26 @@ int tipc_nl_peer_rm(struct sk_buff *skb, struct genl_info *info)
 	if (err)
 		return err;
 
-	if (!attrs[TIPC_NLA_NET_ADDR])
-		return -EINVAL;
-
-	addr = nla_get_u32(attrs[TIPC_NLA_NET_ADDR]);
+	if (attrs[TIPC_NLA_NET_ADDR]) {
+		addr = nla_get_u32(attrs[TIPC_NLA_NET_ADDR]);
+		if (!addr)
+			return -EINVAL;
+		if (in_own_node(net, addr))
+			return -ENOTSUPP;
+	}
 
-	if (in_own_node(net, addr))
-		return -ENOTSUPP;
+	if (attrs[TIPC_NLA_NET_NODEID]) {
+		if (!attrs[TIPC_NLA_NET_NODEID_W1])
+			return -EINVAL;
+		*w0 = nla_get_u64(attrs[TIPC_NLA_NET_NODEID]);
+		*w1 = nla_get_u64(attrs[TIPC_NLA_NET_NODEID_W1]);
+	}
 
 	spin_lock_bh(&tn->node_list_lock);
-	peer = tipc_node_find(net, addr);
+	if (!addr)
+		peer = tipc_node_find_by_id(net, node_id);
+	else
+		peer = tipc_node_find(net, addr);
 	if (!peer) {
 		spin_unlock_bh(&tn->node_list_lock);
 		return -ENXIO;
-- 
2.20.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
