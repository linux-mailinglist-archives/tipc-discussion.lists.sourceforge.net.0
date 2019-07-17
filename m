Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 915D86C2BE
	for <lists+tipc-discussion@lfdr.de>; Wed, 17 Jul 2019 23:44:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hnriS-0005sH-NY; Wed, 17 Jul 2019 21:44:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hnriR-0005rL-Cf
 for tipc-discussion@lists.sourceforge.net; Wed, 17 Jul 2019 21:43:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BwYt+dlodI1U0/rzDOvY/lALAouaKw69oKK3SSiOf48=; b=eA5u5Hq4mphgACz9zyxFmemIj3
 0Okr2ZuS7Lp0JaODi/91Yb931qZLkBPwQXDF0r7P2laDJgsDyEuIT9OPJlBEc3hEvd5UtAonlijKI
 GAnYaPqAJvTjHkQdPUJfvHxFM1ctYUX9xADVIKa78fDqXm19JLYApaa6Z5HpX1a2sspc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BwYt+dlodI1U0/rzDOvY/lALAouaKw69oKK3SSiOf48=; b=B
 ghMKhyKLBwjLZx4ttJyVVLBMGBWtw22m8LxgsgwzpsO+yudcP5Q7/5Ap1A3Zhzmq81Wha4Fvt35JY
 M0aezXAeTd39YPAakrkokDoctmqD0Hpb5e/xMVNulHqLnDNs6Xlwl6r7n41TkRjRNIRM6FHRpQpec
 Kl75LABVKrS40IYE=;
Received: from sessmg23.ericsson.net ([193.180.251.45])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hnriN-004lBb-8b
 for tipc-discussion@lists.sourceforge.net; Wed, 17 Jul 2019 21:43:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ericsson.com; s=mailgw201801;
 c=relaxed/relaxed; 
 q=dns/txt; i=@ericsson.com; t=1563399824; x=1565991824;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BwYt+dlodI1U0/rzDOvY/lALAouaKw69oKK3SSiOf48=;
 b=Lztxaj0Z40475oxIiJCwG/+ejPW7LLGKLr60JcLYSW9NuNkKRZQm4ixVeYKMUo7i
 EfyCEWAylJi+sawFpSxP22uNCFL2DwuE59r09IQrvGRJx17bSmrTQ9yqjc8Y+8+M
 GmYUQoU4TpHqBOujp6RXZvmYiB7uSi2ydhaZJQQnq88=;
X-AuditID: c1b4fb2d-195ff70000001a6d-2e-5d2f96901db6
Received: from ESESBMB501.ericsson.se (Unknown_Domain [153.88.183.114])
 by sessmg23.ericsson.net (Symantec Mail Security) with SMTP id
 4B.CD.06765.0969F2D5; Wed, 17 Jul 2019 23:43:44 +0200 (CEST)
Received: from ESESSMR502.ericsson.se (153.88.183.110) by
 ESESBMB501.ericsson.se (153.88.183.114) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Wed, 17 Jul 2019 23:43:44 +0200
Received: from ESESBMB502.ericsson.se (153.88.183.169) by
 ESESSMR502.ericsson.se (153.88.183.110) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Wed, 17 Jul 2019 23:43:44 +0200
Received: from tipsy.lab.linux.ericsson.se (153.88.183.153) by
 smtp.internal.ericsson.com (153.88.183.185) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 17 Jul 2019 23:43:44 +0200
From: Jon Maloy <jon.maloy@ericsson.com>
To: <davem@davemloft.net>, <netdev@vger.kernel.org>
Date: Wed, 17 Jul 2019 23:43:44 +0200
Message-ID: <1563399824-4462-1-git-send-email-jon.maloy@ericsson.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGLMWRmVeSWpSXmKPExsUyM2J7ke6EafqxBhNv6VjcaOhhtphzvoXF
 YsXuSawWb1/NYrc4tkDMYsv5LIsr7WfZLR5fv87swOGxZeVNJo93V9g8di/4zOTxeZOcx/ot
 W5kCWKO4bFJSczLLUov07RK4MpbtecVW0MlRcWPPT8YGxitsXYwcHBICJhJtpyS6GLk4hASO
 Mkp8nPUUKM4J5HxjlHi7mREiAWRv7O1ignAuMErc6rnNBFLFJqAh8XJaByOILSJgLPFqZSdY
 EbPAY0aJL/dXgY0SFvCSeDhvJ5jNIqAq8XXNUhaQ1bwCrhJTl7qChCUE5CTOH//JDLFZWWLu
 h2lg83kFBCVOznzCAmIzC0hIHHzxgnkCI/8sJKlZSFILGJlWMYoWpxYX56YbGeulFmUmFxfn
 5+nlpZZsYgSG7sEtv3V3MK5+7XiIUYCDUYmH9+lW8Vgh1sSy4srcQ4wSHMxKIryS50RihXhT
 EiurUovy44tKc1KLDzFKc7AoifOu9/4XIySQnliSmp2aWpBaBJNl4uCUamC05+tTDWhyeskQ
 vqZV+4C4GtvFjyHvlNhvdD95sCDFvabwF6+sK2PWmS/i7Jdbjdt5VyoINUtK9uqFxZsXskYe
 udC1nUktajL3FbcfDe+adMWmNru0b2QOXSTI1r5vw7lbmVHz1TL/nuiYkta7Y0Zwa4bG3H8n
 G6/MZNDv+inqcT1ee9HbLUosxRmJhlrMRcWJABbwhcpZAgAA
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
X-Headers-End: 1hnriN-004lBb-8b
Subject: [tipc-discussion] [net 1/1] tipc: initialize 'validated' field of
 received packets
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

The tipc_msg_validate() function leaves a boolean flag 'validated' in
the validated buffer's control block, to avoid performing this action
more than once. However, at reception of new packets, the position of
this field may already have been set by lower layer protocols, so
that the packet is erroneously perceived as already validated by TIPC.

We fix this by initializing the said field to 'false' before performing
the initial validation.

Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
---
 net/tipc/node.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/tipc/node.c b/net/tipc/node.c
index 324a1f9..3a5be1d 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -1807,6 +1807,7 @@ void tipc_rcv(struct net *net, struct sk_buff *skb, struct tipc_bearer *b)
 	__skb_queue_head_init(&xmitq);
 
 	/* Ensure message is well-formed before touching the header */
+	TIPC_SKB_CB(skb)->validated = false;
 	if (unlikely(!tipc_msg_validate(&skb)))
 		goto discard;
 	hdr = buf_msg(skb);
-- 
2.1.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
