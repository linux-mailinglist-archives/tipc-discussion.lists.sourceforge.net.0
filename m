Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4505006E
	for <lists+tipc-discussion@lfdr.de>; Mon, 24 Jun 2019 06:01:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hfGAp-0000XV-2T; Mon, 24 Jun 2019 04:01:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <xdtjory@dek-tpc.internal>) id 1hfGAn-0000XD-Pg
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 04:01:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IsnOKGca2+LiIpt2b+e4nAzje7+e1B6Vc+kuvajB564=; b=k3TCFaXjLCnlfuH+55rW+ZHoRo
 2pHw96oBBDnx+q7FSzH+xBDvGegYsCFmiRiuD+Zdv4cYpdE9FzS1lh3kQ3WK9QirKCZfrccohIMoe
 jjQap81QMKBNNSWld0mNhhwIefIOeQeSpbxIK/cLTwld2sQeBqLmbFUQWyURCp8QEbiM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IsnOKGca2+LiIpt2b+e4nAzje7+e1B6Vc+kuvajB564=; b=TFnK3CgC2i765y3nWDrkybs46o
 +yDH7J9d9MbIyvsz2qt6rmyMrniVfXPsk/2t2DhS9kXiNWKXYoy2RwXOdvq0BomuS+KQ4fIWDWkZD
 G6XRog8tzbEpZGh9TudioppRUYOaYMTuuKeoqDV7MB1sPPH9WnVr1JvdqpBtNry2dnGs=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hfGAt-007FwV-KR
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 04:01:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id E888B44C85;
 Mon, 24 Jun 2019 14:01:40 +1000 (AEST)
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id GRz8ZX6ZHFQM; Mon, 24 Jun 2019 14:01:40 +1000 (AEST)
Received: from cba01.dek-tpc.internal (cba01.dek-tpc.internal [172.16.83.49])
 by mail.dektech.com.au (Postfix) with ESMTP id D1ED344C75;
 Mon, 24 Jun 2019 14:01:40 +1000 (AEST)
Received: by cba01.dek-tpc.internal (Postfix, from userid 1014)
 id D08F8181281; Mon, 24 Jun 2019 14:01:40 +1000 (AEST)
From: John Rutherford <john.rutherford@dektech.com.au>
To: davem@davemloft.net,
	netdev@vger.kernel.org
Date: Mon, 24 Jun 2019 14:01:23 +1000
Message-Id: <20190624040123.32337-1-john.rutherford@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hfGAt-007FwV-KR
Subject: [tipc-discussion] [net-next] tipc: fix missing indentation in
 source code
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

Fix misalignment of policy statement in netlink.c due to automatic
spatch code transformation.

Fixes: 3b0f31f2b8c9 ("genetlink: make policy common to family")
Acked-by: Jon Maloy <jon.maloy@ericsson.com>
Signed-off-by: John Rutherford <john.rutherford@dektech.com.au>
---
 net/tipc/netlink.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/netlink.c b/net/tipc/netlink.c
index 99bd166..d6165ad 100644
--- a/net/tipc/netlink.c
+++ b/net/tipc/netlink.c
@@ -261,7 +261,7 @@ struct genl_family tipc_genl_family __ro_after_init = {
 	.version	= TIPC_GENL_V2_VERSION,
 	.hdrsize	= 0,
 	.maxattr	= TIPC_NLA_MAX,
-	.policy = tipc_nl_policy,
+	.policy		= tipc_nl_policy,
 	.netnsok	= true,
 	.module		= THIS_MODULE,
 	.ops		= tipc_genl_v2_ops,
-- 
2.11.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
