Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CF35112CDD1
	for <lists+tipc-discussion@lfdr.de>; Mon, 30 Dec 2019 09:56:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ilqqT-0007B1-V6; Mon, 30 Dec 2019 08:56:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1ilqqR-00079t-2N
 for tipc-discussion@lists.sourceforge.net; Mon, 30 Dec 2019 08:56:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BaCLbX7Cd8PotYNIMHenXyQ8Kq5mxdeHzq9gKwyVQyI=; b=BBHfW2Z16/SGoX3x5j9di79cE+
 jbuuNLwi5J7HSR6754pTbkKTSVapVX8s2gjbg5eIN//A8rV/Z1x3jBjQTcJDkL4p5kcxjR2GbhuNo
 U8hwg/nlrodbrwHo5rya2bK3HofGh3DwU+ybX9Rnm8ZbU+7E9S4I9SQ9fmvJw2c6GqU8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BaCLbX7Cd8PotYNIMHenXyQ8Kq5mxdeHzq9gKwyVQyI=; b=FFQG467KUq/oPp0FZSDH6ftUg8
 4gnLOwfCbG+MoHmpAQqW5UiesUG3+5GybCQkL5A4Zocm3LFoqVWXJMleGokmKR3rRvUvzxPhJ0pEn
 gcQPxrHebux85ssoF0bps4ZJHmPcrJuYcOG5Gv2pQ05qq1Hrj7D/t5dGd7RsoWm0K6zY=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ilqqJ-001eJS-6s
 for tipc-discussion@lists.sourceforge.net; Mon, 30 Dec 2019 08:56:11 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 9C0614B051;
 Mon, 30 Dec 2019 19:55:55 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1577696155; bh=7NyJn
 K+dodvUhP2hNwYeI+aT/RZAabmQBGULeTYMOGk=; b=sWZN4LMP/2AQn8jWgRcdz
 cpsm5I7znekvHOyHlwV1yAjKAXs2RvtsBpVSF7h9SDktiuo6Li4dWmtlBrWe5oCP
 nrjbThfLMkcr3ocBRSn/tZPSU0ny1mEFDwRFVeQMQz5QUMTVCanNb1AC/ZGX15VR
 oPMOfgvpPrMaTkG0+aft44=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id AN707XBt_WuJ; Mon, 30 Dec 2019 19:55:55 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 34B4F4B057;
 Mon, 30 Dec 2019 19:55:55 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 21EA94B051;
 Mon, 30 Dec 2019 19:55:53 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Mon, 30 Dec 2019 15:55:48 +0700
Message-Id: <20191230085548.20721-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ilqqJ-001eJS-6s
Subject: [tipc-discussion] [net v2] tipc: fix wrong connect() return code
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

This commit fixes the issue by instead setting the wait condition to
'tipc_sk_connected(sk)', so that the function will return '0' only when
the connection is really established. Otherwise, either the socket
error code if any or '-ETIMEDOUT'/'-EINTR' will be returned
correspondingly.

---------
v2: changed after discussing with Ying
---------

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/socket.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 6552f986774c..2f5679f84060 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -2432,8 +2432,8 @@ static int tipc_wait_for_connect(struct socket *sock, long *timeo_p)
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
