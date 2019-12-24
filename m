Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 348D4129EC8
	for <lists+tipc-discussion@lfdr.de>; Tue, 24 Dec 2019 09:06:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ijfCo-0001Kw-EJ; Tue, 24 Dec 2019 08:06:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1ijfCm-0001KW-S5
 for tipc-discussion@lists.sourceforge.net; Tue, 24 Dec 2019 08:06:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5IR5wTliaVZcJE64wlStXNyagm0adTDaxkAtavC720k=; b=Wt4+cBaEaWm5c3ZMJr+j9NgDYt
 cL+VBINK/ELeK+qHFq7eISpQS7swNPTR30wJtD5la+Ut6gBw4R38ahMgIsapS9Go5KujqCSXZxlWZ
 HWdD/Xpov0PCmfxmojdENv3Mm96tWyAUWRWyLE3Gs+fRHV4cpJ/Mn5HjR1cP0fbft1Ks=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5IR5wTliaVZcJE64wlStXNyagm0adTDaxkAtavC720k=; b=mRCkYGdr/DaY+opysanF1Mb+CJ
 98TPFQ1grTEp7RJ+iQCJPIaxoQ3kSsiftEPO4qbwQFXKEuoQfFObUtcyfz4bzoz6x30OGZDhEq2Qm
 GIJJIBaGXKs/LCF/uA0V3e5LsFkk65VAUroGnoaKRbV0+CvIjn9cW5WKZC13mkpWpEq0=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ijfCi-00CFlK-0K
 for tipc-discussion@lists.sourceforge.net; Tue, 24 Dec 2019 08:06:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id D68C54C312;
 Tue, 24 Dec 2019 19:05:58 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1577174758; bh=jNwQH
 tqFeGf6bzHDu2BGlOUsVuzWfghJ1JuxM/4Wuzo=; b=eUsrdVXV0MNxf/4Y7fBVT
 /V/jnwO/DLl7zU02QF3CJCzJ3JkW/xBXvNuQ+Bi9H0W9h+Qbsw7CI98tQ6ZWje5B
 5DnA62eGUQK3QCFH/h0ep2JdrDdW6KyF9daF38rDYQ/dpWdJydxkEAB2PFwxpNVR
 oHC8bm50W6JKEMZmjrIxYQ=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 9-W_8KOd1WlJ; Tue, 24 Dec 2019 19:05:58 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 60CB04C313;
 Tue, 24 Dec 2019 19:05:58 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 44DAF4C312;
 Tue, 24 Dec 2019 19:05:57 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Tue, 24 Dec 2019 15:05:51 +0700
Message-Id: <20191224080551.28379-1-tuong.t.lien@dektech.com.au>
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
X-Headers-End: 1ijfCi-00CFlK-0K
Subject: [tipc-discussion] [net] tipc: fix wrong connect() return code
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

The current 'tipc_wait_for_connect()' function makes a loop and waits
for the condition 'sk->sk_state != TIPC_CONNECTING' to conclude if the
connecting has done. However, when the condition is met, it always
returns '0' even in the case the connecting was actually failed (e.g.
refused because the server socket has closed...) and the socket state
was set to 'TIPC_DISCONNECTING'.
This results in a wrong return code for the 'connect()' call from user,
making it believe that the connection is established and goes ahead
with more actions e.g. building & sending a message but then finally
gets an unexpected result (e.g. '-EPIPE').

This commit fixes the issue by returning the corresponding error code
if any when the wait process is waken up.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/socket.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 8b1daf3634b0..2e5faf89ef80 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -2428,7 +2428,7 @@ static int tipc_wait_for_connect(struct socket *sock, long *timeo_p)
 {
 	DEFINE_WAIT_FUNC(wait, woken_wake_function);
 	struct sock *sk = sock->sk;
-	int done;
+	int done = 0;
 
 	do {
 		int err = sock_error(sk);
@@ -2438,12 +2438,14 @@ static int tipc_wait_for_connect(struct socket *sock, long *timeo_p)
 			return -ETIMEDOUT;
 		if (signal_pending(current))
 			return sock_intr_errno(*timeo_p);
+		if (done)
+			return 0;
 
 		add_wait_queue(sk_sleep(sk), &wait);
 		done = sk_wait_event(sk, timeo_p,
 				     sk->sk_state != TIPC_CONNECTING, &wait);
 		remove_wait_queue(sk_sleep(sk), &wait);
-	} while (!done);
+	} while (1);
 	return 0;
 }
 
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
