Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 916C454DE37
	for <lists+tipc-discussion@lfdr.de>; Thu, 16 Jun 2022 11:33:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1o1lsH-0007oo-Du; Thu, 16 Jun 2022 09:33:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1o1lsE-0007oh-Sj
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jun 2022 09:33:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I4yQII6aH7LL8jml688k/UfmdRraATKKu+yQbWk3oEQ=; b=J4GD+1IdOxBgW7Z+96jCHIIFXm
 H16JlFLAW6zA3Eew/ICd7fjFtcKB4j0vvCsRsOgLP3LGIXC4P8PNISe3mOYndvRzh9EeR/nlJzBIT
 sRThvEC/LREXeAwLEnEJhcmSY3iow7zmeZIXtwt+ha+I4jxdidylz4zj9FwhYyo66lBA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=I4yQII6aH7LL8jml688k/UfmdRraATKKu+yQbWk3oEQ=; b=U
 8CrtVfRTkg/3wcCBT+uMT5ipjYQ+5dSLTI+7SxmSKq2Ph0M/wCzN/qSE7joYl5kybexzuPsX4oGXO
 P+Wk/344lzCrq77TsH0B3eXfr662fMKLXKH8PbSdqnAg2qOC8VyXEhGGS59qas9QGeciJoUUrjCfv
 UOuQeKpRq8wxkeg4=;
Received: from mail-am6eur05on2091.outbound.protection.outlook.com
 ([40.107.22.91] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1lsD-0042Mq-GD
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jun 2022 09:33:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=No2uk81WgPSAaXFirg427WPmfpTz6W/7yOfVZ6IBPBTDLDO5Yomv1TRdi95S++CoG+x2IdXkle1ueIsKGKwGy22nOGdd/Y97nZRRR0FawnX1UaBLUwqK8hi5s/YeP2jM7FVaeV2s8nR+HAazp0wpAv1zlO4szXEBMzncgL8mR1+0g2bXLrCFRLe2EugHvrJdp8i+EjJP8iVzLJmxKGrhzJqwZp/mKv6X64/moZz7cX2AMKsGlnZSwJoxhDp9VVJYKedJKVHbAKPwpPvTViNahy/GrO6QiCPWQTyPno3sTrm+ch4k5YnbfrNkoTeQb4sCV+eP3AVhJ4ds0Hf0NW2BZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I4yQII6aH7LL8jml688k/UfmdRraATKKu+yQbWk3oEQ=;
 b=ayPnyPJenxdU6YKtD91+q8pDfwmEt7YKd6rUmWr5rMAHANIN73ohQZ3yTQ6XKSlZNXzXw8PJniP2xDu4EZco7akMGlEuHOfIztiLuFbH9Fqbh02Sy5i9IaA2Stwp9t2qdieYh6lrAd4DBxfuELf9SSUVLXBmIMzAyhQ+1Gjva5QUYJuO1yBnsx65E1Jb0ocITVvj34rcVwd3IOm+XC8uGWNWbeCJvN+wnwrOoMCM+7OBJ4sCb2fOvqzdD4kp4Hl8U2XROuHJDALkHcrdVaCycHKrTeVolnyOAQxro5GYp2pLz0fnxHDbCv5DcuNvQIaqaKWyrp4/oWi56Fet1PRqOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I4yQII6aH7LL8jml688k/UfmdRraATKKu+yQbWk3oEQ=;
 b=wOTHOoo8yQdiLswODRmmC/3RTIr3/gTFU4+1SiQFqm3gzDmXXCRvD4Nq+oLkMMrQ39WmPQ/OMZ85CqG1lxeMLQehjW1FxvgSCyXRTt6TA8EwSId4BZq21enXJxqqsyDviUNFAe4yA1AYUIfGBfI1rEiGV17MT8XodK43cs67X4o=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com (2603:10a6:10:21f::6)
 by AM9PR05MB8735.eurprd05.prod.outlook.com (2603:10a6:20b:415::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.15; Thu, 16 Jun
 2022 09:33:01 +0000
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::f429:2b60:9077:6ba8]) by DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::f429:2b60:9077:6ba8%5]) with mapi id 15.20.5353.015; Thu, 16 Jun 2022
 09:33:01 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tung.q.nguyen@dektech.com.au, tipc-discussion@lists.sourceforge.net
Date: Thu, 16 Jun 2022 16:32:49 +0700
Message-Id: <20220616093249.7160-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: SG2PR02CA0051.apcprd02.prod.outlook.com
 (2603:1096:4:54::15) To DB9PR05MB7641.eurprd05.prod.outlook.com
 (2603:10a6:10:21f::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 906af6a8-0d09-452f-5b17-08da4f7b34c4
X-MS-TrafficTypeDiagnostic: AM9PR05MB8735:EE_
X-Microsoft-Antispam-PRVS: <AM9PR05MB873500AA06D3D7214463B748F1AC9@AM9PR05MB8735.eurprd05.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BnN33v2EE8jmUG1lwca+zn69X9BaR6alNQhrZ1qoGME88uRvehXNdeU2ItZZNNpN4gttGJrujmtgIhBc2IXOyDbXa2xuAnbxXNICoQsbMmFxTqArhHSh0T+29BrdZcggJy6djrVisN31uGDIjo6+IhRVRqmqIP4QLwW0I+pdAwHeRJNyZp+ZPj2d+7k7eT2RIfzfcJLzFj/14kWR6nPYax8XdfOGmbDRZDiAnhBDo5PyiFsXUV5CbTRQZcIuM0xxB4iKLug0VfH7aY/5cNJQfi6WIwQH+qPav0z/v88YEJE8Rnf6Nmu4oGfDLg3SF1+FbrbAANgzUk4Fwyz5unQwSz36aHNy1ll0jXkSnvjTfex+Jurg/0xigRZqozPMUsGcmFNrQdvmKy/Gu3o8C4MCUvca9wdBJGBttJrOwunXfnAJ5Dz/lDkbyK2sYB5zldoKTaiTu1ak8zkIeihH2QqVCnsPSAeKwQ/NMmk9NalUxlHKwOs832P1J6aXWj2EeIveW8VR1QHWRt5j2+e0VU/IcCOayM4TZr1p45ElpVVrUJ5sOitSrKsW18iCFbRJih5lc6N8BokCt5qfIzVmEfj8D/PmbAv2tm3aVs9XqsBJf0QgBPFg4SREg+fkurBWtqCtc6I/GzmVFedhnj2rqmrjW7imHvo7fk/iQDG4kIAUhRfuDlA3OMixrMGbFAifJO9vJcJmIrDT7RnRSvNQWTq3IQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB7641.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(346002)(396003)(39850400004)(136003)(6666004)(2906002)(6486002)(36756003)(103116003)(6506007)(316002)(26005)(508600001)(55236004)(6512007)(52116002)(66556008)(83380400001)(1076003)(2616005)(38100700002)(186003)(38350700002)(41300700001)(5660300002)(66476007)(8936002)(8676002)(86362001)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?r0GdPqIspthDpZaH3BzDIYx8YteeK4ec03boIrfsMFT3L2trITHd6CkyVNPE?=
 =?us-ascii?Q?f9NhynIJAnZxrY8/mBN4NdAgRe9KW3l/In3vpoUbJgQyQEqWGqYxJPQP2NKD?=
 =?us-ascii?Q?dZ5UvbvWwigWDh5ZEa/JBFYDOY5A6LNqgTbFNLJIMqvaGv9Oj1ekTOqykfU5?=
 =?us-ascii?Q?Dakbiq5r5ZlZnBxhJo6sUIOgP3btCMN34We2AQjwysFZwy/i/Jl7IQvssMnD?=
 =?us-ascii?Q?6+K53RLxr9z8MebNONoZB7Dn9DYYbZ4MKbYOdwkJ3YoNWraufg7x4TQbUA1J?=
 =?us-ascii?Q?zmJaMI+kThfyDoQp+1Hr0GpxCcolPPAme3d5qCF8MAPzBZsEYZMFTRTh1Z9L?=
 =?us-ascii?Q?R5GsdJYUqYYBDuXN8TseSyKa1CZ/0sfV6AOIskAkrfX+JBTx0L+4sGxktGxI?=
 =?us-ascii?Q?dw4x4YqLviHEP9VYt8R+oS9ezyEnocIJ59qmmKPVgBWPKamADMyu6TZYwCIm?=
 =?us-ascii?Q?XoV23VkUU1jljJoxFPlGRIFBEGHQgB1NkswH013CuGL7tpznDb67Wxq/lWkF?=
 =?us-ascii?Q?qzbohlG64WnsKHNSikJUrJt+WrR/7taBzOGSoUBOZn8IxhHw+RyS3Ccr8p9k?=
 =?us-ascii?Q?T6M9Q4M7zA8wJi+3NCz6i2Pud3HySpGhOEsS1QTa+p8k1ScpWKZ8SQV4ysx2?=
 =?us-ascii?Q?oOm+SdlVHNFF+bV1FCl4dCK2Yx03TwFX9BMsiL8UTwkihVuARzzOFuqacJdq?=
 =?us-ascii?Q?MnSoIVbRYlfDXkkGc0zTTKPs7CL9mBDDrkM4Ic1Qw+D6sPASf4gAxjyfLyRF?=
 =?us-ascii?Q?hG59n6uqycxFcNG/JWgK2VVoBLjjlH/90TTYv6qeYS+fQ1xM0PA4Bvj6UKS4?=
 =?us-ascii?Q?ycmyh4wY+w6IY9lMD2m85ChMWkBp8a4P60nbTUuBU7CiKlo9r2sXSptwa1Ae?=
 =?us-ascii?Q?3ubNmUwrAFBpntv4H2cqRYG8RBkOnyFt0xqk4wgEseX38cFv4Jxbl9kNvHZp?=
 =?us-ascii?Q?eQahiy7C3lwUixSsew37jqzzW0iXJYG8YpmUdx7deyMbEd+STqrrexqb+B0g?=
 =?us-ascii?Q?HEv6D9oq5gPMjz3Yhh8GCrzgTJTjMlhw+Kh8yxDxbRo1w6ytlQVtTsCJL8hW?=
 =?us-ascii?Q?vuka2UpH5tTDKApKwdAg9fdqzPPJkCqImR7A7srAKiEAitUdyOknRMDAFKR8?=
 =?us-ascii?Q?Bgid5FQtPjkhCwZJJLnTyf7X7HQbPeirQngvZgDXokbBvvAlPk7hc7/wEbYT?=
 =?us-ascii?Q?XUBrCrgrlZfnfizbfwHk2I0iwSriRXAISTP2UYjeHnE8D4CCx53f6y0HLtE3?=
 =?us-ascii?Q?6pDF6mJ71M0ts/BlgK1vaviL11L7G22G5I0C3y1FLgru+iC2wmxyl5G2Sl6d?=
 =?us-ascii?Q?3RJC1+Hu6a9LnStSjwbMRQGJbCclxtEF6KT1VCbCWOkpzZFp2c+zd2+WNvVB?=
 =?us-ascii?Q?W06RxCvbjFyYsjiK53a/PzfwPcOiQ1bUyv22i4eNgQOOUhcLKQ4tANc5S0oF?=
 =?us-ascii?Q?Q5aSUWll8/ajN5pLyKSbDmk2Is/qfzbzQL+Jwcj2WEl6W07TyudSKe/OYqw/?=
 =?us-ascii?Q?QG13QZECc0O6m+Hv6gjW7a7lx3Hfc7ewrnPl2WXKQ/FJIcgF8zBwI+u/y//W?=
 =?us-ascii?Q?aRRG4DDNHUsy1+lS/3G8UE1BAtBqGdpZuAkOnLX48mkQQ8sHS9kmuprWxcOD?=
 =?us-ascii?Q?dmZz6Re51/1jwnjDYR560fFCB3qGpyd+50yDwmetlG4oHEPqSneOkgyXjXyE?=
 =?us-ascii?Q?V9trciU9nHwe0eTX0jNQ0FZ99ztLFmJxm7qHORngsw1WS6ckq60xIelof0hO?=
 =?us-ascii?Q?7k68lj8uHMLu0Pib/eVJHJ/3aZvWkxw=3D?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 906af6a8-0d09-452f-5b17-08da4f7b34c4
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB7641.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2022 09:33:01.4027 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fvA/5K3E0kImuACF9Dt7iW9X+FpdXoy0vKTPTbbldJ0PgfULfdzdZLG9QhmNxsX/FI0VZuJdTvp3YDXq+kAh8to5hy6aFb703acQdVngejo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR05MB8735
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: tipc_dest_list_len() is not being called anywhere. Clean it
 up. Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au> ---
 net/tipc/name_table.c
 | 11 net/tipc/name_table.h | 1 - 2 files changed, 12 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.91 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.91 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o1lsD-0042Mq-GD
Subject: [tipc-discussion] [PATCH] tipc: cleanup unused function
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

tipc_dest_list_len() is not being called anywhere. Clean it up.

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/name_table.c | 11 -----------
 net/tipc/name_table.h |  1 -
 2 files changed, 12 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 1d8ba233d047..d1180370fdf4 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -1202,14 +1202,3 @@ void tipc_dest_list_purge(struct list_head *l)
 		kfree(dst);
 	}
 }
-
-int tipc_dest_list_len(struct list_head *l)
-{
-	struct tipc_dest *dst;
-	int i = 0;
-
-	list_for_each_entry(dst, l, list) {
-		i++;
-	}
-	return i;
-}
diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
index 259f95e3d99c..3bcd9ef8cee3 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -151,6 +151,5 @@ bool tipc_dest_push(struct list_head *l, u32 node, u32 port);
 bool tipc_dest_pop(struct list_head *l, u32 *node, u32 *port);
 bool tipc_dest_del(struct list_head *l, u32 node, u32 port);
 void tipc_dest_list_purge(struct list_head *l);
-int tipc_dest_list_len(struct list_head *l);
 
 #endif
-- 
2.30.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
