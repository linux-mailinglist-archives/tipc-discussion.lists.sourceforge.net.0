Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A303685FD7
	for <lists+tipc-discussion@lfdr.de>; Wed,  1 Feb 2023 07:38:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pN6l6-0006dz-LT;
	Wed, 01 Feb 2023 06:38:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1pN6l4-0006dl-Tq
 for tipc-discussion@lists.sourceforge.net;
 Wed, 01 Feb 2023 06:38:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GltEcT5IO8dxTRLuI7YVzgZ5EkI0JrXLoF2TUoJfN4o=; b=BXxtDvqzcYruMCRzGPUU7MplzN
 OcL+9KWgT58cNzY5v26FbmikoQ4HG/KGBlPdZLficPhJLACTkIfiHaMt3CO2L9dvegzmxH9CFP+4+
 4pmKunF3G4aPs/pgvbWqNQRkizXrVj80zPYAmrCuCd3xRH+3evZQRgXc1oxguDwdMdC8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GltEcT5IO8dxTRLuI7YVzgZ5EkI0JrXLoF2TUoJfN4o=; b=S
 JgpbyMSOhd7eaITflDCV0eO5fceCHb8seAZbNSsDhIluHkgYPsdQdqhgdepOpti7CDnZQFtd6pax0
 BfJcZMfLBRQWhAdLOhuD+iSS9ReHbA2jpkdPYrMOrGl7ZMFC2VOJ2d7vwBztmlVxDeQFVxY9PXEuS
 ZclO5fir0llReNgY=;
Received: from mail-db3eur04on2093.outbound.protection.outlook.com
 ([40.107.6.93] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pN6kz-006n9Q-F5 for tipc-discussion@lists.sourceforge.net;
 Wed, 01 Feb 2023 06:38:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WSI7qsskc+Hu5nE9ZBxy67R+hlpAz/kzSBYAW1tdQrOO6BqIhoVpBj0kN1zHwctIYkmwLsOA6HfwHWSb/oFtLh5EgKMP4Fw/+iTH5fgm9EhLlA+HY3y7MliANG8a7HI0wBX1kfuqeiGiytC9qlMacwreJ1yvsl6LwnTfZwGyxfRpPvNWMxNW9JL9ll5iyrE1rMUwB5thlv4kd6wWMVKHXRzxtpm8UltIeS2UkjiQDG6gHzC2KYgCqkAoJJCvdKkYyDag0niQA1L5wMh8kyDPXSmcnF1tc4MRfZVokBVFvvpA1ndGIqj4N5JddMHP1Y13GpHK+W9jsWIYSVAIFwxVqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GltEcT5IO8dxTRLuI7YVzgZ5EkI0JrXLoF2TUoJfN4o=;
 b=hqnTabv0fix+YfpuxmIiynE7QcbG6GwM8w3Nlws2bVSB36wtV2Zq7/ah7u/D2naXKi+6sAn+8y7k0s9CVHn/tf0rAn2k0QpoFL6JhB67i5rJT80wxFaW1xUiW81fm06gZV+u+w5C9JVKZF91OJri+B6/fn/nRAP0SN8FCWPzLhMhk14XKz1ZjJeu0Rfmn3Dy46KI45Xv+pmzOx1+9b1yObSCibmOFs67L3tfW91gyM+9h2MIXzvBSOkm+3ZJADR8kllN9t2Jj0+VYLEhW8tj/aoyV0bLuXSaEMuVVxAai4sAIz2ikNTbrIjcff8Xk3mK+8nB7C69ROdKVxTfpyUzqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GltEcT5IO8dxTRLuI7YVzgZ5EkI0JrXLoF2TUoJfN4o=;
 b=GeW1BxmyppmynngU/WZc/mAhUJ+y8/TV7/hVJvNB8MV19x2/WYjBYcPQryK0wCcg96oYbXqYwYW2Wd3fBNRlA6ELyRwxHDxAuafu/LCO+33Hdx/Ee4TA9eCsHfRaaNM7VdaN+7kUG9+gxMrGzIE33L25cvsGpWnf0qkCUfvv82s=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com (2603:10a6:10:36a::7)
 by AS1PR05MB9395.eurprd05.prod.outlook.com (2603:10a6:20b:4d1::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.38; Wed, 1 Feb
 2023 04:04:10 +0000
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::6540:d504:91f2:af4]) by DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::6540:d504:91f2:af4%3]) with mapi id 15.20.6043.036; Wed, 1 Feb 2023
 04:04:10 +0000
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Wed,  1 Feb 2023 04:03:52 +0000
Message-Id: <20230201040352.194367-1-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: SGXP274CA0015.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::27)
 To DB9PR05MB9078.eurprd05.prod.outlook.com
 (2603:10a6:10:36a::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9PR05MB9078:EE_|AS1PR05MB9395:EE_
X-MS-Office365-Filtering-Correlation-Id: 477bee9e-cce3-4a17-3a05-08db04095f09
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wJ7a3HvLWOPTiarEYrPeIvN816kd02jwGjAqBbIgQUgvYhtVjR2t0LoGntF2o3iir/GCC7PkJQpe4CQ6ZKwQAYimElGq0W/z4Z1eCh+WKy022NnsftSmIbqLyVCzzIUmE3LVbiDAop4cIw5ZaA4W8iuXupD1KZH5NkSGSApnDtxPhap8y11ljWkdn4iPTQmXDmJr/6rNHVA8Vu0H5jbAqCsq01iU+aYQdFuYHiJiD7iOFDzdOnbJsj/g+C0M/Vzmak2eFUWX3JZZFurodsjQq4y6aI434lUGrZLtmkE/nJ4TNsNeqvGDYnEXsgm6Gz8Aucb+s6+ArrV0bnWYypIB5XWlCQSu57JVQckHxs0J/xIFWXrwrt/0PTwLVErChyq7nH9mwesjeycmUIXfMqTl9tCffQ0NT0osTz6zr2L7aEuQCZfiU++L/vDCCtITv6GuXJEdtzGKU0aXNl97iFQxXJ+r4dOirQPUM3Blg7iGALsTyVtVklHYIAyrP2YOvD3YZsajsVAWMZ1ZWk9JHWOpxdtzqQS4FBZ8k+GnwEX/9M4+fizAiIIBRxUF40JoI1LviaREQ6QhwrScihWziuXJbL/2ORDIjdNVxwObe+L212iKKb1so/4iWrxxRuAwGHkWIAR6wcJOYlE8BVQHiatjcwWJKOsSTilGBOqBGNFF0VuqwJpI37RLRK4SpRBIs2oe12PqmZapY05BxHqiXkWqCw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB9078.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39850400004)(346002)(136003)(366004)(376002)(451199018)(38350700002)(86362001)(38100700002)(66556008)(316002)(103116003)(36756003)(66476007)(66946007)(8936002)(5660300002)(8676002)(41300700001)(2906002)(15650500001)(83380400001)(478600001)(2616005)(52116002)(6486002)(6506007)(186003)(1076003)(6512007)(26005)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zVQRDL8MLTd65eTcFT3spy/CuNkvuupwsHKrej5kGMQh5RcWDC06bfrAnBfK?=
 =?us-ascii?Q?cJcCheEXtPGRgdB6KgyjTTCOQnJ7s8LhbyLGszUAGRyt/o+Tfg3J/4+o77sx?=
 =?us-ascii?Q?iJJyr8xH7NirhHuwnZCBv4NdEcXaibBueEDlNIP76bTinEJGWL0UCYL7m3zz?=
 =?us-ascii?Q?b6NWBg9I5Sv2C+jFXs4av/qjrfF39YmdhV7jsxT1wKZjobvVBJKcTn6CriUU?=
 =?us-ascii?Q?zBaOu0hhaxA19tOpu/vnlvpydhi2GVTq4Kx+DvPOHYA7tGOhPxSTbqtvwpoz?=
 =?us-ascii?Q?Ataf2B9kN74pJ6v69yGdunWuUYDgTumotkwfXVCHE4SlhTJvLKCA0/xvHnUX?=
 =?us-ascii?Q?SGudl2ga70yhZVm8xsUrF8PRKk4tSoJJdaq0j610tnHfPIQQG/jNTGCPkcon?=
 =?us-ascii?Q?2wfYqm16/mzcZJdEc6FaexLn+woMONvHZbmPZ+eQKI9U0qBGRRL/cKAzual9?=
 =?us-ascii?Q?Pp2oC1jQBYFOerPmcjavcl8TZeB9yikjf6rGllg6ID/iP9+HLTiKEMBJ4Aaq?=
 =?us-ascii?Q?eraLaKHi1xXeFgoH0NOGju7yXNEYY4qrzRlOcgeh0yIj7owH+7qDCippzsO3?=
 =?us-ascii?Q?Iovl2GDkPOvtQFc5ST4vVFW+6X/2biNbkpU1KVJPm6gmy4XbBSW5rqterekA?=
 =?us-ascii?Q?rlfxW4lAn1npnb39kwHiA8AkzwRbwyP+J2JdJVbueaBhs/YysgUZfvpWOPMD?=
 =?us-ascii?Q?n/5U0SCeur4EgfWLT6d66iB5/zaGz8crADZ4GEAkUn//OQRqP7IMo0RfiUMq?=
 =?us-ascii?Q?yM14v+uRig8TIFEWD0r87gFYbF7//aDf0aXuk07sGpHdvZ+aMvGC/iAFvXA6?=
 =?us-ascii?Q?vxaKe0mfXJ8K7Sj2MrrkSgTv5YB6rnxMjIo6UQptxwzx67bqtaRtR0aJ51dQ?=
 =?us-ascii?Q?XHtc6KOGyVDk+aHdN51+0v3JQGmPjV7ky3L1x0D0AtUdqLOfPxm7ej7aDJgM?=
 =?us-ascii?Q?XaIjoHlQ6ovzpDdXyOxg3MNjpvHUNnDA7SKo+y0lugcXOGcamXvuqr8huNnb?=
 =?us-ascii?Q?ARWTW2Xtm1YP3xWloEKcC/ygaB6L58J7dkfubeg1pOaOZEKUQRGaAUe+HC3k?=
 =?us-ascii?Q?I4gGanjHzo5N9yXEB/O9rDr4lDP+t6qDk+biNtMig3x/gMBbcqNpK3XUwuaz?=
 =?us-ascii?Q?caTQ6eiwbb8jAs6gb93xyoyGOxqbpDhvYfJZkLuMx+i/LKSl9A7++MWje94O?=
 =?us-ascii?Q?kaV2zYq863I0m+xRYHSeJPl2uOToAHj2YCKAnGYC1T6bq81iERg2jQv3zVV3?=
 =?us-ascii?Q?2EuMngK9fwOYeaqUvY2lYuUjmoGTqSWQFyBe8ObLcOadXuJ4MAgFuq3Pa4ix?=
 =?us-ascii?Q?bt6QFzp3Aytd9uVsryYtCFD3+LtGaBCycFQPmgH1s0HaE6PRl737q7Y+Y+S/?=
 =?us-ascii?Q?z+a1zcj9OXbmZQSVO+17jNGP6GWg+i1rAHgZY7BtJm6ogTKs0to9XoPK7Abw?=
 =?us-ascii?Q?Fpj3y1Bvir8LMQRTeUKBrL0LmJ2BXSw2WWJp9gqeZM6nBBdHrbKdnIWF+xlr?=
 =?us-ascii?Q?JgBMXHaUIJP64HqogoE5XE+4ctAoqb/8nvPepToEDQZK21FgdL113ZaSfcqz?=
 =?us-ascii?Q?mjVgzk0mRRgctExayy+hGZP3E1VtJ7rMZElJlM2EnMnz0PXeHkK35p99WSXW?=
 =?us-ascii?Q?Bw=3D=3D?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 477bee9e-cce3-4a17-3a05-08db04095f09
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB9078.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Feb 2023 04:04:09.9807 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7tdYGsWBMB0FFHa88hnGvWCW1/arWe9La/A/VeGTjJvHVa6l3aTlIHnMB7DNJEZAsf4OmwsmsVEagfONNJDg/tLHZWI6MUq75hP5PH1nnLo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR05MB9395
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When sending a SYN message,
 this kernel stack trace is observed:
 ... [ 13.396352] RIP: 0010:_copy_from_iter+0xb4/0x550 ... [ 13.398494] Call
 Trace: [ 13.398630] <TASK> [ 13.398630] ? __alloc_skb+0xed/0x1a0 [ 13.398630]
 tipc_msg_build+0x12c/0x670 [tipc] [ 13.398630] [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.93 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.93 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pN6kz-006n9Q-F5
Subject: [tipc-discussion] [PATCH v1 1/1] tipc: fix kernel warning when
 sending SYN message
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

When sending a SYN message, this kernel stack trace is observed:

...
[   13.396352] RIP: 0010:_copy_from_iter+0xb4/0x550
...
[   13.398494] Call Trace:
[   13.398630]  <TASK>
[   13.398630]  ? __alloc_skb+0xed/0x1a0
[   13.398630]  tipc_msg_build+0x12c/0x670 [tipc]
[   13.398630]  ? shmem_add_to_page_cache.isra.71+0x151/0x290
[   13.398630]  __tipc_sendmsg+0x2d1/0x710 [tipc]
[   13.398630]  ? tipc_connect+0x1d9/0x230 [tipc]
[   13.398630]  ? __local_bh_enable_ip+0x37/0x80
[   13.398630]  tipc_connect+0x1d9/0x230 [tipc]
[   13.398630]  ? __sys_connect+0x9f/0xd0
[   13.398630]  __sys_connect+0x9f/0xd0
[   13.398630]  ? preempt_count_add+0x4d/0xa0
[   13.398630]  ? fpregs_assert_state_consistent+0x22/0x50
[   13.398630]  __x64_sys_connect+0x16/0x20
[   13.398630]  do_syscall_64+0x42/0x90
[   13.398630]  entry_SYSCALL_64_after_hwframe+0x63/0xcd

It is because commit a41dad905e5a ("iov_iter: saner checks for attempt to copy to/from iterator")
has introduced sanity check for copying from/to iov iterator. Lacking
of copy direction from the iterator viewpoint would lead to kernel
stack trace like above.

This commit fixes this issue by initializing the iov iterator with
the correct copy direction.

Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
---
 net/tipc/msg.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 5c9fd4791c4b..f40cd9032b62 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -377,10 +377,14 @@ int tipc_msg_build(struct tipc_msg *mhdr, struct msghdr *m, int offset,
 	int pktno = 1;
 	char *pktpos;
 	int pktsz;
+	struct iovec iov;
 	int rc;
 
 	msg_set_size(mhdr, msz);
 
+	if (!dsz)
+		iov_iter_init(&m->msg_iter, ITER_SOURCE, &iov, 0, 0);
+
 	/* No fragmentation needed? */
 	if (likely(msz <= pktmax)) {
 		skb = tipc_buf_acquire(msz, GFP_KERNEL);
-- 
2.34.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
