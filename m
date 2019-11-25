Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6421089D6
	for <lists+tipc-discussion@lfdr.de>; Mon, 25 Nov 2019 09:12:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iZ9UH-0001N0-5R; Mon, 25 Nov 2019 08:12:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iZ9UF-0001Mt-K2
 for tipc-discussion@lists.sourceforge.net; Mon, 25 Nov 2019 08:12:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B+6r//scr5biGheVMPRGGff+z8hzmAfU97ozA+U3nYw=; b=hkvQ8MgETQo7GH4LDBGfxR5Wml
 Ir1cxO1a7q6ccf8Pna4Zx2evEmuimU+podkBqSeICde8/oL4FjGHVw/p9+jzDQfIlRDnonmj4YaZV
 4757D6C1vkgTMeEZ4GRnx5yMlh6viJDBnhweYuJNFLz2Ssuwrz59aemipGmO1H14gB/o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=B+6r//scr5biGheVMPRGGff+z8hzmAfU97ozA+U3nYw=; b=EL61qV9tInCfneAoJ3a2B2OAwA
 XUPs4UU6Eq72yKtxO4JCZ36ShG0XnWrXYbBN8OSMzmIYBgyx68B+BzHXglCz3KJtcYBhbp8Motz8l
 Q9GnndWH2HcELydqbavaBy2WmaX0/BZHI8n9ShCJuP4yu2fyGhyucu0GiEdcefkIVv1E=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iZ9UD-00D7KZ-FT
 for tipc-discussion@lists.sourceforge.net; Mon, 25 Nov 2019 08:12:47 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id E24BD4A5C1;
 Mon, 25 Nov 2019 19:12:38 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1574669558; bh=V02Xe
 Ho131p+uK/W+/6S8d9hqtTLBlw1FNs3klvBCAw=; b=WzYimBAvMD/c4gW2F19yj
 cioAvyEH+yk/GghSuqj6yJIlaUTAQNTCk6Rdu9BWqSh0uTjH+n2E3fA3CTbVBQED
 6z+oK6Q4f2//6FRTgckIAfLrAJzsr2HqRwh7MXMptar8lNLP6gsGjNcZuBi0L8m4
 fVVa5lZeUojKZk15nEdk8g=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Vqp6EdQAREoZ; Mon, 25 Nov 2019 19:12:38 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 8D6D54A5C2;
 Mon, 25 Nov 2019 19:12:38 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id AD3764A5C1;
 Mon, 25 Nov 2019 19:12:37 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Mon, 25 Nov 2019 15:12:31 +0700
Message-Id: <20191125081231.29393-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: -0.3 (/)
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
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iZ9UD-00D7KZ-FT
Subject: [tipc-discussion] [net] tipc: fix memory leak in socket streaming
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

In case of stream sockets, a per-socket timer is set up for either the
SYN attempt or connection supervision mechanism. When the socket timer
expires, an appropriate action (i.e. sending SYN or PROBE message)
would be taken just in the case the socket is not being owned by user
(e.g. via the 'lock_sock()').

In the latter case, there is nothing but the timer is re-scheduled for
a short period of time (~ 50ms) to try again. The function just makes a
'return' immediately without decreasing the socket 'refcnt' which was
held in advance for the timer callback itself! The same happens if at
the next time, the socket is still busy...

As a result, the socket 'refcnt' is increased without decreasing, so
the sock object cannot be freed at all (due to 'refcnt' != 0) even when
the connection is closed and user releases all related resources.

The memory leak is hard to detect because the probe interval is set to
1 hour since the connection is established, but in the case of a SYN
attempt, that can be much more likely.

The commit fixes the bug by calling the 'sock_put()' in the case
mentioned above, then the socket 'refcnt' will be increased & decreased
correctly and the sock object can be released later.

Fixes: 0d5fcebf3c37 ("tipc: refactor tipc_sk_timeout() function")
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/socket.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index a1c8d722ca20..d67c3747d2c3 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -2757,7 +2757,7 @@ static void tipc_sk_timeout(struct timer_list *t)
 	if (sock_owned_by_user(sk)) {
 		sk_reset_timer(sk, &sk->sk_timer, jiffies + HZ / 20);
 		bh_unlock_sock(sk);
-		return;
+		goto exit;
 	}
 
 	if (sk->sk_state == TIPC_ESTABLISHED)
@@ -2775,6 +2775,8 @@ static void tipc_sk_timeout(struct timer_list *t)
 		tipc_dest_push(&tsk->cong_links, pnode, 0);
 		tsk->cong_link_cnt = 1;
 	}
+
+exit:
 	sock_put(sk);
 }
 
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
