Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 430E91E364B
	for <lists+tipc-discussion@lfdr.de>; Wed, 27 May 2020 05:12:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jdmUx-00074c-KQ; Wed, 27 May 2020 03:12:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jdmUv-00074M-RK
 for tipc-discussion@lists.sourceforge.net; Wed, 27 May 2020 03:12:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=69GTskgu8fcBsl3whjL5RgbJgCHSs7MmPlADUIsvgXM=; b=J1G+o13IKSPNJKiEEa6bBjCwHR
 8LjTXCaOBNGzAw8dg+cnS99DMdNpFFLVwNKYafSzNl2T7HLpxsNQpBIboDqz1qDExa3mITNxefYhS
 ITDg73AZclzO4pxTIvvnGjeaJKsIcNKmPeB00OUyXPb/Dh14gGR0qAupjwQC4El9jXRM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=69GTskgu8fcBsl3whjL5RgbJgCHSs7MmPlADUIsvgXM=; b=S
 yVuP0euIgJnNuD/hmTIe3KlJPbgL3gB+Hq2D+kuhhSH13IaXczGqbfs0cuc/A3HWrs9v6usJXALwP
 ckM87XjgmAymve2HqelOQeEiLzpC37Di/pGwAPq6FjineVtGdCF6BoPH+PHA8QqNf3uRk75OQ0viA
 EeV4O7L82rLN7Kok=;
Received: from mail-vi1eur05on2122.outbound.protection.outlook.com
 ([40.107.21.122] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jdmUl-008dx6-Lt
 for tipc-discussion@lists.sourceforge.net; Wed, 27 May 2020 03:12:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bgNL/ROYkrbfgMqi67d78K8QLZ7NMsqcjCGgw4YfnHD9hYyn6R3quSA0GCXQKfb3JXeZP+swvYyTjNo9a0FhA1t1i726bsRafHV0iiZMk3cIRbwYzjbf9z+P/w6Xro4zYplU54O0zsky/9E0xeVSNjfY15McaYN3eAaPz+PJgeVTgAkixLYPOxaA6AKu87xdIHw6et2t7p5YUu2JA/+KLxMYx3NfKw4SuqgnUwYRrYYNL84mixGNa9BdCuhmSeZ1L7Ns7Ec+DDl6m9E9hW+T0xg/4aqvQd3yoZYlquFR7bWGnheETonsR52UVt99t11KBi7p+Bbn76TB6ymI0+gLRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=69GTskgu8fcBsl3whjL5RgbJgCHSs7MmPlADUIsvgXM=;
 b=bVyjQRAB4n7GPw3+g8Qo+eXf5+L20DbVF3bLLRwf13HZEm6HyuJTaGk567IBU+oHxOUAvLqBdK8q7veV2bKrihk9yx+YRHFZM4TKA4uIBU8vfvRnGkxDyKMVBXtu6vG+NqQfTfWSKFasXkFIb/bJsJbXF3ldxLISc2fI1WUuYgGIJKnTuTEo46qXew88gBpYbQxGtRKW8Z0oc3qLkWPLEJhp9iMJeS9I82HdxRVi3AgKwiTLAz2J/5Ok2q4pj9qQkeXWLGiiaQqFjJFgudTjFgQMo6NVwtyIqYKwTZcwIgh8QAYNqSP5KB5uoOBphedKMUCXiwuDS6Pi8JoenalSKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=69GTskgu8fcBsl3whjL5RgbJgCHSs7MmPlADUIsvgXM=;
 b=h3ztrbmy7mzaxNtjBkIxnq5C05+G3PzLW5ce5y2N+blWR26ri05Zb9BFrvjOaD6RNC0LrMCsjijkVQaW+6f/dgE10OYG6U5fXBQycEctuq5xEibZAz6gdgBERdQ1CMHENlAbCVl0AzkSJiaw9yjCo7mmhzNmZBsQ8RmAzZUVfXg=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (52.133.18.156) by
 AM6PR0502MB4085.eurprd05.prod.outlook.com (52.133.29.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.27; Wed, 27 May 2020 03:12:36 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3045.018; Wed, 27 May 2020
 03:12:36 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Wed, 27 May 2020 10:12:30 +0700
Message-Id: <20200527031230.22806-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-ClientProxiedBy: AM4PR0202CA0018.eurprd02.prod.outlook.com
 (2603:10a6:200:89::28) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 AM4PR0202CA0018.eurprd02.prod.outlook.com (2603:10a6:200:89::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3045.17 via Frontend
 Transport; Wed, 27 May 2020 03:12:34 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f69acc67-474f-45de-5835-08d801ebce03
X-MS-TrafficTypeDiagnostic: AM6PR0502MB4085:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0502MB408543AD0A45F4EB7A720C08E2B10@AM6PR0502MB4085.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:635;
X-Forefront-PRVS: 04163EF38A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: taqA3BSa09i2zwA9E2KWQKjLj14z3B7zynhwzLACbhSpyX9CXqfNtjj3FsnuBGdjwl0trsSgam55GaDugGMAslBq640Rm5Sp06VGImahZ3rd8dJMKf+DH3Tkqu+Mw+4IzG+hMXPu3igIJCquViG6paheOocmdEcRDgHO1d7sr7C2YA3/qU6Qi9Qe6da6JWfRvCKebMnZXx4LpawOS32Ksvc64ynfFdPtT0eDvIhyTZIvdA9twk3kC0jr3YR1hWN/wYp/V2EmUKJamHBPHxkylOaPF4eA3KIGyvyJg+NY3hvC0o2yksTg3E2DhQRmdlETvsltVzsRrJo+NKCflImqBg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(39840400004)(136003)(376002)(346002)(1076003)(66476007)(66946007)(66556008)(316002)(107886003)(478600001)(55016002)(4326008)(86362001)(26005)(186003)(16526019)(15650500001)(103116003)(956004)(52116002)(36756003)(6666004)(5660300002)(8936002)(2906002)(7696005)(8676002)(83380400001)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: ELldpAHLWeiDXHoBd0jAooRAZkPIUVbhgKfNThAIcy5g7QwmDtlLy9sqxfMK9JOvM/QFDxjZnBA+KA72/cm1o2UqKAySUlmNAtK+TTOfCpC3uQgiXTQZ05JzDIRIO8dlMQfVrHjpHIVE+38ba6j3d61Rsf1ffA+Charmkn0djIMzpa6Wt/QWiwqwXM8DcptDJiJJgFBPwZpWbocxqdftAvWks9df6WxAz1Q3UYplLsUrBzbOqa1ho1gMOH8R5XHwtjD008ynQRtX0BGizkvE7qieHABXu27jwl5WrqHNsDnMkrmNg5ZTGtLvm9LxMCHe3WJqvDZj7aOIyFARvfNc7PvzBYC3+wB3SKdV5SdRUCbNYUxRtBO61RHijwplvV4OD3jUykl41a0LEV1H+7KcNO264tprg/0jr77nw1fpn3G4q/vD2bjhlRzL2Grwt96183Q/7pGokT3aLv3bmwqniVRjD8Ru4nVJSpycfNItZRQ=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: f69acc67-474f-45de-5835-08d801ebce03
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2020 03:12:36.1521 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Yz6YdZRDtYsHcIhprqL1OWhi/BlHmlHTTiO3QSYljYqeG7EEy9ULuagYAEzkRb6+Z8x6fQVftD/4q9zGjP1EFvUDekdvkP6cTQykNC4eAz4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB4085
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.122 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jdmUl-008dx6-Lt
Subject: [tipc-discussion] [net] tipc: fix incorrect fragment message
 statistics
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
Cc: tipc-dek@dektech.com.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Since commit c0bceb97db9e ("tipc: add smart nagle feature"), the buffer
queue to be transmitted may contain multiple skbs, which have been hold
by Nagle. If so, at the 'tipc_link_xmit()', accumulating the TX
fragmented or fragment messages' statistic based on the queue length is
no longer accurate.

This commit resolves the issue by explicitly checking whether the queue
contains a 'MSG_FRAGMENTER' message instead.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/link.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index ee3b8d0576b8..4c073ddc7466 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -992,7 +992,6 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
 	u16 ack = l->rcv_nxt - 1;
 	u16 seqno = l->snd_nxt;
-	int pkt_cnt = skb_queue_len(list);
 	int imp = msg_importance(hdr);
 	unsigned int mss = tipc_link_mss(l);
 	unsigned int cwin = l->window;
@@ -1017,9 +1016,9 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 		rc = link_schedule_user(l, hdr);
 	}
 
-	if (pkt_cnt > 1) {
+	if (msg_user(hdr) == MSG_FRAGMENTER) {
 		l->stats.sent_fragmented++;
-		l->stats.sent_fragments += pkt_cnt;
+		l->stats.sent_fragments += skb_queue_len(list);
 	}
 
 	/* Prepare each packet for sending, and add to relevant queue: */
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
