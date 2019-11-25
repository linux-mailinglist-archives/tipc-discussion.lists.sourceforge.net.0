Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3963B1088B7
	for <lists+tipc-discussion@lfdr.de>; Mon, 25 Nov 2019 07:35:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iZ7yH-00084V-Si; Mon, 25 Nov 2019 06:35:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <john.rutherford@dektech.com.au>) id 1iZ7yG-00084E-Of
 for tipc-discussion@lists.sourceforge.net; Mon, 25 Nov 2019 06:35:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hjgZC7fa9TxBV45mJnSghS1FvXefQQN+VKiZD2wfOXk=; b=BK8L3yekcc9a8YIMG5zGGsIijZ
 6f5FLvDeFIs7nmcAfisb0jPcPMACWK9HagTI53SDsi0+G+TLMUy6CPt78G8R8WP9lr4wuMC36ul9H
 SmcykBtUwUoUplyMBCLkodsr5Ael6o2bmKcU1QKtsDp+PY37CjPPwgFx5DvyZTLUNxcM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hjgZC7fa9TxBV45mJnSghS1FvXefQQN+VKiZD2wfOXk=; b=D7JuBRupQmOC91Sw3o6s7KImGb
 v5fj5dkEI1UH7KBFiIhcBb2c7YDEs7gYyTCBVEfNM2s/g/hpw32sV+YJHvbAI2F1344K/e7XIfNh1
 epPpP7Wyj1jwagVCIIVbYdF9xX9WHzL4S5PBgAry57OOx2L//l9cCyl3SjKQE00ryzHI=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iZ7yE-00D3oB-B0
 for tipc-discussion@lists.sourceforge.net; Mon, 25 Nov 2019 06:35:40 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 84F104A5B6;
 Mon, 25 Nov 2019 17:35:30 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1574663730; bh=1BGqz
 1pAopmU7visgq6l9Pd1QdEVcqrHAZvQFtM3zZU=; b=fIL5JprsfzYMTn2/NQbF2
 2hCnDGIgBVlnKTwl6Ah/1Non7BmiC+yPeWsw0xpQo1QqjXf0Z2gbFrYNOd1RXI5p
 dCz0eDZZRIrdC5g1qQGOrPY4CdX5GJswHefZhGCfafY665FdBRvtU5RZ/TLiRNg9
 3YLotfEFaTd2JU/3GfxImI=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Xhtvmi2bUkNB; Mon, 25 Nov 2019 17:35:30 +1100 (AEDT)
Received: from cba01.dek-tpc.internal (cba01.dek-tpc.internal [172.16.83.49])
 by mail.dektech.com.au (Postfix) with ESMTP id 5F0C84A5B5;
 Mon, 25 Nov 2019 17:35:30 +1100 (AEDT)
Received: by cba01.dek-tpc.internal (Postfix, from userid 1014)
 id 5473A1805AE; Mon, 25 Nov 2019 17:35:30 +1100 (AEDT)
From: john.rutherford@dektech.com.au
To: tipc-discussion@lists.sourceforge.net
Date: Mon, 25 Nov 2019 17:35:12 +1100
Message-Id: <20191125063512.13592-1-john.rutherford@dektech.com.au>
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
X-Headers-End: 1iZ7yE-00D3oB-B0
Subject: [tipc-discussion] [net] tipc: fix link name length check
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

From: John Rutherford <john.rutherford@dektech.com.au>

In commit 4f07b80c9733 ("tipc: check msg->req data len in
tipc_nl_compat_bearer_disable") the same patch code was copied into
routines: tipc_nl_compat_bearer_disable(),
tipc_nl_compat_link_stat_dump() and tipc_nl_compat_link_reset_stats().
The two link routine occurrences should have been modified to check
the maximum link name length and not bearer name length.

Fixes: 4f07b80c9733 ("tipc: check msg->reg data len in tipc_nl_compat_bearer_disable")
Signed-off-by: John Rutherford <john.rutherford@dektech.com.au>
---
 net/tipc/netlink_compat.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/tipc/netlink_compat.c b/net/tipc/netlink_compat.c
index e135d4e11231..d4d2928424e2 100644
--- a/net/tipc/netlink_compat.c
+++ b/net/tipc/netlink_compat.c
@@ -550,7 +550,7 @@ static int tipc_nl_compat_link_stat_dump(struct tipc_nl_compat_msg *msg,
 	if (len <= 0)
 		return -EINVAL;
 
-	len = min_t(int, len, TIPC_MAX_BEARER_NAME);
+	len = min_t(int, len, TIPC_MAX_LINK_NAME);
 	if (!string_is_valid(name, len))
 		return -EINVAL;
 
@@ -822,7 +822,7 @@ static int tipc_nl_compat_link_reset_stats(struct tipc_nl_compat_cmd_doit *cmd,
 	if (len <= 0)
 		return -EINVAL;
 
-	len = min_t(int, len, TIPC_MAX_BEARER_NAME);
+	len = min_t(int, len, TIPC_MAX_LINK_NAME);
 	if (!string_is_valid(name, len))
 		return -EINVAL;
 
-- 
2.11.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
