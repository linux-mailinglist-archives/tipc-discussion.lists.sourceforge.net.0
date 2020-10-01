Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B826C27F793
	for <lists+tipc-discussion@lfdr.de>; Thu,  1 Oct 2020 03:44:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kNne5-0003AI-4K; Thu, 01 Oct 2020 01:44:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kNne3-0003A7-VK
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Oct 2020 01:44:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xa9FUXLUVuGIkDss2qbYHzZF46bVD7URBVlhQcLnFPM=; b=DeB6ZW17nAc05CnWkOoWSHybO/
 Vid/jioyKPjhjBtCXGgsnQpitm24vRQ2hvCyWsY9sOaY7GZO8TCwU025PFOcuOLi9nCbSRFQe/EDo
 pAl61UB1jqqCTQoPBzLXxDpPkO/9WLJ0ttl/08P4CJeHOI58GWK1Aim6EccdbuOC+yQw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Xa9FUXLUVuGIkDss2qbYHzZF46bVD7URBVlhQcLnFPM=; b=N
 c1/78qxifG4o1pKNIeE6tmzmkFLRbaqlIWqnhYw0natsQdksTiHOEVDisjQAVNAfK51jNb8pHaIkL
 PNwViQhwSLcTQUp5cge+zFNy2O35dJ9SomnCkzisjb1Wvs8J3eBlle6V8kSXd8ag15KuRi4p8Kqp5
 Fh1tY7BhuH7Hc+JM=;
Received: from mail-eopbgr70129.outbound.protection.outlook.com
 ([40.107.7.129] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kNndt-00CFK2-HQ
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Oct 2020 01:44:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AJ3/BAr5xdijIXH0vf0+57m1/EnNDBgmusbJ20DrHa5DaHKpfTKpbrzLYZDPnBLqMHCox7KdMCodGARgFgRrOP8s1wiydWO7ZnBt0w9ueLQLbLd2cDMoKJIyKThMQsQ9Z+P3qv3A7kl5tCJTJR0tqeJmQR8q0VJnK5Nnq3mPenOITiHcn/mQiT0I0spcqd30ysYnmhsSgFUNhM8Ms+/Lbo8ICQqLBFZHY7yFChsKMSzXJ5eLokdolvlu10syqHbcP0rvRmIu5jUmf5t1b2Bj90WWHgJh13J4Vw68+gX6Jl1TDXm5TJq9Am6E5IcHUq/Scv94wkKpA3gxPLzTOT2zTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xa9FUXLUVuGIkDss2qbYHzZF46bVD7URBVlhQcLnFPM=;
 b=dE752aA8vlBB7xncJUoQpOIUxtjeLOag7QGMF9W6YvQecVGQavf16D1C2h8hhL+ZKvB/dIIUqPEeCIRBSXxNpQeBkWZe4xdenpbS7kswVfsBPz6XPjNZ/42ZAEINuk6b1AKjpexvc9hTMY5xY6QpcaObbYTgnKtg6PgdTl7ykpiLdFdO80ivnGvbcFF6EllpvetUxvo8bxUcUYLcn0XcZi4dU7AsugsfUdDR5B/lEIJcvjBbU1VfFplQurJQSBUe2dHkhRU2y3katQfRcWkv1o6pCpxcHPkiR58OOMP9hVR3izH+qY2izvTGAn5MhZFZivPG3cVPcI8f2sbpWnqUNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xa9FUXLUVuGIkDss2qbYHzZF46bVD7URBVlhQcLnFPM=;
 b=k1Il4w7BeDDm9BNjOjNHTbQYFYcA52wBkRA4OdLi/YhPG+OzcYsZwT+rXFh5cxnoNCbcw787Yuo5A8tsh0vF4f9+RbdJTtqVnjnS0suejj0ps0zPCV1mSivFSvelzvw6NafhpCWLUWom1XqS3VeLDes3GALNnUAZUUxai63sOx8=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VE1PR05MB7232.eurprd05.prod.outlook.com (2603:10a6:800:1a6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.32; Thu, 1 Oct
 2020 01:44:06 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4%6]) with mapi id 15.20.3412.029; Thu, 1 Oct 2020
 01:44:06 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Thu,  1 Oct 2020 08:43:51 +0700
Message-Id: <20201001014351.8169-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SG2PR02CA0089.apcprd02.prod.outlook.com
 (2603:1096:4:90::29) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR02CA0089.apcprd02.prod.outlook.com (2603:1096:4:90::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3433.36 via Frontend Transport; Thu, 1 Oct 2020 01:44:04 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9ed83627-3a36-4ce7-1c2d-08d865ab7b4d
X-MS-TrafficTypeDiagnostic: VE1PR05MB7232:
X-Microsoft-Antispam-PRVS: <VE1PR05MB72321F30708D9661928D7639F1300@VE1PR05MB7232.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1122;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VFD9b8QsaBvVt/TrAysoeGi4p6aZg+Qgb4szyanohlJ4rX+jNAlK+3ZFoN4uWX0vYaUT/9/COvN/zy108on+WUcTmI5F0lZK1NsYoyw82Wlr+PvghJ0gesVTfjOAbiK5WEedFiYM8rcYMsAxfYIoDizzcf+/RjYMomnvFEVszeRDbJ9erSV4wr5RFV04+fk37FjqOB/XErIaQ3uVTyf6jj9pi9im8/oKRGzghusbaNojZq/n0LfoMpVi/r3HFj1aFvqAbJx65khYDfAebi/6YdB7mwsD9tnFTagxiSq+7Aw/ZoE8legtCriBQiYeXH3mYV6Tgu/uTx5mC9k0y9hB+A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(39840400004)(136003)(376002)(396003)(478600001)(86362001)(16526019)(52116002)(1076003)(26005)(7696005)(66946007)(956004)(316002)(66476007)(186003)(83380400001)(2616005)(8676002)(66556008)(8936002)(36756003)(6666004)(5660300002)(103116003)(2906002)(55016002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: C0cZg2Izzg1UNiTgmfJWXPkSVf8wKhrcJyP2sr5JTkuoUOYlfpAGZrENML93YyujyH/ym4cI4r2mo93pMfAI+0SG7zVDEfXUciFEnnNQ5mZKB8oG6ivBRTH/IR9aU5lPpzk5aPBvyMGYOXPLRvibyqkbMiyeeOzOiDQLgL2ocn+fxZ0yJlaxP0a1SKf0Pf4mitn8u6THWLTUR3fM/zU41sjrj+a0eBkc/qUTOABMMlvTRFkAUPMe/H2iUAeAGqsdOwPbs/LrpVTkQnbI84B8jlG7Sb4B0A8hpn9un2wRHnmPTq4I59sUq7YoyV9LqNwrXSC9d1+T/nYGZLQh0/9NKQWnKB3+xJ/yGxzFe5hvlqbeJHTfog3bsQjB4vM5/C2z7NBSrB63ZXEwHWgao6saXY427qPZyVfVQemrVx6V0eXkOIKoeQJi5OEvxy+2s6og3vNeFi6vCrouUmgt9KRkZyxc/gp2N2yqtLi4h0NfqMDHIMV2X0i2Q6wMw9OW11pa8JnOePrHZ5gfPivi5uuoFw0rjjVMtehl4cLZWFaeNit/tMDmxf02JV0duUZt2wne94RFQqW/3yRXrmSkzzo9lpaC8WRQxRxB1vsou9p8tpqzZeUbV1FUIB6fKeox501h1HnbPFV0KCgqZv5gpO5GgA==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ed83627-3a36-4ce7-1c2d-08d865ab7b4d
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2020 01:44:05.9936 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d66g58eilTGnMDUrWOV4OKqhI+Ek5wE34p8Y/DK5EVIYnn6roBcK1z6aNsuDfD9/CHz/2VtfjZv8tOMAXQqVFLxju3vYX+3EPTOiqMritGw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR05MB7232
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.129 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.7.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kNndt-00CFK2-HQ
Subject: [tipc-discussion] [net] tipc: fix incorrect setting window for
 bcast link
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

In commit 16ad3f4022bb
("tipc: introduce variable window congestion control"), we applied
the Reno algorithm to select window size from minimum window to the
configured maximum window for unicast link.

However, when setting window variable we do not specific to unicast link.
This lead to the window for broadcast link had effect as unexpect value
(i.e the window size is constantly 32).

We fix this by updating the window for broadcast as its configuration.

Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
---
 net/tipc/bcast.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
index 940d176e0e87..abac9443b4d9 100644
--- a/net/tipc/bcast.c
+++ b/net/tipc/bcast.c
@@ -585,7 +585,7 @@ static int tipc_bc_link_set_queue_limits(struct net *net, u32 max_win)
 	if (max_win > TIPC_MAX_LINK_WIN)
 		return -EINVAL;
 	tipc_bcast_lock(net);
-	tipc_link_set_queue_limits(l, BCLINK_WIN_MIN, max_win);
+	tipc_link_set_queue_limits(l, max_win, max_win);
 	tipc_bcast_unlock(net);
 	return 0;
 }
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
