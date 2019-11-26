Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FC41097EB
	for <lists+tipc-discussion@lfdr.de>; Tue, 26 Nov 2019 03:53:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iZQyt-0001CY-5S; Tue, 26 Nov 2019 02:53:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <john.rutherford@dektech.com.au>) id 1iZQyr-0001CQ-Eb
 for tipc-discussion@lists.sourceforge.net; Tue, 26 Nov 2019 02:53:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jHRANRL7eIr1IWI5NQGKSJWX9rQC7xnuRMT7zr/ffd8=; b=VochHEy0yU+OQLtkcFVRQjen69
 QHefpXj422jmSavQDkgO/ZY3U9w5Zd2eye3YZVQFG1G2fpcQbrFRF+Sw5CWlhQhsrcrVOeVmLETlw
 JN7GGoKYUTZqAc7fgKCNUjUMmB0DSXIX1Py/49qdTJW8p7MTGcrXuTaG+KgybTa4Dqpg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jHRANRL7eIr1IWI5NQGKSJWX9rQC7xnuRMT7zr/ffd8=; b=d/6ItXawodKQTCjK3v4fDfKUtD
 KhdY2a7G1o0Z6jXMUrDI2eWuCUh/pcn17/G9vxMkPd7jEol26CMjbyLmagYtlLLc0nBwJ4EXVdsRW
 3b4Unpu8y4I/AqFAoqI8zQeK1CLXMVy3Niwmbz6BrwcVvNeO7iuvQB8FPhGKmy9dGjOE=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iZQyo-005aDA-SW
 for tipc-discussion@lists.sourceforge.net; Tue, 26 Nov 2019 02:53:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id F3AD64A2C5;
 Tue, 26 Nov 2019 13:53:19 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1574736799; bh=0BQcO
 SX6GhZi8vVpoT2iBwRnOnbu94JS1h+ml6+q04E=; b=L7Fg/YiNycmeB4zNcrZ9Y
 c4BLhTKXd1y66pJBzerQZkaOYXEcGJC6+nr9A25LP+5WNA7Zzc1rpmsH3qxON3r/
 RbFLTS8QwwGiKeKLr3FchixDBYwe7h4lS7gpONQzbDiZIVi6OeTvQ/Ml3a4Rg/sJ
 LH541Wq9yDqOrodpkFKO1U=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id pOjYoWOZTETI; Tue, 26 Nov 2019 13:53:19 +1100 (AEDT)
Received: from cba01.dek-tpc.internal (cba01.dek-tpc.internal [172.16.83.49])
 by mail.dektech.com.au (Postfix) with ESMTP id CBE524906A;
 Tue, 26 Nov 2019 13:53:19 +1100 (AEDT)
Received: by cba01.dek-tpc.internal (Postfix, from userid 1014)
 id 7E02518061F; Tue, 26 Nov 2019 13:53:19 +1100 (AEDT)
From: john.rutherford@dektech.com.au
To: davem@davemloft.net, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Tue, 26 Nov 2019 13:52:55 +1100
Message-Id: <20191126025255.22305-1-john.rutherford@dektech.com.au>
X-Mailer: git-send-email 2.13.7
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
X-Headers-End: 1iZQyo-005aDA-SW
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
Acked-by: Jon Maloy <jon.maloy@ericsson.com>
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
