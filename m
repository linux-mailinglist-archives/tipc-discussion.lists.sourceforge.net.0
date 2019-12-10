Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6D0118220
	for <lists+tipc-discussion@lfdr.de>; Tue, 10 Dec 2019 09:21:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ieals-0003LE-Rv; Tue, 10 Dec 2019 08:21:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iealq-0003Ku-Mi
 for tipc-discussion@lists.sourceforge.net; Tue, 10 Dec 2019 08:21:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5kahNJIs7lvgOMPKp18Fvzx6bRoPDgm0XLxRNLREwBU=; b=RXILh5DzW3QyNC9tn3r1zfZDRe
 o1peTslkjHO6s2fryYiUCy7jjky4oWJ7Iolzzjcaphl/dsVDFpUMRlMLUQKFV/yzEr2LQjV6SVzKD
 T/YThrgavplbPq+XCOKPw9SARYAWGadmxMyvihMxfzpi6NmyfkkTvzVnMpM1gpkxJbkk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5kahNJIs7lvgOMPKp18Fvzx6bRoPDgm0XLxRNLREwBU=; b=F7bE7lEaOd9DUKCUhQEUqqHXsE
 /iGvwYaanXP0Dwb9Q1bWLWuJLgsCwvsqn8w5DBexrc9lVZBaDwPl5smle+wXXWa/VSE+YEt/Sw2aG
 A86QhU32JJdWcQVKgDnme9OZTdrMJBaeuXr7/WhW1fKgy6qcXSZvojhaXcs8kKJRIgHk=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iealp-00GSnu-3k
 for tipc-discussion@lists.sourceforge.net; Tue, 10 Dec 2019 08:21:26 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 7845E4BD3D;
 Tue, 10 Dec 2019 19:21:18 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mail_dkim; t=
 1575966078; bh=9mFcoo7SmIjQayaHRDfSrpplq5OFpR/XpgBif3JGWrM=; b=h
 DdhasgU63OOuOFhExYtRBoIPtcT4OCczs9h+11YBa5wIZKW3DYAufA1Xa9PhsVIT
 O1d4YqpRkAf4X550Gwp5AdBkQlMnPAVzIqYtjPp5FvY38NqjtajVu2uej6qB311t
 HQ5mDVNqkqqdxpGI770bAtaU3vXQuHFyDs6RmxL0Qw=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Bwtby4biTTtB; Tue, 10 Dec 2019 19:21:18 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 550F64BD38;
 Tue, 10 Dec 2019 19:21:18 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 46F604BD3B;
 Tue, 10 Dec 2019 19:21:17 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jon.maloy@ericsson.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Tue, 10 Dec 2019 15:21:05 +0700
Message-Id: <20191210082105.23905-5-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20191210082105.23905-1-tuong.t.lien@dektech.com.au>
References: <20191210082105.23905-1-tuong.t.lien@dektech.com.au>
X-Spam-Score: -0.2 (/)
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
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iealp-00GSnu-3k
Subject: [tipc-discussion] [net 4/4] tipc: fix use-after-free in
 tipc_disc_rcv()
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

In the function 'tipc_disc_rcv()', the 'msg_peer_net_hash()' is called
to read the header data field but after the message skb has been freed,
that might result in a garbage value...

This commit fixes it by defining a new local variable to store the data
first, just like the other header fields' handling.

Fixes: f73b12812a3d ("tipc: improve throughput between nodes in netns")
Acked-by: Jon Maloy <jon.maloy@ericsson.com>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/discover.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/tipc/discover.c b/net/tipc/discover.c
index b043e8c6397a..bfe43da127c0 100644
--- a/net/tipc/discover.c
+++ b/net/tipc/discover.c
@@ -194,6 +194,7 @@ void tipc_disc_rcv(struct net *net, struct sk_buff *skb,
 {
 	struct tipc_net *tn = tipc_net(net);
 	struct tipc_msg *hdr = buf_msg(skb);
+	u32 pnet_hash = msg_peer_net_hash(hdr);
 	u16 caps = msg_node_capabilities(hdr);
 	bool legacy = tn->legacy_addr_format;
 	u32 sugg = msg_sugg_node_addr(hdr);
@@ -242,9 +243,8 @@ void tipc_disc_rcv(struct net *net, struct sk_buff *skb,
 		return;
 	if (!tipc_in_scope(legacy, b->domain, src))
 		return;
-	tipc_node_check_dest(net, src, peer_id, b, caps, signature,
-			     msg_peer_net_hash(hdr), &maddr, &respond,
-			     &dupl_addr);
+	tipc_node_check_dest(net, src, peer_id, b, caps, signature, pnet_hash,
+			     &maddr, &respond, &dupl_addr);
 	if (dupl_addr)
 		disc_dupl_alert(b, src, &maddr);
 	if (!respond)
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
