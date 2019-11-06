Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 301ECF0EE3
	for <lists+tipc-discussion@lfdr.de>; Wed,  6 Nov 2019 07:26:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iSEm6-0000nm-O8; Wed, 06 Nov 2019 06:26:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1iSEm5-0000nI-As
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 06:26:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=byMGuLWo4eBy0pXSw2r2UK58+UzUCv7zm1cMUxWCEs8=; b=EnCJ4You2ewnPzNaapE0T55gte
 AzQvk9nHlowFygmpWjWhVe265qN3bjlF+JyOuMm1tAUaSsqvh1xxK2bV15rBMOGX26aWfyPH4drC5
 lbkjtftUctixmPihsCMGFYOy6FE9FlFo0wibvCtyHQ4VJBLUpHABSaOqMyIK7dmU4T+U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=byMGuLWo4eBy0pXSw2r2UK58+UzUCv7zm1cMUxWCEs8=; b=KOOtb7RByOGJcQ1ttybwJD7H8F
 t/p957CMnu/EvorP4apN9Ry6ZBxxEhIdSoNe3/bZ4fHwaoZpxEtbPH1UBfqZ7Im3yLfEBrwm82M5P
 SLMfP2FMosr/SqnLZmXj7UlJMQX1TJN2mHGcYqlL/PAR8oSSnEWWgSp86UzlxYvNGIXs=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iSEm3-001p36-9X
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 06:26:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 1E5DD4AAC4;
 Wed,  6 Nov 2019 17:26:25 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1573021585; bh=aKuDm
 AAJbdKcZZ9OOtSSU+opMuerzV9Y+Kl9fUkR6eo=; b=iF2mVZ9ilvml9TETAHNbu
 2Qp+Wm0Vw0tvhzL6VCue7QcrfhdL9Svn/eHKEI823F/tA48ffpAgmRCPCX3wOekb
 iPNH14pS1MEteoRdYmyTuIrN4c/SfHzLzLUC/BOa88zBZpFO/l3WdxfbLW9cVQYh
 UnGUeHxO1/5pjhVbi4/ldQ=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 9c1vEbRdsgyF; Wed,  6 Nov 2019 17:26:25 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 047DA4AAC5;
 Wed,  6 Nov 2019 17:26:25 +1100 (AEDT)
Received: from dhost.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 459354AAC4;
 Wed,  6 Nov 2019 17:26:24 +1100 (AEDT)
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jon.maloy@ericsson.com, maloy@donjonn.com, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Wed,  6 Nov 2019 13:26:10 +0700
Message-Id: <20191106062610.12039-2-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191106062610.12039-1-hoang.h.le@dektech.com.au>
References: <20191106062610.12039-1-hoang.h.le@dektech.com.au>
MIME-Version: 1.0
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
X-Headers-End: 1iSEm3-001p36-9X
Subject: [tipc-discussion] [net-next 2/2] tipc: reduce sensitive to
 retransmit failures
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

With huge cluster (e.g >200nodes), the amount of that flow:
gap -> retransmit packet -> acked will take time in case of STATE_MSG
dropped/delayed because a lot of traffic. This lead to 1.5 sec tolerance
value criteria made link easy failure around 2nd, 3rd of failed
retransmission attempts.

Instead of re-introduced criteria of 99 faled retransmissions to fix the
issue, we increase failure detection timer to ten times tolerance value.

Fixes: 77cf8edbc0e7 ("tipc: simplify stale link failure criteria")
Acked-by: Jon Maloy <jon.maloy@ericsson.com>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/link.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 038861bad72b..2aed7a958a8c 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1087,7 +1087,7 @@ static bool link_retransmit_failure(struct tipc_link *l, struct tipc_link *r,
 		return false;
 
 	if (!time_after(jiffies, TIPC_SKB_CB(skb)->retr_stamp +
-			msecs_to_jiffies(r->tolerance)))
+			msecs_to_jiffies(r->tolerance * 10)))
 		return false;
 
 	hdr = buf_msg(skb);
-- 
2.20.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
