Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F43FD86D
	for <lists+tipc-discussion@lfdr.de>; Fri, 15 Nov 2019 10:08:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iVXag-00040t-2W; Fri, 15 Nov 2019 09:08:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1iVXac-00040M-9N
 for tipc-discussion@lists.sourceforge.net; Fri, 15 Nov 2019 09:08:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9kuYgD/YXFYn4F1DDQyk7Lh8y5N2bwOucOqjZUlTwP8=; b=f0X+g9j8oeDEjZHchesSHwTSVY
 Pm2RfHCge2ZnKFHdzc2ri4rJBoLPrgg1bU1wflYROg8tq+1MU88o2c7t/QmXmDN1v3pMsdfXeIstE
 Q26PuroDAhrsDSoaZ01tKT/Oxpxxf8c4FNI0415lQ7AYfj0IIn1BDbOn+LAUnZVpAaTM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9kuYgD/YXFYn4F1DDQyk7Lh8y5N2bwOucOqjZUlTwP8=; b=TP3Glcajjy5Xlw+2obmDUnnpe6
 P9/Beg1LWgkH3LVA+hvB3nITXTs6nazn6oTRnbaKN/zPQVDBLXK4TuSqHUKz89mZ8qlsq6ul1rZHM
 j6HNrIqN23DHaY86m6Gk8uG0xHuCecxioApvtXepTlu6vRbufCYXV0rOK4CE14qKoGzo=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iVXaZ-000Pyg-8E
 for tipc-discussion@lists.sourceforge.net; Fri, 15 Nov 2019 09:08:25 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 42E504AD3A;
 Fri, 15 Nov 2019 20:08:11 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1573808891; bh=Hni89
 t34XPWIDfTPL54326aXCV0AgeJOrQbTnJMq/CI=; b=hXYe6nKaprJoLX4Cb2FCF
 nsGgxkvqWeinuXLvMBvX1cVSQxfm+DBuSqYWJz3V3fvQMYGhrt64N870nOkRWzaS
 Crh+TZ/sOYaGFlk3FMvLnqnX/B88AM/LVAinsx86O6Tw5eG/UmrDpAU34KnAPItq
 zKqBha9JUFylRC9FXDXGEg=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id zFLNh7KlV-CV; Fri, 15 Nov 2019 20:08:11 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 2BAA34AD49;
 Fri, 15 Nov 2019 20:08:11 +1100 (AEDT)
Received: from ubuntu.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 79F434AD3A;
 Fri, 15 Nov 2019 20:08:10 +1100 (AEDT)
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Fri, 15 Nov 2019 16:08:08 +0700
Message-Id: <20191115090808.2021-1-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iVXaZ-000Pyg-8E
Subject: [tipc-discussion] [net v1 1/1] tipc: fix unreset l->rcv_unacked
 after message retransmission
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

When lost messages are retransmitted, they also carry ACK.
So, l->rcv_unacked needs to be reset.

Fixes: 9195948fbf34 ("tipc: improve TIPC throughput by Gap ACK blocks")
Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
---
 net/tipc/link.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index fb72031..7660e5a 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1448,6 +1448,7 @@ static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
 			msg_set_bcast_ack(hdr, bc_ack);
 			_skb->priority = TC_PRIO_CONTROL;
 			__skb_queue_tail(xmitq, _skb);
+			l->rcv_unacked = 0;
 			l->stats.retransmitted++;
 
 			/* Increase actual retrans counter & mark first time */
-- 
2.1.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
