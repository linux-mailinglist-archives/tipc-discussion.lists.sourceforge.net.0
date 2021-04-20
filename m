Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAFD36519B
	for <lists+tipc-discussion@lfdr.de>; Tue, 20 Apr 2021 06:48:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lYiJT-0005hM-41; Tue, 20 Apr 2021 04:48:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1lYiJR-0005h5-Fk
 for tipc-discussion@lists.sourceforge.net; Tue, 20 Apr 2021 04:48:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RdMpfz6KYQNW51WurN838G9xKK71u+Feocpg/wJupe8=; b=hnyEtzqeO1pp+zqKVrfDBJstRO
 gOpYsu59iOwXWf8fRc8wNnCHP3ExuiCyxyj0MTt6tDhkEO7mhuDgQR04Bb9OYcZ70NlbgaufNfkDz
 PwHyZ16j9vK0NBlJX1e5t+hPeWiAQ5cHyMTlyl/4rt8lSS4fcztRGs9+rA2SLj1p/i0o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RdMpfz6KYQNW51WurN838G9xKK71u+Feocpg/wJupe8=; b=J
 VVyrkjE047HZn2IiZ852xceLHrxlu2mobwQS9OWhlT2ikFZqXsn3ACCcfpYpbTN419y5+1EIKk7M5
 3AKYz00tMezWHluDvpn9gf6zqVaAScN/Mqxk5MrbeRcRbOKSZenIocCl/4UGrru3g329Inaui9Kif
 1zx9TuTOYv6Ry6Aw=;
Received: from mail-eopbgr70128.outbound.protection.outlook.com
 ([40.107.7.128] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lYiJI-0001Bs-EO
 for tipc-discussion@lists.sourceforge.net; Tue, 20 Apr 2021 04:48:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W5/Ek6eEZKoe98JYOgIJtBwxlm/b9QkxUeMH3z22yAeODrWhrNFfIwRHwNo/hprJcmwixiVPY5tDx3a7xi6X54SaClDzQl5GbbQlM78t8s+uBXHi+497eDZuzyM2OGUf0YELu52uPHfPr3KlV1IkLh9uzfvufFn8fb75zxRaqcZYo2bOl9ORAaeTtIsFpx8JpX90MuPzUUgDoUrbTeWbd3FPEd0JWUNdJp9ongdr8cbFOWbncT/+pYbn/lvNC2Qz9SK+SwX5/bD6KZA3eymPhO9HfW2QvH10ypwFy9rK2q4zqJ6Pn6x5XwOq+n0XUOd0qY6+KOz7S7Qi1yRJFAMv6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RdMpfz6KYQNW51WurN838G9xKK71u+Feocpg/wJupe8=;
 b=kvW7Lug1HPIsk89OuuftQMUQfdT7yecQnM3bJNXK73tgaZ4Bnldw3ylG54VVPYMH73Kdnkrm+4VNNdkFjWP6VFDbOmpjRCMuS7rh+qH8ai4RU6tHMRZiCN1Jbd1TIVn9X6OylgSB45XStl2CTmusCentAvN+09BkHyDU221PPymw7+loAz8h/wt+c0xYLYWqTLn7fFX0292l6wCpCF49+hPt4Uf55uFV6AbaE0O840oAqLSAK1JRUHXSPd3fo9VGzYUlNSdy76BDe4MRG5ur6WZYLcjUUn5JQ3GCfLZDv+gWbaC9ZLoCrW645O+yR1WJ4X83k6EEG2r+0gGhhkgL+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RdMpfz6KYQNW51WurN838G9xKK71u+Feocpg/wJupe8=;
 b=Ge08IQoWxe1QMlipX855W+stIz5NtQX+6IcTkMv71V5KsCuf4ZodfwfOQCzNBVXVbSRHofD8F5jcpe9+V782GuuFN/xVnd8RXuSiSVcDrD8R5all8ZVBDaIC+m49I9UN2eSJZY5FE6ySdBwXNgEvA6xfoCZiRNil9wFEdqFCrvU=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB5582.eurprd05.prod.outlook.com (2603:10a6:803:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.18; Tue, 20 Apr
 2021 04:48:19 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3%6]) with mapi id 15.20.4020.024; Tue, 20 Apr 2021
 04:48:19 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com, tung.q.nguyen@dektech.com.au
Date: Tue, 20 Apr 2021 11:48:03 +0700
Message-Id: <20210420044803.8307-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-ClientProxiedBy: SG2PR01CA0134.apcprd01.prod.exchangelabs.com
 (2603:1096:4:8f::14) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR01CA0134.apcprd01.prod.exchangelabs.com (2603:1096:4:8f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16 via Frontend
 Transport; Tue, 20 Apr 2021 04:48:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2aad67f1-1cbf-40a4-a85f-08d903b784af
X-MS-TrafficTypeDiagnostic: VI1PR05MB5582:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB5582F621DE799691BD78B063F1489@VI1PR05MB5582.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:239;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gYxMJOHADveNM+TPJ2LU2zwzLM9cBnL1xz/kwsNucN4hkdvNMNxsle+KnMAiF+uXyKrl8NjZREFtIj0YuUJ/echammFslXG8m03hoF6ch2YyaZ9jq2fJtgbzmXmBli6jmK+VTS6FfaeNPWLNAZvIBzDIuinW7TYx6ZH/GY9oBz9hXWtrEEOheiyr1FcF6x16+by9/vZhfkDca2nwraHn2AypKJTy0PEmP2XRzCPHiFrBfWroy60OoTeG1uI0S8sYnV6mwQ27+Lr9Xkb+MeLVx9GGFnG1ncliXSwbus0kQm5FM19XAG0lhazjtvxej9z1ES0l51pQzxXKmhX6taGX1SKPDNb+9XgrbScRaMTk37aOXzMR2NrcmZoUU7dfeaqGUW8cI23WMbmgGAfnkQpQUAJxpJtTS7bx95RMKvThaNfJXwLFkwgByjniCvhNH+TQzJCoFb9lT9ZbqYfHcyzrSV0qE6EkszycyJqn9L8x3L7wEnzhl93/ePl3fB/4UtFtGr782NKMmfH9vu3n+/KxLDYG0xtJKnEo1hufNrw8xE5ETNrDBD6RaTGPBm4FJX12xPUnNi0IV/0B2XmXz+aiCTbx8DtphEWDsJP9zJZWw6wGN8Y1y8uonTmtgysj8S976uXDOB0Dm0HvofQnntbcrg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(39830400003)(366004)(396003)(136003)(52116002)(55016002)(7696005)(103116003)(66556008)(478600001)(8676002)(5660300002)(8936002)(86362001)(2906002)(36756003)(83380400001)(6636002)(4744005)(38350700002)(186003)(66476007)(16526019)(2616005)(38100700002)(6666004)(1076003)(316002)(26005)(956004)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?YjVU8RbPMYVkTpM/ZilVv5uWGqrsNed4Ya93d7NrCveYKXqGpE7lVLnlApWg?=
 =?us-ascii?Q?Xc+VVE2ql1ce8R2976xJS9OMvUNMx7y0daBbYqE1S/daLre92t0kwfzxD6DD?=
 =?us-ascii?Q?yLZhEVwNMvBwAVRHBavI11XuUdheTyCXpRXScv46R6gDt1pyuLQc0mEDGH6X?=
 =?us-ascii?Q?TtT/BXfaA8vkNuRzNdDckIKHXA0oigyVEOfPzK7peNkcqDkB+GBEGR8dO2E9?=
 =?us-ascii?Q?n5rsKwQzheb9p4xjtSbt6kCU+zjSOq5+HLr8lKD5XlJEP/nrc1KxJpmQE6H8?=
 =?us-ascii?Q?5oF7O1rsPyx09Sp6S66FwAjqpvEtlZ9IlA8I75fAzQ11Q29mwbzYwdqxPaP4?=
 =?us-ascii?Q?Lw/Pn8OxGS8R4cYJoUeweAifFhpypT47/Xo7TgjPCWOxkcV5pG6DfBaIj8vA?=
 =?us-ascii?Q?f1FqjrE6yIJx9k+oy9fi1orhYS0HlK+QTN1rDUuNArt7SGtM1rgOJKkm3c1R?=
 =?us-ascii?Q?ClqFJ9aWbh8080LIiMZ+6zzngOQ1rXc3xn+RR8uPNRBOacBf96TX91AQRMRb?=
 =?us-ascii?Q?aW8a36BXS84p/NqJy4jJdPvn1Ncn0X3HOHFp13Eh6XbZzzN1ZqhV9qhj8+VF?=
 =?us-ascii?Q?ZZM0SoXobPEa31nmLn83LpOwTOlxeU2AJTRQ0EEpnWE8RjTp3QU4IvV/GUL7?=
 =?us-ascii?Q?MNJHE/W6nhn3Tk9PtarmGcHKNpOAi2/QeA18ZlHUnM7MYZVCKGAijtQjJuTJ?=
 =?us-ascii?Q?EL6NF9jVWasc9AB7gbkou5O526afwI1WV6srYFpO72D3BjcAooZf6dgV2+XD?=
 =?us-ascii?Q?NCOk/CdHqPlEwSh5WAU+duylseorRhMDovqRoOTBeW2lKxJsNGaQg3QV5Lwg?=
 =?us-ascii?Q?JfsvZcdFwAJcnaCyqVZadqmIJanrOvz522IY9O44Sg9LbUgmowhwl7AHO1/e?=
 =?us-ascii?Q?DYx/GbgO9pGXwPdOj54jshA9seDjEA8bQpdGW0TtS80M2HHH4D7ZYoUv/NFg?=
 =?us-ascii?Q?228XjcgqR+isEgRTM1m/WRa7GmQR0gXvTxxLfsN9nPZWaJhKR7DHD4T16jmP?=
 =?us-ascii?Q?SpluBQ5ORRlaCb9lsBg4QE/DSTKFs5HwDXhDsRJR1soXUi2qiDe72W/fFmtw?=
 =?us-ascii?Q?6ns11V/CFmPcCM+OP+1oTGClY7kP5JopbPXKbUFnOMkAliEWC1kwUjZkA8X1?=
 =?us-ascii?Q?0Syfbuv0rigQ8fe1xYJs0NOhzYyFOhqoOj4/Y3yaLIjx0wi71OVedJE+rByW?=
 =?us-ascii?Q?Rk6bv49O+N7UN9JcalQMW5Syu6ujVoWs//Lgmbl2bqj4dAEDAnlfU6LYu7+Y?=
 =?us-ascii?Q?+/ky+UcItazi38C/O8f8k0Epd76aT9+Y1meUtaKEMH+y1YTO15npmHwGZdiL?=
 =?us-ascii?Q?lgNLY2/gAAdygKMN/KlnzYSY?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 2aad67f1-1cbf-40a4-a85f-08d903b784af
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2021 04:48:19.2966 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zHd/li78pPRT4XYg5n0qdKtS1CWqib7+fFHBKby6EOhO1cXcky2y0WfycSyQIKJqlSPrvzhI+K30PGwR/dsyMN/Jl7zPpxKPFznQ7TZfx0k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5582
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.7.128 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.128 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lYiJI-0001Bs-EO
Subject: [tipc-discussion] [net v2] Revert "net:tipc: Fix a double free in
 tipc_sk_mcast_rcv"
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

This reverts commit 6bf24dc0cc0cc43b29ba344b66d78590e687e046.
Above fix is not correct and caused memory leak issue.

Acked-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/socket.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 58935cd0d068..53af72824c9c 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1262,7 +1262,10 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 		spin_lock_bh(&inputq->lock);
 		if (skb_peek(arrvq) == skb) {
 			skb_queue_splice_tail_init(&tmpq, inputq);
-			__skb_dequeue(arrvq);
+			/* Decrease the skb's refcnt as increasing in the
+			 * function tipc_skb_peek
+			 */
+			kfree_skb(__skb_dequeue(arrvq));
 		}
 		spin_unlock_bh(&inputq->lock);
 		__skb_queue_purge(&tmpq);
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
