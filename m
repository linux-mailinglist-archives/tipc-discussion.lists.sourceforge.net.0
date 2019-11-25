Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE241089FE
	for <lists+tipc-discussion@lfdr.de>; Mon, 25 Nov 2019 09:23:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iZ9eL-0001vC-5G; Mon, 25 Nov 2019 08:23:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1iZ9eK-0001v5-HD
 for tipc-discussion@lists.sourceforge.net; Mon, 25 Nov 2019 08:23:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CbJdo0jSOZGAp39QcO53JvvLA0UqT5DAhQT+jBCxmbU=; b=TJbDtfUwfYnM7WQyvx0+TfvQ5j
 1cETGIbkTnQgsT67Z3KHIe+yD0mYjxo8JEc7t+T0StT4yvfqHKFIkVsyPbpjLvQFRxNXbXrWQf+Tr
 c7ZyGggBeuXZI9BKwZK7Xm5uKB2VXixY7V+rHpG9Tm/YrPvRVmTWDOnrGJUAdVLAN2+Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CbJdo0jSOZGAp39QcO53JvvLA0UqT5DAhQT+jBCxmbU=; b=DC0yy7C086dI9d0yjvrzCeNN+4
 bWjH/+iNn99r+PW7LKHr04brE088gQ8+IZuD7XvnVKwNS5OzqS5tycol+BqAdvXPKeq5Lrks9WIaA
 RRZoFi5esWtO7h0VkYcgJ1XBdVzrtGJhogAlU3lKNkSVZVrF/X1LTgAL1rM44K+/yFLs=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iZ9eE-00Cz0t-Rx
 for tipc-discussion@lists.sourceforge.net; Mon, 25 Nov 2019 08:23:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 1D0524A5C3;
 Mon, 25 Nov 2019 19:23:00 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1574670179; bh=G9QmG+CvcpO3nw
 X2w9n7lqJv+yA8FtEFYPm25xBx8ow=; b=VhUsZCHlDoJX6MEmcl3GOzlEQPVbjA
 XddzV06P7hBEtQkG/D46ElIQehO2gZhoosg4kNtJwhjiw/qCrw55Ww53bixt8mM+
 H8ctuBF0n/nUEClESorK2azf9TgU5hE5ZkJjs5gpYKveArtO5pWy+FqL2oMMoymz
 yMdxaO5SIbJCM=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id behWkwFwfhON; Mon, 25 Nov 2019 19:22:59 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id B96984A5C4;
 Mon, 25 Nov 2019 19:22:59 +1100 (AEDT)
Received: from VNLAP253VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 99E964A5C3;
 Mon, 25 Nov 2019 19:22:58 +1100 (AEDT)
From: "tung quang nguyen" <tung.q.nguyen@dektech.com.au>
To: "'Tuong Lien'" <tuong.t.lien@dektech.com.au>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>, <ying.xue@windriver.com>
References: <20191125081231.29393-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20191125081231.29393-1-tuong.t.lien@dektech.com.au>
Date: Mon, 25 Nov 2019 15:22:56 +0700
Message-ID: <023a01d5a369$8c192790$a44b76b0$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQOR/MOD0tOccC9d7K74CmrUvuwQ/qQi2N9Q
Content-Language: en-us
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
X-Headers-End: 1iZ9eE-00Cz0t-Rx
Subject: Re: [tipc-discussion] [net] tipc: fix memory leak in socket
 streaming
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

Hi Tuong,

I fixed it in this commit "[tipc-discussion] [net v1 2/3] tipc: fix wrong
socket reference counter after tipc_sk_timeout() returns" but I have not
sent to David yet.
I intended to send it in a series of patch for fixing bugs at socket layer.

Thanks.

Best regards,
Tung Nguyen

-----Original Message-----
From: Tuong Lien <tuong.t.lien@dektech.com.au> 
Sent: Monday, November 25, 2019 3:13 PM
To: tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com;
maloy@donjonn.com; ying.xue@windriver.com
Subject: [tipc-discussion] [net] tipc: fix memory leak in socket streaming

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



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
