Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 570DB2C5F88
	for <lists+tipc-discussion@lfdr.de>; Fri, 27 Nov 2020 06:17:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kiW8a-0001m5-8K; Fri, 27 Nov 2020 05:17:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kiW8W-0001lg-Hd
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Nov 2020 05:17:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f6HwaJEWDhsqzOsI0WGINRbsNW9m9tK3C9mTpM96YU0=; b=c4oj5sSipKwe89iCMUJO12x8l3
 4Ja4og9PCHKU/vTNVp4XsAsuQJvH3odobsv8pNrJkZAyttQxgLEMJIbQWPDlp1JCuJOvB5x8Q/Vwy
 uujkAsLqBgchu8yj5UlTip1TpVTFmWdPFG1uOkL9M5ogoQJGignzbfiyPhqwvZYEMPSw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=f6HwaJEWDhsqzOsI0WGINRbsNW9m9tK3C9mTpM96YU0=; b=k
 FeHF7WOOZtORLdKqtwg6qqBUiNlza+sPI1JDbIbXIVsR26qiQs4mhlmWRHyfM3Ujl3EHjSLWdgdrw
 mDQn2vOGX9XHGu39PIj7cuhtxw3BBRQMGbg2t6XgBvWlkPDareEAoSZfuWnPrF87Wfjw+A6QeFdTJ
 Pctk5WmmGCYayd9g=;
Received: from mail-eopbgr80108.outbound.protection.outlook.com
 ([40.107.8.108] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kiW8F-000eLN-LV
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Nov 2020 05:17:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ucpz968QQdcxDhyVoXNdu37BxPXjsdJg4HXCZDWTDgf/IBjcPKK9UsDnVc8SZeiQixTI0bUJJzVfRW8rhayF+iDF+ZoiTHA1RClWQDChNQyfAHNkqruNAq0kVYXLuAEIu132zV23u+s1blNxbkw6q3sGRYZeObiluY7z+WDBR6Ehvzb9dIQQT4/HVI7ByiXzq6ILEznTWkElDmf+NQJpH5sReSOyKMqRGsEtkVITzmAeG52bodfkCkV0+DBkJpELLwIG/uyNWjAuZN0Icqxu1PVp6hc0/XLnKDokTqfNM6AGu+qa4Zr2GnEh9l3iszGc+kgtdNEz4lMwRs9267QRMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f6HwaJEWDhsqzOsI0WGINRbsNW9m9tK3C9mTpM96YU0=;
 b=EkbWpn48LhlF+uQ6kztAzZsixd3VWuHXVRCK8G57g43glikmq2RvPya1gzqhXMCHTjOO76Vves6+olFYOAK3LGACW04nBMf9sWaJhFFckd3+4/h5ZSnGz8Lpr4747jjkl58vb84UJB9zdmIdn1zIp13JhF/y1LmjKpMyXLSOiDrz+mohOf/bcgtKwNFpjAnFdpH5EqYoyjqqILGbC61DtqDWf1wZi3AawW/krdwSflUs5ry/wJ2uZL0wOtXXPNdzrkrGaoZCfz/BhFBCn6omURpkpy9uDPEPuXpqTXB6MmIXq5r123Y66GZnFdgMp3hUvmaxmAE5d6RGe9KnWbPc9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f6HwaJEWDhsqzOsI0WGINRbsNW9m9tK3C9mTpM96YU0=;
 b=Su4bRqG7fpEJX+yHNM8UW42EZBFQomuvjYbfpZbNNvTYBhJwTRfh46AMUKSwPS1uUFvuXAqgut9ziiuqgycdT4ZuUOoi+geQ2e+8//AQFbaVzzXN3ZyqsTOEz39Qnm7Ttto3aQ1lGRTb3g+wWi3oZ5eEDHfz4tJVtKc0/56T7N4=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB3232.eurprd05.prod.outlook.com (2603:10a6:802:1c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.25; Fri, 27 Nov
 2020 05:01:26 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883%6]) with mapi id 15.20.3611.024; Fri, 27 Nov 2020
 05:01:25 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Fri, 27 Nov 2020 12:01:11 +0700
Message-Id: <20201127050111.4595-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-ClientProxiedBy: SG2PR04CA0166.apcprd04.prod.outlook.com (2603:1096:4::28)
 To VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR04CA0166.apcprd04.prod.outlook.com (2603:1096:4::28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3611.20 via Frontend Transport; Fri, 27 Nov 2020 05:01:24 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2924db20-3f85-4627-e7e5-08d892917de7
X-MS-TrafficTypeDiagnostic: VI1PR05MB3232:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB3232B44752EBF92A7F57B2E8F1F80@VI1PR05MB3232.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:972;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XqtttFjzoKQc4ofnBsXSvJ+RlhnEDZuKSP8JcpRKGPpMN+eiuxHBBvqNfJVjp+VDvM2HtPBQeC7H+e2H89nPgR78svchy/0jcmbYeE2RRyGa0j2+XTQR6+e89sw4mQIXb8OTqqSyT0TBjmVlQT3gXT4H+b4wkGxHwLyykOb5iYRndMWGV4URdvw1t1gYm3w2bbCD795dynjZXYqn9DL92tcIMqke8UGP7gA32BCaQwwAIPwy7Dx/T5gPVr+2mdAWpC9w0RJPz4gnaPd3jiCszpUpF+HmlEQmdYlPl4bSZ5uVB5+gdQOT/cDd+uOmO1P+ffBOLDUiCw+o9rqLLMD9Fg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(376002)(136003)(396003)(39850400004)(8676002)(26005)(8936002)(83380400001)(5660300002)(16526019)(1076003)(478600001)(103116003)(2616005)(66556008)(956004)(4326008)(2906002)(6666004)(316002)(86362001)(107886003)(55016002)(52116002)(66946007)(7696005)(36756003)(66476007)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?McYmAEvNVjZxxFPsKhJ9Haa27FfmBEUyWPANmFGAH/QJMddMHWZnYOrv42xu?=
 =?us-ascii?Q?ohIfE9OnC2AHchIFufgD6krB902ShPZxQTbI7Z+AISFg366xAZ88LIjjdMuS?=
 =?us-ascii?Q?yuGrnPaSuZYaGvgg7H0U85N/R4nDkuvgo3ksRH/SoWoI6Q7A0O8VIz2m9Qf5?=
 =?us-ascii?Q?967j5XONoOJpt6jCZpkFVgzKBIEiFsmxcF0iyFvza7b6wRuBw+P9OdTQLfua?=
 =?us-ascii?Q?HldLaB+d5Umv/+Mm/hjz8o3Uw5fmxMaFyIPmVGxGXjJOdfKdIfhoqolXsQUg?=
 =?us-ascii?Q?a95I3R3+YbA7PLhTP5Irf4a1WF6fD6n8E01uv2kPHp0JOUbD/RVa1E2Fj/Zj?=
 =?us-ascii?Q?HCf1zLu3VJJ5tb9y8p6Y+81dtEG0uWbLAOWWlzDOxcC9PMCrgW/IiDfxqSUw?=
 =?us-ascii?Q?X56utWRi2y8p+rsnFGOLpaA+jzzXy0tmF+iMnLJQCVtEmZrnUCdSeyoZU9zg?=
 =?us-ascii?Q?dnlxeleL4lQFFoR3HBosEDjn4BdzC2TPHXPGdMRDDBotIKzELhC8tB4n/QFH?=
 =?us-ascii?Q?ivWLt7zr3yVnGR4y34ZR6DDdZufvAR1MpJqtH3n7Fr3URecWSqWKgUfyknQB?=
 =?us-ascii?Q?nr21/ShiJ691CBO4dwnQ/sTeZSiqinXBLFzPkNpNlG/zp4kmLcroC3319HOp?=
 =?us-ascii?Q?AdhV9SwrXLMzeRUu8Wb0/AqzEUtl/OkmJC8uqxtVX5kz1PuRTi/tZ9fNU6LO?=
 =?us-ascii?Q?BIIudJNzo3U3PDJyiYMoT5W9CwCO7JPIZeN6r4/uTohri3Rpw2CV21fm4Ms2?=
 =?us-ascii?Q?3PohyfWrhQPYvVqIcs1X1u/A5wY74CRBERglAxtDdt2wo8NbkvFI4ZoMgZ4k?=
 =?us-ascii?Q?r5jU9OGORag8wp6AN6A46fsJuUvi0JcoA+a4grxAZBo+n2QoPflIVs06n3+2?=
 =?us-ascii?Q?7+aSAomIMMAZc5FjRRx/xCbeMQJR4ankzOOAf3bcs/BtLtQ7hWDe2w9i2Eya?=
 =?us-ascii?Q?2n9ekD+S+xAr7Td06CEaEU4eML76OUWxVuznRanUMz6Ud73OrlZmxlP9izla?=
 =?us-ascii?Q?Z1J6?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 2924db20-3f85-4627-e7e5-08d892917de7
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2020 05:01:25.7785 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rj45VtLM1+qrKMb/nyhF8DlUSbsSi1oqsP33o2Z00rO6x783bJEmr4ag6Ohw9utVj8M2kEX/82midK5ltdj2ub+8aCqdebgGW1uwTUJ6WWw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB3232
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.8.108 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.108 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kiW8F-000eLN-LV
Subject: [tipc-discussion] [net] tipc: fix incompatiable mtu of transmission
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

From: Hoang Le <hoang.h.le@dektech.com.au>

In commit 682cd3cf946b6
("tipc: confgiure and apply UDP bearer MTU on running links"), we
introduced a function to change UDP bearer MTU and applied this new value
across existing per-link. However, we did not apply this new MTU value at
node level. This lead to packet dropped at link level if its size is
greater than new MTU value.

To fix this issue, we also apply this new MTU value for node level.

Fixes: 682cd3cf946b6 ("tipc: confgiure and apply UDP bearer MTU on running links")
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/node.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/tipc/node.c b/net/tipc/node.c
index cd67b7d5169f..9f6975dd7873 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -2182,6 +2182,8 @@ void tipc_node_apply_property(struct net *net, struct tipc_bearer *b,
 			else if (prop == TIPC_NLA_PROP_MTU)
 				tipc_link_set_mtu(e->link, b->mtu);
 		}
+		/* Update MTU for node link entry */
+		e->mtu = tipc_link_mss(e->link);
 		tipc_node_write_unlock(n);
 		tipc_bearer_xmit(net, bearer_id, &xmitq, &e->maddr, NULL);
 	}
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
