Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EFC28DA9C
	for <lists+tipc-discussion@lfdr.de>; Wed, 14 Oct 2020 09:42:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kSbQ1-00050f-QX; Wed, 14 Oct 2020 07:41:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kSbPw-00050U-OU
 for tipc-discussion@lists.sourceforge.net; Wed, 14 Oct 2020 07:41:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n7LFJx6TzHT2vX8mP8BP4O4ZRGcutto/mFQO2KRLpYs=; b=O39QJ8g0r9H2KupREuP29b3ZwZ
 V65N72fuxMkJpRc7XGDdsB22xrd0KSESzaPJ/RpHNTYmaFOmuSiZtUMfBagt0UIHMTdOb8/cLHV7q
 kTHXiaa/YULQ2N728NY8ULzUfu50oYlhOwJ4TQYdQCFQkIMbyE5SFXC81xiXgC3OgsQU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=n7LFJx6TzHT2vX8mP8BP4O4ZRGcutto/mFQO2KRLpYs=; b=N
 VrZX6LfRegsvJYIptIBkCNuADJL1KnCxbpM2vo6dbtyNdMwCEEEP64xxJn2JPPOzCVfBVnOyTLVL/
 LsvGKKPyNusG1/83AzJ4udY52zg+w9ppM79IUupnA2q0jxo9EbADhjbAmzWf++YKzM5RHd6xCt5JU
 n3UV4GhRTggDdABE=;
Received: from mail-am6eur05on2091.outbound.protection.outlook.com
 ([40.107.22.91] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kSbPi-009kVd-H6
 for tipc-discussion@lists.sourceforge.net; Wed, 14 Oct 2020 07:41:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G9CNzRfxa//YFAS0/sJJ1pE6dXBt3WytBBRiEDpYOHmBEjZutSEKzdmsBERmmKxA5Ct6sn/7oGtexAv8nkGQ7ER+o6z3Z2hOjIP6cMRyqv8+BqmCtw2DnffDSArkRQNww/dCr9qg5fC7Gn0PFXezxRp+qw5eLtGi1Fw+8tk6OBOY7K3U/3aw+IqgoIRFVcqXCP+6CJFV09zsyMxkSL9WnNft9VmZDZ2ciVxTfOe7XBJFlzg1e0XPTvOeGPhLvGnYnesDqWjSOirzQvxNSB836fd9tfFX9ufk61XmILBR/Fx6IhgrUh9NimVtTStt0iOOY6ktSGgHOsJKrH3AHxuKXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n7LFJx6TzHT2vX8mP8BP4O4ZRGcutto/mFQO2KRLpYs=;
 b=Qu1s+nWvY1hQyIcBOiPotj2bxLwl9Ur8x4+/o+ZiI6eDVrnVFuUOMNdCVTxJTHyA2f3X93yiVLuKGb5MQGzJfWpPECeohnLhVwpUzk6ylBTW17/WKeFok02yzofzY/cUU5ki4YFfx+jiXf6ZJlbTCPCJ1c4ngL2gFVEdMlgypxUqbEo95Ei/plWJYLl/OO/o9YxHqaEb/3lYcdR1TusbB3xx44QEhfNVSH1MgveN7GeFBl47OdIb6x9GfKipCuyUpavjXVev7rYur0PyM+biCJ953r2KfdaqhMY/AMmBwjVXY2CGplG5u+HjmfHpCHKRYe/z60xbo8opoORBEHhGSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n7LFJx6TzHT2vX8mP8BP4O4ZRGcutto/mFQO2KRLpYs=;
 b=cu/0zPJhZ16CN7NEIa8eQ5/9NlKudrMMlFTd0jxhAPqEu5MoOSYefKBU3E6e4ih5qXc7Z8bBXrovmzymdxzqzWzg35KIZrPFgUMM33fqvJeHZi0YRKphzw8C6l4//6xNSN2QBvWAAL0k5tS8on/RqmYRQSuQHezh8v52VE0WO5A=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR0501MB2496.eurprd05.prod.outlook.com (2603:10a6:800:69::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.20; Wed, 14 Oct
 2020 07:07:53 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4%6]) with mapi id 15.20.3455.031; Wed, 14 Oct 2020
 07:07:52 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Wed, 14 Oct 2020 14:07:39 +0700
Message-Id: <20201014070739.6550-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: SG2PR04CA0128.apcprd04.prod.outlook.com
 (2603:1096:3:16::12) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 SG2PR04CA0128.apcprd04.prod.outlook.com (2603:1096:3:16::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.20 via Frontend Transport; Wed, 14 Oct 2020 07:07:51 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5456412d-544a-4b5e-d16f-08d8700fddd7
X-MS-TrafficTypeDiagnostic: VI1PR0501MB2496:
X-Microsoft-Antispam-PRVS: <VI1PR0501MB2496FCDC3BD22B8D4E0C970AF1050@VI1PR0501MB2496.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1122;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: usoBo35YjEuS4/poPn136jdWELwUV+5ipndC/KgckFcMihoKErmh0s6XxmxPei0fKraeABJvnuhn63cKfvxMU8os7BRsyVqnFc875NtaGRM16ThulMhJlv/KokX2R6AFnXY+0lLf3e5uXNaRqz5tHla486VLY2kxs61WSiOeC6yGogj6VCVgL2Qnh/PRY9cdjRwAyRv5j79cER6Y9iZI3nyrIrHIOg+Q9ZrapmUcvkMw6476Y7dZVtYdb5iOSW7UVqLlAT/4IAgpJZBLLhEvelHL8taNU/C14c61KH0FX/xeADdLhjgT4Wy6reAmEnR1E5iXJwBwIbyMuvoVN2FQEA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(39840400004)(136003)(396003)(366004)(316002)(83380400001)(36756003)(52116002)(86362001)(1076003)(478600001)(7696005)(55016002)(2616005)(26005)(66476007)(66556008)(103116003)(6666004)(66946007)(186003)(956004)(16526019)(8676002)(5660300002)(8936002)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: 5xyZsOkwwcqdDzG4WIrNrVmiNAX8MMx1bjxGy5eXKYoyQ2zstT9LDlb89RSKCqWWhYz2SnnhYDwecIRUVlQBGKvaiOr+i2e6oocWqmJXhqajCFLkNP8AsmaGLpzFWbnYv7h4iy1VJVI8kTlctRUtPrlRMhEAj44G9ki6QuHS/cFtffPd4sFaTKsv6Mlxe67ia5BWN3L9qOdy0Smrv6oPzdus9xbMVlRtztiQIcIjXa7j4bQKJIz8F8Unoiu1N+y/RnoB5vBKaLFEz/5H33taSw2RbQjKVH3bsTb9aLuhh23RRs7dMzTKnOwtdhfw2RtWLCo3DBs3s2CF765AgNtyiiGKQIObovvhstW7xgFcOl6xevBQ9wYf3rxtWzUOlGx5RBt9+acNSj+hErhkPq4EaiXodm47DIiLFrDPVbzEUXU+mUzgn869nSi3Mq1gpPvGTT/0XFzlQPD9YBUABsJJgZSRBHOax7gZ4CgRBRQzqieoXzXCUtsWHsV6JBjVpdqWfWic8yXATpgwcbEqFYdgMzdid24Rr0o7akssUv+lDdOpcUODBBNRnmQfEkX4ex2FnVEfvCKtS9Rkkv9CN3KoLg8Rr0AaEqnYsS/xQsTe9g8kc+ipkY9IpqGJPN/MuelAKubPRTKkd8e2fYSLoc7LGA==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 5456412d-544a-4b5e-d16f-08d8700fddd7
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2020 07:07:52.6681 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qt9zTcnKcAKv9KabSPbfDUmJM9FqmKV6x2WDn0QVbzlyc4N4uUFJ0QbXw+FEWr25BueuOhl56RKft7e/3+L3wF1+AzbSPvrYncKRW0OhveI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0501MB2496
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.91 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kSbPi-009kVd-H6
Subject: [tipc-discussion] [next v2] tipc: fix incorrect setting window for
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
the algorithm to select window size from minimum window to the
configured maximum window for unicast link, and, besides we chose
to keep the window size for broadcast link unchanged and equal (i.e
fix window 50)

However, when setting maximum window variable via command, the window
variable was re-initialized to unexpect value (i.e 32).

We fix this by updating the fix window for broadcast as we stated.

Fixes: 16ad3f4022bb ("tipc: introduce variable window congestion control")
Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
---
 net/tipc/bcast.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
index c77fd13e2777..bc88f21ec0b2 100644
--- a/net/tipc/bcast.c
+++ b/net/tipc/bcast.c
@@ -589,7 +589,7 @@ static int tipc_bc_link_set_queue_limits(struct net *net, u32 max_win)
 	if (max_win > TIPC_MAX_LINK_WIN)
 		return -EINVAL;
 	tipc_bcast_lock(net);
-	tipc_link_set_queue_limits(l, BCLINK_WIN_MIN, max_win);
+	tipc_link_set_queue_limits(l, tipc_link_min_win(l), max_win);
 	tipc_bcast_unlock(net);
 	return 0;
 }
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
