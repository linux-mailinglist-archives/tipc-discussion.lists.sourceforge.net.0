Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E1B286CD8
	for <lists+tipc-discussion@lfdr.de>; Thu,  8 Oct 2020 04:37:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kQLoO-0006ha-Uk; Thu, 08 Oct 2020 02:37:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kQLoM-0006hO-FR
 for tipc-discussion@lists.sourceforge.net; Thu, 08 Oct 2020 02:37:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m3sUm7/M6YE8IGp63NRjBT9XHLSxCv3YByNTbME08b0=; b=ewu1jD9qotC+3QtZgOrajknGiz
 dsaORaPwhcuH39AzfcRVQlEHSMBaFPtggmEHxmVhv8YwBRBbN0cB0W17IqjClWDAu8NhXZEj30maW
 Bi3fcha+JVlsaVvwUNtmcxjOgRRKlo+p0swfKHc+99P1CTLug/Y5fVCe1Tg5/YlaiJaw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=m3sUm7/M6YE8IGp63NRjBT9XHLSxCv3YByNTbME08b0=; b=Z
 N/jr7D2qFrkph08K+X/1uo/dreUY8GEJXEYovwS4PGXnlpf06UOxp+z3ON0KoO3HnQK+pCIL9ARxI
 pWTRZM+LIIeA8dQYn1I38o07EUQcFgq9BM3/ftW2Zo8MeSeFEWxKCqn6U3JoOGSLWqTHTbyHhyGsk
 WyDervKOBuaTiPBw=;
Received: from mail-vi1eur05on2115.outbound.protection.outlook.com
 ([40.107.21.115] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQLo8-006gwj-0N
 for tipc-discussion@lists.sourceforge.net; Thu, 08 Oct 2020 02:37:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E/Nw6ev8/FYSE6ulP10BPWesojcDTcVq3bzrEARD00ZKHM1epcECVRLPFkuwe/W7NP2PFUd8uUu/TCA7rOSlU90ariQJKXnX33AKdtnNGIl5qccTim7zh/UXAdHHrxhvHljOEuYx7v8ru9WOwiJi9Qc4hQVXvGXiXhDZHyZauMk9Z13mYooXxKVei9YiSoDr+d6bciZI+JFHgKby6zAZBsZ0/UiexuOiOzGlXWwtQLwQxMbM0v3uJ+otmy/EbkVOUhr+1H9e824GTh/QWyQQvm349MfewSYbEw6KrcTgQr+Q8SZr+n477TZkq1pWbAdiv+7UPK2+pL2BX4vQD22bCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m3sUm7/M6YE8IGp63NRjBT9XHLSxCv3YByNTbME08b0=;
 b=OPG4bCVRx2zKIybI21OpSur2ERoznJDM67LEus3bbVo5vzeGVXChZ9yMaVk5Bu7WdxB+XXFNVp7Vhy0IN1IBTYs3dO3jrNq27mpbsbhrCOslXppXoATmOxY/RUrVqgO925lyu7ySwt3YZXbn8TFn2CMoNbRhFEhAU51dw+0oZGTqxjwJUNlRJS2fpLYHD2ucK9z2g69A/fybNzfEVevRK19/wY30sUvmXP0tiiMN2ATnuiMsW0hEPALVzSMmNnNL2OprRvthvI/sWigQLOvpbOEgO0Yhlxug+IBPGzISCV+3hhJ1a6+/XRxtRjdY/NDOiSEIXdb2x3n2sOgr93+DXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m3sUm7/M6YE8IGp63NRjBT9XHLSxCv3YByNTbME08b0=;
 b=YCHQYbk8BTiBlk7c24SiA3s7iRySAEFuLbC0TO5AroeMKGBexXNIJDPQOHxsrgzMDDoDpGMkwP526ivG3da6tUIO8zZU0YYWCN6TrdN2kkrjpW8XE4uQ8EQcZ4piDQvemc1TuRAopvONG7PaEA8VijVdtn8xhZvaRRtk8bSQqNM=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB5183.eurprd05.prod.outlook.com (2603:10a6:803:a9::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23; Thu, 8 Oct
 2020 02:22:32 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4%6]) with mapi id 15.20.3433.045; Thu, 8 Oct 2020
 02:22:32 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Thu,  8 Oct 2020 09:22:19 +0700
Message-Id: <20201008022219.8212-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: SG2PR02CA0037.apcprd02.prod.outlook.com
 (2603:1096:3:18::25) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 SG2PR02CA0037.apcprd02.prod.outlook.com (2603:1096:3:18::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.22 via Frontend Transport; Thu, 8 Oct 2020 02:22:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4e0fc059-e156-4a75-d393-08d86b3102f4
X-MS-TrafficTypeDiagnostic: VI1PR05MB5183:
X-Microsoft-Antispam-PRVS: <VI1PR05MB5183700988932C309D422F19F10B0@VI1PR05MB5183.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:107;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E60z2ibwIk7+SITL78FqaJfrq9YlcnEGOklqUy3pUiiD1M3xEgwRtxkNbgdx2gPa9/qBC9QyPYLcSgIWYVaxAkMw7USrXkz62YuxXa5FLrkA48ZnbLIxIT55ystpfqbNazL3hcugmQ6nc4iUiSeOrDypzXj/vgtoP5tyrS88YEE0XlJ2Pv7xIZFywz5Y2uuxGrQA3gxbuDolQrNoCMAq6q75iVkame/L1hnwSGI2GdQtchu9cnyH6hNBzHfIWWzCFY/K3AukI8yuL5REP3vdhIfjzlDjkYjJalZ6EVwDYxZY+eaLFCKFjqPd0sHjSVuD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(39830400003)(136003)(366004)(376002)(396003)(8676002)(103116003)(186003)(66476007)(52116002)(1076003)(16526019)(7696005)(478600001)(2906002)(956004)(2616005)(5660300002)(316002)(83380400001)(66946007)(66556008)(6666004)(8936002)(55016002)(26005)(36756003)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: HfqTfq4mB1p5XQvN20nvn3s4ZogokjF3ybhq/UkHi4LTzJL5BegK/dc1hA3Pm4R8WH3EXs9ZK5TTMWiQUKEu7Olub6Aj7aAVuqxSemR5Yr1F4q/B9eZnSOXCAQtlA1DIvXD3rM1BTUwGnLIJ1B8YivvfA0tX3QNBMHn1/n+mts4gby5DO6nuBni3xNrLtKroDdcDFojOJ7tNOr2LXRG1xPRXvnvhoHzA9zz3tnm5w+bkqalWZ2KZ90l+a3QhgOFDJ6+b1EtadyTvP9LGDNrOvXzYPh5UJzBsoJ8DRAXlKFycogSQUKc6JZudoYNdQX4jC5o9CCCo3jlVcxJ0ys5P0WNe1209Wm7JNmjiw6meBlC7mRU7yYeINJ2Xj1esGoPQ1oYYxasFS1+edH0KmU4I7fM6FR/SSCVhXH8PEzNSQ8wa53/jJVQ9KZ/XYRpAXkXvLJHoIKXhQcWoWipaWBUnptwv4ZaKCAJcxM+NsOgTLfgDNXgp8bwAfroDT2RCOrtsHtvDKqlUORFp2jdskWFXrJN4B09yyDbO4SXOaQlM46W4NHwQFPF4rG8tc5Uq0F9wqFzCnfVTd8UWAyEqy2iL/qSzaub2pVPv5QaP7NytceJuPwLo4vf7WJL+Hg5SY2qvZF2QtdWOhYSW9LD3Zqs7uQ==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e0fc059-e156-4a75-d393-08d86b3102f4
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2020 02:22:32.3861 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JGGpphD8exHqYkeD/YzTKIDmxUTcb8Q/VXO4SRPJHNAhyB281GG+yo0SrEWWfF7snKj6EnEZsVVByinfcE6FMkBLv2cNlkUGoc47EL/cfOM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5183
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.21.115 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.115 listed in wl.mailspike.net]
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
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kQLo8-006gwj-0N
Subject: [tipc-discussion] [net-next] tipc: introduce smooth change to
 replicast
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

In commit cad2929dc432 ("tipc: update a binding service via broadcast"),
We use broadcast to update a binding service for a large cluster.
However, if we try to publish a thousands of services at the
same time, we may to get "link overflow" happen because of queue limit
had reached.

We now introduce a smooth change to replicast if the broadcast link has
reach to the limit of queue.

Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
---
 net/tipc/link.c |  5 ++++-
 net/tipc/node.c | 12 ++++++++++--
 2 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 06b880da2a8e..ca908ead753a 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1022,7 +1022,10 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 	/* Allow oversubscription of one data msg per source at congestion */
 	if (unlikely(l->backlog[imp].len >= l->backlog[imp].limit)) {
 		if (imp == TIPC_SYSTEM_IMPORTANCE) {
-			pr_warn("%s<%s>, link overflow", link_rst_msg, l->name);
+			pr_warn_ratelimited("%s<%s>, link overflow",
+					    link_rst_msg, l->name);
+			if (link_is_bc_sndlink(l))
+				return -EOVERFLOW;
 			return -ENOBUFS;
 		}
 		rc = link_schedule_user(l, hdr);
diff --git a/net/tipc/node.c b/net/tipc/node.c
index d269ebe382e1..a37976610367 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -1750,15 +1750,23 @@ void tipc_node_broadcast(struct net *net, struct sk_buff *skb, int rc_dests)
 	struct tipc_node *n;
 	u16 dummy;
 	u32 dst;
+	int rc = 0;
 
 	/* Use broadcast if all nodes support it */
 	if (!rc_dests && tipc_bcast_get_mode(net) != BCLINK_MODE_RCAST) {
+		txskb = pskb_copy(skb, GFP_ATOMIC);
+		if (!txskb)
+			goto rcast;
 		__skb_queue_head_init(&xmitq);
-		__skb_queue_tail(&xmitq, skb);
-		tipc_bcast_xmit(net, &xmitq, &dummy);
+		__skb_queue_tail(&xmitq, txskb);
+		rc = tipc_bcast_xmit(net, &xmitq, &dummy);
+		if (rc == -EOVERFLOW)
+			goto rcast;
+		kfree_skb(skb);
 		return;
 	}
 
+rcast:
 	/* Otherwise use legacy replicast method */
 	rcu_read_lock();
 	list_for_each_entry_rcu(n, tipc_nodes(net), list) {
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
