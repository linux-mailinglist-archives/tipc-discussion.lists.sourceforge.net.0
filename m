Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 861DC10C2C6
	for <lists+tipc-discussion@lfdr.de>; Thu, 28 Nov 2019 04:10:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iaACI-0001p9-OW; Thu, 28 Nov 2019 03:10:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1iaACH-0001od-5n
 for tipc-discussion@lists.sourceforge.net; Thu, 28 Nov 2019 03:10:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:To:
 From:Sender:Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zDepIAe0Z6zZPvgjrf2Wc9jcGK6k9Fo77p7Cjr1fa2Y=; b=c1UlJeZxXZNawlGpdDIsVRMGgD
 +5YIknIwfyWSCVlj/KQ12+UGnCnkPX37UYxG5AK8gPlRCfg2yuxyU6Mes77ueDYJdLcUguc4kBQ6p
 oT1DpJ70Uy0W8DgrcftViHmcmMqwjzpoofy5yv1igMbk7qLACCv1HA9vgfBkaRyXnUzc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zDepIAe0Z6zZPvgjrf2Wc9jcGK6k9Fo77p7Cjr1fa2Y=; b=cJOs1YERt2TRB9ONtfX//QkJR7
 shuIStbXT4T/wyTaW8WETohKEmtIYUW60cuPYwkQ0gPfJKmAOIQn9c0zmltDJMckEs3bo9TPoBDUi
 5w8o76kdtEuI8aJVnB2gi4QHpUpxyYs1QHmh4GWvaicqNHy2WuAxCo+LBrKhaqT5d4Dc=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iaACD-008lmQ-Hh
 for tipc-discussion@lists.sourceforge.net; Thu, 28 Nov 2019 03:10:25 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 554E74B9CE;
 Thu, 28 Nov 2019 14:10:12 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mail_dkim; t=
 1574910612; bh=Sw2Vgr5NV1VBdyDW0t95lQSFCjtXjdlYSHiNMpVWzk0=; b=I
 gr72pBAgwGDTXiPoBK3zHBoGJrlFTfVB4LY96Jnunw53jMh6waKJIa6ZQOsRkytk
 fPB5uo/vL7jwiCkU2cO9pzTVkto6v1tR9ailFqp74ldLEQTD/6NG/1OZ/kPsEYk8
 RcFSoBMUv/vX8/5F827+uhuD0nSb73TYZP0vm22xZY=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id vPV-rGFSNMdk; Thu, 28 Nov 2019 14:10:12 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 38F6A4B9CF;
 Thu, 28 Nov 2019 14:10:12 +1100 (AEDT)
Received: from ubuntu.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 9CEB34B9CE;
 Thu, 28 Nov 2019 14:10:11 +1100 (AEDT)
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: davem@davemloft.net, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Thu, 28 Nov 2019 10:10:06 +0700
Message-Id: <20191128031008.2045-3-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191128031008.2045-1-tung.q.nguyen@dektech.com.au>
References: <20191128031008.2045-1-tung.q.nguyen@dektech.com.au>
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
X-Headers-End: 1iaACD-008lmQ-Hh
Subject: [tipc-discussion] [net v1 2/4] tipc: fix wrong socket reference
 counter after tipc_sk_timeout() returns
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

When tipc_sk_timeout() is executed but user space is grabbing
ownership, this function rearms itself and returns. However, the
socket reference counter is not reduced. This causes potential
unexpected behavior.

This commit fixes it by calling sock_put() before tipc_sk_timeout()
returns in the above-mentioned case.

Fixes: afe8792fec69 ("tipc: refactor function tipc_sk_timeout()")
Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
Acked-by: Ying Xue <ying.xue@windriver.com>
Acked-by: Jon Maloy <jon.maloy@ericsson.com>
---
 net/tipc/socket.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 7baed2c2c93d..fb5595081a05 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -2759,6 +2759,7 @@ static void tipc_sk_timeout(struct timer_list *t)
 	if (sock_owned_by_user(sk)) {
 		sk_reset_timer(sk, &sk->sk_timer, jiffies + HZ / 20);
 		bh_unlock_sock(sk);
+		sock_put(sk);
 		return;
 	}
 
-- 
2.17.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
