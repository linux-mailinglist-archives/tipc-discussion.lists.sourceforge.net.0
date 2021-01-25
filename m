Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E44530230F
	for <lists+tipc-discussion@lfdr.de>; Mon, 25 Jan 2021 09:59:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1l3xib-0001aw-2o; Mon, 25 Jan 2021 08:59:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1l3xiZ-0001ap-Md
 for tipc-discussion@lists.sourceforge.net; Mon, 25 Jan 2021 08:59:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+pt4QtPhyFyIzpCIP7REp1vXcoyoiJQj/i5+bM3RDww=; b=NhvtVjTnzxrCD6aK67jajxlced
 29QBRtomlcLN1qC8VYnYWO2Fm474qZ5kUhp2uT+iqzONT/Z/r2duBsBRy1pKsq1oW9EYYhCTZzBFk
 exzEagU1JOXYAaBANivUOFQ/ifHHJT3T1FHWSrL9cxOwu2NgfFHXnKfnhJ4bv6cNRcxA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+pt4QtPhyFyIzpCIP7REp1vXcoyoiJQj/i5+bM3RDww=; b=I
 32dzVlmr1w1SA9i0BkJ/P0iC33RipJNh7oSy04ZjtQqGgkKZFK+ME/tr6kjdA93oPAceSFUQBAIFY
 6IP4IGKQ3aPKGvs9FGamyZjYv1nKhr3CGVLQliJo3lhr8KuSSGYQPDPSmYJyPsCTzmoGkDrPjOuLI
 mMGs+xqYOGhb65JM=;
Received: from mail-db8eur05on2128.outbound.protection.outlook.com
 ([40.107.20.128] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l3xiX-006LVa-5J
 for tipc-discussion@lists.sourceforge.net; Mon, 25 Jan 2021 08:59:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N2WBWhX2NIrFW7KihT+plLsQjXLgRlM2fNspdEqsZ/DyeW3U01EbrGHYvo9YaS6LyaMu+3RmRn4284Bzy26tXXroG8hRCWvRON4IL+HzYO/dxZfqpBs1xwHsrQZr9VQ1apK+ewNq5KnorgvL02gxtXPDfqJ50M7xjrcp5/GM09tMDfhDBi8FNK3tYIOl45Urzuzqhls7B5jv/aciADpfN4o9GNP0o7y29Y0WX/eFmaMn992OMq3jm62OsavAf4fZecMAuX/QoPAI+5hSxt5nDEW+OzAhKreLZbySUvOf/v6LJis8FkQhQocd4ZQtrBjObhwhT1MXZ7btkMazTysvZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+pt4QtPhyFyIzpCIP7REp1vXcoyoiJQj/i5+bM3RDww=;
 b=WCEGWByJYChogohPeCP4jNxp0xv7h64BzvncCwNLxxJic4SnBfJQD4g0MVA5wOi1cQq1Yh8F3F7m8JOV5ZbhiWgt7cL/+s6X/8cZIOzABjY8YOmsfHYxrLquDtKaDCFH2C4qAwzJzKAgN1RVgQ4s0+mIJo5LmuDuY+Rauzx449ur3F5r06T5YzvJEKWi6ROoPJs5lhbzByAYi8IVklgp2CoDexu/ofFLHl0QYRERwTmX9Sr4CmhiHqBTUUyStasyMMYxBnb4jNApsR8bPMS9UcwEFwnd9p0o2G/+FjIh/L1H72Y3JaJ24UzZiJ4K8nSCHIb1959WteIyFszlvqvuRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+pt4QtPhyFyIzpCIP7REp1vXcoyoiJQj/i5+bM3RDww=;
 b=akt41iJuyP/ghirvFBxTG9WBp57vcO8S+Ez2MvwNtLcclJ2adX0Ah8gMvPgcSOVCOLNlD9ivmr1yfWRsG7k55K17F4zuyhbIv6vjYN5YOOaIaH2k6d7X8kkvFsR2xuaaJSHblnK3JlQCNl6Gf7H5480a1BXXlFLy/EdNyEBIur0=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (20.176.4.149) by
 VE1PR05MB7181.eurprd05.prod.outlook.com (20.181.179.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3784.17; Mon, 25 Jan 2021 08:59:15 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883%6]) with mapi id 15.20.3784.017; Mon, 25 Jan 2021
 08:59:15 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Mon, 25 Jan 2021 15:58:59 +0700
Message-Id: <20210125085859.7606-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) To
 VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3825.2 via Frontend Transport; Mon, 25 Jan 2021 08:59:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 61951316-eaf6-4b4a-48ec-08d8c10f7d80
X-MS-TrafficTypeDiagnostic: VE1PR05MB7181:
X-Microsoft-Antispam-PRVS: <VE1PR05MB7181F81E80F1B3FEB4D4D37CF1BD0@VE1PR05MB7181.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2276;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oNRoooozi4GeRiQ91hZzqNgMik/nTktr9xRds66yLAKTb9KP/lNlOV9RcEnXh99aTRZJb6f4aksm9ch1IQ4Aay76Hn5BF+zznFIbg2j4IJnypQkrg0rS+FQZn5fCmLPMm+UfKtmsMmiMAGvEXmlkcDKFeuFiH66tqezAdN2x8/u10JU3aicIaRVfnjtCj0/mI3t1988WzhU3zZCVdOY6VJtd2Ly1NVxNxAMDeRfNDUtpT43cBWIhKZwXjoWNEYdodHo7dhuC9U70NpsWWX2tnr0oNqL4p4GSotRd0aVBXt9QwIclNcxjYxG7/eK+qaxkMzzcF2Sql8exBs0AnY6VT8gCcxNZ/ytNc/asGdLDUc/dOJmGbQOyiS3fjJ2dx3g+mJCdHV8ee8zJa5u2iHyEHw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(396003)(136003)(366004)(39850400004)(346002)(186003)(86362001)(4744005)(16526019)(83380400001)(8936002)(5660300002)(103116003)(55016002)(1076003)(36756003)(316002)(26005)(6666004)(478600001)(7696005)(52116002)(8676002)(2906002)(66556008)(66476007)(66946007)(2616005)(956004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?lTXHMPkj4rl4W+vhpB8ab5kkkSDbOKAVV6Hbch1Setpi1i+yOHoK4pfv8HHS?=
 =?us-ascii?Q?clcdm+j30P0I1bCjhYSSVzdhmQCVVQzEdAu23n8SaqiQ9/tUZpe23cRhxsw5?=
 =?us-ascii?Q?alPtWX9UGMrmsNc5JaPegtBJPC9oRsbYuHktMfdYS4wZNQzMKo2F3gQpREYJ?=
 =?us-ascii?Q?QPxFxsSpUTJbXpQSIOR7prPbIndueXOlwgrF4r7pdR8b4YvaaHvDLVEhssHQ?=
 =?us-ascii?Q?55SM0dWrP0RicZU77BeJ6+kteKrPvVo8aH+QtO0edyCmAYwp2UBwjpokFvaM?=
 =?us-ascii?Q?RLS79BCTR8lpCADd1y4uyn9EgRX5fqJq6J43WKJqCrgl+wq8sHjArXUYpjBK?=
 =?us-ascii?Q?5wH0pOXjEiUu7TMW6UcepFtc0qnRbsI3QriQ3STDH+3CFbCWroIEWnco0N/V?=
 =?us-ascii?Q?ThL9jikeFWN783GnHvZjVf9yBuHTV2QsckeHAsF2vt6Zd+AHAExAQkGg1B2h?=
 =?us-ascii?Q?48WoZMAl2SeLVvtm7BSaQbvxR7ulKuR4XfbKnURutYxkS9PAH0ouxFcSb61T?=
 =?us-ascii?Q?i8gYpoEyMu/8wHnlZf7AdfLkULYEk7cQuqddK+oy9KiF3WVM7gJbsf74trks?=
 =?us-ascii?Q?3zhuBsX4hXCur1lpbG0bg6aRjm45Gh/IbQF1IBvxeXGTtrMjpvhlmYCcJFdY?=
 =?us-ascii?Q?XSEW6Xfzr2B6dCx0re508mojLQLW6ssLg/ZwB/rYwFDBNCgB8iXg0khjCMaA?=
 =?us-ascii?Q?NH0FcYFS2IRtl3PvMjy1LwQrGV8TZ4mytacCGk/Q5rFkP0bwgEDrNMzIJwsK?=
 =?us-ascii?Q?cegmVGk0/7ZoVSl17uZc6oH5fv6aJKhtsG/MiJI9HaY+EhenC6RcEaMY/hDa?=
 =?us-ascii?Q?Z4r7RfVCfveqAa17SDJnA35mvqTN04Z0H0Zi5fPcB7HsCAIRcQl7I/lETLTE?=
 =?us-ascii?Q?8AenLQy+4sZmpDT8rQKSDUJtJN1r3IvMYNnm0te0N3zYHjVAmipc1n8FOYkX?=
 =?us-ascii?Q?Hgbq4fzgzOMuKItSQACOzbuMMw8TvbSXOpxqctXX81WPF85eWV1ScZfYjTKU?=
 =?us-ascii?Q?Y9uwHCD8jUFHzvRBEQj/rUi82ueZQ7/805UohfovdDbbIEXXvZKE0F1xzvfU?=
 =?us-ascii?Q?JbVq0UPE?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 61951316-eaf6-4b4a-48ec-08d8c10f7d80
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2021 08:59:15.1212 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: liYx2k2nZTViK1iPc63iyBQ9A6HH160VyxoEIpIw813VNfZhRC4JIi2iwRO9tBIXt4LfE0UvQcK0yBFEPtOi+7mMzlpWqvajR1GFjgCq7cM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR05MB7181
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.20.128 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.128 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1l3xiX-006LVa-5J
Subject: [tipc-discussion] [net-next] tipc: remove duplicated code in
 tipc_msg_create
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

Remove a duplicate code checking for header size in tipc_msg_create() as
it's already being done in tipc_msg_init().

Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
---
 net/tipc/msg.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 2aca86021df5..e9263280a2d4 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -117,10 +117,6 @@ struct sk_buff *tipc_msg_create(uint user, uint type,
 	msg_set_origport(msg, oport);
 	msg_set_destport(msg, dport);
 	msg_set_errcode(msg, errcode);
-	if (hdr_sz > SHORT_H_SIZE) {
-		msg_set_orignode(msg, onode);
-		msg_set_destnode(msg, dnode);
-	}
 	return buf;
 }
 
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
