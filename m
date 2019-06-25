Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 121C455402
	for <lists+tipc-discussion@lfdr.de>; Tue, 25 Jun 2019 18:08:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hfnzT-000221-GT; Tue, 25 Jun 2019 16:08:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hfnzR-00021Y-Tq
 for tipc-discussion@lists.sourceforge.net; Tue, 25 Jun 2019 16:08:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MunnddkiuxDa44z5VFhlH4foZ3OIsxxjgBGKwWbDa0k=; b=ZFPrz/RoTorqvxijqRba3i/u5y
 g1Q3NnNvVW+wwhxHDuBC+JvaxiwMP4FItz3pGrAvRNxYacfjjOUwJ6VGzZmZa4X3lO1UcCQBqMml7
 9+Y9UO9uic8NE4rk9cZyiED9esslGxBWbKI4BGTsH1j5I9SvXVmx/IQ3udCiLKflK/OU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MunnddkiuxDa44z5VFhlH4foZ3OIsxxjgBGKwWbDa0k=; b=Z
 jAyvoN4m4IVH51TIwbbc+SlVqW+j8z6Eo7DqMqN0S/ZRC980/7wCTjExBca9BQJ0QSHFCGhoHMco6
 WVVAhHAA5HX0s4pogqfr4Hc7TuX7Vkzr2oQW6TCR8u/Ux9k5EI0Vv5E/KWolzZ5a1KeASpzx984i1
 PwgqAaXxEbeV3Xo0=;
Received: from sesbmg22.ericsson.net ([193.180.251.48])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hfnzY-00Dhs7-Jo
 for tipc-discussion@lists.sourceforge.net; Tue, 25 Jun 2019 16:08:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ericsson.com; s=mailgw201801;
 c=relaxed/relaxed; 
 q=dns/txt; i=@ericsson.com; t=1561478893; x=1564070893;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MunnddkiuxDa44z5VFhlH4foZ3OIsxxjgBGKwWbDa0k=;
 b=eP1DcMR3LnYTLouRcoE/2cNOC6sGG4DrBbdU9fyqc1OAR1VmXUTB+IH4wXaGYH2q
 BzXqUM0QAnsDpEzP3O3sKbi8Tr2y76ngcGqL44WxJrX8ciLSj6VNYvNiJDvVPzKs
 SdT8VjuJwG8cOk/AkxINBGMkTuZeO7m+0SlbHzEbHxE=;
X-AuditID: c1b4fb30-6ddff70000001814-5d-5d1246ed8529
Received: from ESESBMB503.ericsson.se (Unknown_Domain [153.88.183.116])
 by sesbmg22.ericsson.net (Symantec Mail Security) with SMTP id
 90.9A.06164.DE6421D5; Tue, 25 Jun 2019 18:08:13 +0200 (CEST)
Received: from ESESBMR506.ericsson.se (153.88.183.202) by
 ESESBMB503.ericsson.se (153.88.183.186) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Tue, 25 Jun 2019 18:08:13 +0200
Received: from ESESBMB505.ericsson.se (153.88.183.172) by
 ESESBMR506.ericsson.se (153.88.183.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Tue, 25 Jun 2019 18:08:13 +0200
Received: from tipsy.lab.linux.ericsson.se (153.88.183.153) by
 smtp.internal.ericsson.com (153.88.183.188) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 25 Jun 2019 18:08:12 +0200
From: Jon Maloy <jon.maloy@ericsson.com>
To: <davem@davemloft.net>, <netdev@vger.kernel.org>
Date: Tue, 25 Jun 2019 18:08:13 +0200
Message-ID: <1561478893-31371-1-git-send-email-jon.maloy@ericsson.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrBLMWRmVeSWpSXmKPExsUyM2J7ie5bN6FYg8tv5CxuNPQwW8w538Ji
 sWL3JFaLt69msVscWyBmseV8lsWV9rPsFo+vX2d24PDYsvImk8e7K2weuxd8ZvL4vEnOY/2W
 rUwBrFFcNimpOZllqUX6dglcGUfWrWIuOMhWsfrrWdYGxiWsXYycHBICJhJ7lt1j72Lk4hAS
 OMoo8eVrI5TzjVHiVscPNjjn2Y53zBDOBUaJrus9jCD9bAIaEi+ndYDZIgLGEq9WdjKBFDEL
 PAaadX8VG0hCWCBC4s+mXywgNouAqsSbntNAcQ4OXgE3iee/wiDukJM4f/wnM4gtJKAsMffD
 NCYQm1dAUOLkzCdgrcwCEhIHX7xgnsDIPwtJahaS1AJGplWMosWpxUm56UZGeqlFmcnFxfl5
 enmpJZsYgeF7cMtvgx2ML587HmIU4GBU4uG9bicUK8SaWFZcmXuIUYKDWUmEd2miQKwQb0pi
 ZVVqUX58UWlOavEhRmkOFiVx3vXe/2KEBNITS1KzU1MLUotgskwcnFINjFUrmba0h0e5hm6O
 7VzxLXKq2fsTS0SMS2dva7ScmxbRUav9esLcuVeT9ikEKyxaP7U3Spd91xf2l2elJl0+71OQ
 NEfITfy9YdUdC8ZQX44bUovezl3mmZhywsZ/zpeDJ27NO7zEfIbtzYk1LmzKWQblf9borlGU
 D46pc5vomXVzsu3MJfVnfymxFGckGmoxFxUnAgCkl9x1WwIAAA==
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hfnzY-00Dhs7-Jo
Subject: [tipc-discussion] [net-next 1/1] tipc: eliminate unnecessary skb
 expansion during retransmission
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

We increase the allocated headroom for the buffer copies to be
retransmitted. This eliminates the need for the lower stack levels
(UDP/IP/L2) to expand the headroom in order to add their own headers.

Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
---
 net/tipc/link.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index af50b53..aa79bf8 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1125,7 +1125,7 @@ static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_link *r,
 				continue;
 			TIPC_SKB_CB(skb)->nxt_retr = jiffies + TIPC_BC_RETR_LIM;
 		}
-		_skb = __pskb_copy(skb, MIN_H_SIZE, GFP_ATOMIC);
+		_skb = __pskb_copy(skb, LL_MAX_HEADER + MIN_H_SIZE, GFP_ATOMIC);
 		if (!_skb)
 			return 0;
 		hdr = buf_msg(_skb);
-- 
2.1.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
