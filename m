Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0479C4DD3D1
	for <lists+tipc-discussion@lfdr.de>; Fri, 18 Mar 2022 04:59:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nV3dZ-0000Tp-Eq; Fri, 18 Mar 2022 03:59:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1nV3dX-0000Ti-GK
 for tipc-discussion@lists.sourceforge.net; Fri, 18 Mar 2022 03:58:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uH2WZaY56EipJ1PfcEEvW/s5Dc1iLoZbkZ3SZd0NE+4=; b=abnRKwmpiCpflVXjYfG3R/frSE
 TmCwiH7ixy/pio4d1FMUIfQ23nuGxVbKCWuHPUIgLQqLZRW+nKC9ieK1bm5PI/uzAr/8se9md10wq
 /xDl3IIWuu2Bc0kMRMUQ9KqZxFrTdT6GIzYgCfimX9rwJTXwv4eaTB3OFIewiHR4Tw4Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uH2WZaY56EipJ1PfcEEvW/s5Dc1iLoZbkZ3SZd0NE+4=; b=Z
 e+sOA1WRFRc/MS7UBA8DoBoj9IhoP437nR4YIu4vnBGNcwe0b0X/WnVN1ewlEnPPY2fyaq/+5Ld8k
 PHaBtgSCMMCYeSBSHhpWZag9QOABooDulk015VeinhyP3+Y7yP+Iw8NZ4uD2uJW+wXOv3RlSeLLsx
 Cyu2w/jk+6KNscXE=;
Received: from mail-am6eur05on2093.outbound.protection.outlook.com
 ([40.107.22.93] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nV3lP-0008Do-Hx
 for tipc-discussion@lists.sourceforge.net; Fri, 18 Mar 2022 03:58:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bvNAQ5iRwLyBHvS0Iwumj6hAGPH1SlqB9pKkefxrHmlctnJnqKDKqdtoPmUzViciNQFrCuZ2vSub0TVjUUalbEaGTAn7+mF8gHEQQaPeJx92vHFkaL3xyOby+gfGs2+rZAUhBjCj045o1wGtpQCz5sRVYobVaQSoXo+4XN8z+8dNnDAuUoAdpIdRuEGpkzYvhNUHAo/Ilf5BVD8PDWw+ikyYxOv2hdi0W3n19KZG3pjLi/C1cOAQHqT0W2/p7b2w7/nHKq3LACxMUBt5tlVi4V88vRdim7qpiGURBi9jbOGgNXLRICzFf9SUih0sRGQeE+oU9Fskpz1KFDbgaTdhMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uH2WZaY56EipJ1PfcEEvW/s5Dc1iLoZbkZ3SZd0NE+4=;
 b=jT/3tk0wm3LI7EgEwjyCnVlO6+HJ+UD4iaKgS4h0tz3oZnDq/AhgOh9g53ybWsBZbzEZsEaCH8UXaHHP2YO+lv/hbV/d7oejGxEhRpFn48df9yFHcMPWtGmXkA+T/jtYYGuEmvHw6Tw6X9NeHCzoZsBh3SBhceidvu6qCqELHF1MaQ2tHP65RoiY8mTUQeBue8vPNjAMw0x1Fw2R7bNT+t7SmRA4I0HQevvJdBxDfi5631CDmyNRPZexhX1y3NEIxNePnsQbe+y1srhg6fOKgbUJD6e7yqDdfZqLT4t7qTeQoxzax4S+6pjJvHlobHFt1G4qRRldJKd91qPaE7VR1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uH2WZaY56EipJ1PfcEEvW/s5Dc1iLoZbkZ3SZd0NE+4=;
 b=w0Ds6hm0IzBngK+I4mU9kl1bB1qgMJztYM9sXVnFOnL7ntwEP7KVaUh6hcPllG676e2nbYpezdzb0ujb4RuUgpqgmeH5Gt23tK18fnV0BbP80rIrIOntiBjDYTVEUEzdvc+8GWJXnlSchDZ3wIDIq+otS+2EdlgGhE2gbtpiVeQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com (2603:10a6:800:1b0::18)
 by DB7PR05MB4969.eurprd05.prod.outlook.com (2603:10a6:10:1f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.14; Fri, 18 Mar
 2022 03:58:44 +0000
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::641c:7898:65f6:8b56]) by VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::641c:7898:65f6:8b56%6]) with mapi id 15.20.5081.018; Fri, 18 Mar 2022
 03:58:44 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tung.q.nguyen@dektech.com.au, tuong.t.lien@dektech.com.au,
 duc.x.doan@dektech.com.au, tipc-discussion@lists.sourceforge.net
Date: Fri, 18 Mar 2022 10:58:31 +0700
Message-Id: <20220318035831.208338-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: SI2PR02CA0019.apcprd02.prod.outlook.com
 (2603:1096:4:195::13) To VE1PR05MB7327.eurprd05.prod.outlook.com
 (2603:10a6:800:1b0::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 77304b01-335a-4a76-dc53-08da08939854
X-MS-TrafficTypeDiagnostic: DB7PR05MB4969:EE_
X-Microsoft-Antispam-PRVS: <DB7PR05MB4969EF3A4774AC9A8DD12D16F1139@DB7PR05MB4969.eurprd05.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C9mFRrevwOfG+nO0JHMhPz9mySTBkK22+EzsrhnJr0g7/uLj9GpUDb7N3hfKswc3csLUTF9VCGdlTujn4x/JoM3/DndqafDbXm+JKFUanUY/RNvX0NkTlXFmXpctGAuJYNQgsPZ2FZsOs9dinn0NphnYK+mtUOBBw8Kcp/BVBDcFe4NopwCBtppsa+J48XWRYF43D3uJB4yuMQZCcXf5/B5XT/xVx3CE6mg/6NinpmRhG4RQeTQTRryFpXxgRSFjJ999TofrfSOONhyEP3zEi4GUWrNBZ1KI28tm8xa4SPqKTCWBcPf3aKCPjHpYFX+iu8imGnXkPWTOZP95ENGoi/nN9ngHX6fKD/pYw2ienLbDCA62HxrXrzrGmC0OLUlhszAP/UFHsPclVFialF77csxTMkZMXHEOLunzXESlnbzA3Tnr2Ce3kac9XvLbX+qwaQ0LsuXtTttVtrJ0+j5lEVl//0Y/qxte2a+E+2lGugcGN+beTXITKdISwARLN369DbfY92R3JN6z8hk/EPWjJZ6+ddW8jdPnJ0HVL+adhZtOPX5Sj9ds9WHbN+5SXDVpkA1cacBS8KlrabDOhEYLe4n9bArYcbJrEQ9ksSoaGH9AiuJYLXVVzbY7buaVrY5eWqV70Q73GnmMMG2oNxs1XsbUpmpzoRYiRECAf7C6mKYHTU2VfjpARXgRCXwrw0+BMwanbAWf5y+xF2Gi5Sny7w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR05MB7327.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(396003)(366004)(376002)(136003)(346002)(39850400004)(103116003)(186003)(66946007)(66556008)(66476007)(38100700002)(38350700002)(2616005)(1076003)(83380400001)(86362001)(26005)(508600001)(316002)(8936002)(36756003)(6512007)(6506007)(2906002)(6666004)(55236004)(52116002)(8676002)(6486002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HeAfrRCPBjiQ4Uq2gFqxgK+EfQAK73AqN+ZbBbOEqSyb5g4gdMS1Asp70ib3?=
 =?us-ascii?Q?WENiqz/tOtVaMTgEA/fDor7IUUPok3hEcoXvjugnPUtlV6ogCE/oSazZRQEW?=
 =?us-ascii?Q?/0vecPj8Icb/zgEKc+YZZkCQhxvqxGKaDcJpWBnKI0v1UWM5Njir9Axi/wod?=
 =?us-ascii?Q?sLydEJPkWH9ElHTSsVqRlv3opY+Zfr7sz6akXGRVEmCfFOutmZ99zsE2k777?=
 =?us-ascii?Q?wH+P09YdrjyJaMeSS+pw1HxWoQFSZeZCWH2oe2JB4VBVN9RO4PGmRbmB0PRr?=
 =?us-ascii?Q?XVsyIo1Lk0whgk2icaZXB6fLo89hTCy1XU9kPynacyIGK8/7eLMtnA4GfG67?=
 =?us-ascii?Q?YMdrWSYtlJzrxYGGTZlf6Wwbrw5iZ8cAhZ7pYzAWFTSqOSvQzXLbIpI6ucj+?=
 =?us-ascii?Q?pdWmk5S8zOSHA1nHiM88S1KLwvcToHXrkc6WhcMdgEcTComZAmi4wlu6zuji?=
 =?us-ascii?Q?yGRSSsXL9qAL8O5iPYeW7o3eSU7GHaGnYMlt32uT/v80t6EfNKFlu3xkfx+C?=
 =?us-ascii?Q?AUETxReNLlkqxDDUpk4obSqjAc/ixOlFl9+zO3m5DD5K83FBt/ZdiFQahPqX?=
 =?us-ascii?Q?i6/zG/WboPRhBtAIPdKHD/hZMv0rRKfVG8pXR/hhzW6kj2/K3Lbh8rZlyypL?=
 =?us-ascii?Q?K8vkMhbK7lemlcBKXNYV9gJSICc6Q4tFcQQ7KN3xRIpUqoaKdisoFyKKIfQo?=
 =?us-ascii?Q?D6GUdhQ+/y7JuPYB/7tmdBU8piU4ylkzXF0qR0YeeQGOkW6OQmPP4sYScSt6?=
 =?us-ascii?Q?U9l0GndsYSBveruyOtCMiKQuzVFxZ6W+sdRw/kxcxUdRVrz5FJkuPV1Pr56+?=
 =?us-ascii?Q?1rGp98y9lSmL8AVoxq3JAlMqt+OZZbPTCYvDOqt5L+yvz+uQOZ2b4llFe5Pm?=
 =?us-ascii?Q?DuOpeCfGvTB+WVKufmetkdkB1o89oF4LHl23L7sKeD7nc5tPzGJfgssBTtf/?=
 =?us-ascii?Q?zz7wQ2qOcXBiZpIXbRTB2e7fPpxnEZIlQ/nK1bJ40zqqiW87W40KaKp/N6Jd?=
 =?us-ascii?Q?JnwHud8VFWru37zDp7TqEedAkq68qo/9hMEj30/Z3F2a3FV4Cwc3fJ1w3fKw?=
 =?us-ascii?Q?PiAUNhAtzH6kvpi/WADJUBWXSYD8xojup1Q9IQnmXtsZCePekQG5RpYYJi2T?=
 =?us-ascii?Q?nQrlc7y9KqxqHC/UFuHUzK3jZpsbNAvpGcbVvuoULpCfHOnDjj6uvGlNXqei?=
 =?us-ascii?Q?axcDZEQp2BdDfkfL1Xa0x/s/BjqsQHxWpPOO6cRhSFru6SSUeWglPoYT6GYb?=
 =?us-ascii?Q?E7ej8pIdHnVprsZ7gjCCH2HTzaWlSjxfNtL5XPltxHbuouhgPyI8Jue9JG6A?=
 =?us-ascii?Q?XgGeoPoVSZBu1/MOQGsgHuPSq5fSUgEKvGpkhxXxu+xspn7MXJyw5Tdi7fUE?=
 =?us-ascii?Q?XDMmaLzuZ7T4+TiaJWRrhLYqYmT+PTOkDUetLkpCemNFo6UFsIqtOAnlSJV9?=
 =?us-ascii?Q?juGzJJQCF/nA25+VY/vzYP3uTdbjm1dOPEE5R+YwYCJGZebUTsSbRw=3D=3D?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 77304b01-335a-4a76-dc53-08da08939854
X-MS-Exchange-CrossTenant-AuthSource: VE1PR05MB7327.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2022 03:58:43.9008 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +mItDgtwud2V2nYET7RMgd36br8M9lt0MbjsuOAmlq7mdp4V9HTHK/lLFdZpYpvqDwULV74NgJGM0hFY3kGxoADZ3g3deMyY1ktMRkWTifg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR05MB4969
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the timer callback function tipc_sk_timeout(),
 we're trying
 to reschedule another timeout to retransmit a setup request if destination
 link is congested. But we use the incorrect timeout value (mse [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.93 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.93 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nV3lP-0008Do-Hx
Subject: [tipc-discussion] [net] tipc: fix the timer expires after interval
 100ms
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

In the timer callback function tipc_sk_timeout(), we're trying to
reschedule another timeout to retransmit a setup request if destination
link is congested. But we use the incorrect timeout value
(msecs_to_jiffies(100)) instead of (jiffies + msecs_to_jiffies(100)),
so that the timer expires immediately, it's irrelevant for original
description.

In this commit we correct the timeout value in sk_reset_timer()

Fixes: 6787927475e5 ("tipc: buffer overflow handling in listener socket")
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/socket.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 7545321c3440..17f8c523e33b 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -2852,7 +2852,8 @@ static void tipc_sk_retry_connect(struct sock *sk, struct sk_buff_head *list)
 
 	/* Try again later if dest link is congested */
 	if (tsk->cong_link_cnt) {
-		sk_reset_timer(sk, &sk->sk_timer, msecs_to_jiffies(100));
+		sk_reset_timer(sk, &sk->sk_timer,
+			       jiffies + msecs_to_jiffies(100));
 		return;
 	}
 	/* Prepare SYN for retransmit */
-- 
2.30.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
