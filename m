Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 12351133913
	for <lists+tipc-discussion@lfdr.de>; Wed,  8 Jan 2020 03:19:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ip0wJ-0005rs-F7; Wed, 08 Jan 2020 02:19:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1ip0wJ-0005rl-1l
 for tipc-discussion@lists.sourceforge.net; Wed, 08 Jan 2020 02:19:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gz19mxsQXTvdZD48cF5ReYb1S8PUHKMekbE2Pt222hU=; b=ax/V4YgEkxgeFKLepOzZQzjQn/
 qKyFbsv2uAtDKSI5HE4Qfo5yxHAZ6jtllhhbenrJFrKuPqwkfXB9DAXq7Wd9UvA5aOh5ZDvStIr14
 BifUD+THJKJwh+6wKY/lH1C9t4awmjNt3+dxDjkULYxE+tu61/s0g1b8ED8kOcKC+YIU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gz19mxsQXTvdZD48cF5ReYb1S8PUHKMekbE2Pt222hU=; b=OLb21tSGYRDY6ZoVU8PhFjwijZ
 7zQGER7m5x/b977mjB7p0+vPiNeiS8780TjxhX12kadrt4f7NgMhruip45B/+XzXa7mODOgnVfM3w
 ofdPyC+4iZex985B/7VWk1RGhRq3GlXVbgKpbxVVBvja1CfJyBewGsD6Gotpber6jqFk=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ip0wH-00Dvzy-2u
 for tipc-discussion@lists.sourceforge.net; Wed, 08 Jan 2020 02:19:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 328264B0F0;
 Wed,  8 Jan 2020 13:19:06 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1578449946; bh=7kL6G
 d9QgVrVwNcdQwfxjYZY0q6jSTK5JkdTcnXIoYk=; b=SZs18tdq2ZYxEdh9W5rkI
 Nh40jjVjarDuiTXI74W5+V2Dz39lyUDhLTC0+HzMQ+VmEAtr204MN7YhmShfIDOy
 32plgbLOL6hJT6VNsACHmOcm7AeIT/5szIDSjuhtYwB94kNWrnxw6PEJsRCwilw9
 nIuMdB8BBcHqzRcJF+/Uls=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 0wpjIOWH2xcz; Wed,  8 Jan 2020 13:19:06 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 07C364C137;
 Wed,  8 Jan 2020 13:19:06 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id CB18B4B0F0;
 Wed,  8 Jan 2020 13:19:04 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jmaloy@redhat.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Wed,  8 Jan 2020 09:19:00 +0700
Message-Id: <20200108021900.24802-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
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
X-Headers-End: 1ip0wH-00Dvzy-2u
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
Cc: tipc-discussion@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

The current 'tipc_wait_for_connect()' function does a wait-loop for the
condition 'sk->sk_state != TIPC_CONNECTING' to conclude if the socket
connecting has done. However, when the condition is met, it returns '0'
even in the case the connecting is actually failed, the socket state is
set to 'TIPC_DISCONNECTING' (e.g. when the server socket has closed..).
This results in a wrong return code for the 'connect()' call from user,
making it believe that the connection is established and go ahead with
building, sending a message, etc. but finally failed e.g. '-EPIPE'.

This commit fixes the issue by changing the wait condition to the
'tipc_sk_connected(sk)', so the function will return '0' only when the
connection is really established. Otherwise, either the socket 'sk_err'
if any or '-ETIMEDOUT'/'-EINTR' will be returned correspondingly.

Acked-by: Ying Xue <ying.xue@windriver.com>
Acked-by: Jon Maloy <jon.maloy@ericsson.com>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/socket.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 6ebd809ef207..f9b4fb92c0b1 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -2443,8 +2443,8 @@ static int tipc_wait_for_connect(struct socket *sock, long *timeo_p)
 			return sock_intr_errno(*timeo_p);
 
 		add_wait_queue(sk_sleep(sk), &wait);
-		done = sk_wait_event(sk, timeo_p,
-				     sk->sk_state != TIPC_CONNECTING, &wait);
+		done = sk_wait_event(sk, timeo_p, tipc_sk_connected(sk),
+				     &wait);
 		remove_wait_queue(sk_sleep(sk), &wait);
 	} while (!done);
 	return 0;
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
