Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC104E1F80
	for <lists+tipc-discussion@lfdr.de>; Mon, 21 Mar 2022 05:23:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nW9ZQ-0004Md-FD; Mon, 21 Mar 2022 04:23:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1nW9ZP-0004MO-2C
 for tipc-discussion@lists.sourceforge.net; Mon, 21 Mar 2022 04:23:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X7+V9g/vEsGeW02MpdIYDO10cJWYSPHxr6ZhSyzl4G4=; b=ctBxqQqkFWgt1WcneUwBApz9Z+
 zLlYDmgEatxtrIVHxoY6+90cO7JshJIylrsa3MdUelOvQGpJoxl5TUQZB2WKJAEUCPYBlumezvBQq
 oHtr1z1M9ZW3MkX73MxJqGq4wy7nWFrvk/1867tEnaUioO6yfH8nos3h3kyAKHgF/iuU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=X7+V9g/vEsGeW02MpdIYDO10cJWYSPHxr6ZhSyzl4G4=; b=m
 mtF7j5Z0b1A/oOFlkrnMXKHtt/pVfQXMcYivipbzXLRI3oQPjzWCWafM9ymF9ZovSHX1ucpdYIqQe
 HibDk2qGaN2GiQMyxl7PT9FamhxUE0zi7JBf8PhuNDX4JLAvtUqf7+OEJOSXAMQQX1UgcRMVITPMT
 NJlUnKWP7L+SAw8E=;
Received: from mail-db8eur05on2095.outbound.protection.outlook.com
 ([40.107.20.95] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nW9ZF-005ZVc-BF
 for tipc-discussion@lists.sourceforge.net; Mon, 21 Mar 2022 04:23:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ob4DozOjuuDjT9KruNLYUKn8WXarUBVknQMHZbiUxU9bBsP7Gzif1CAm/n0zEr3L+QhhJwUNHaFEwd0sAlWP7Mpcj0m5T2jjUqkNXHlz6/tKxE+hQYFSQJvzhbm3Iq2q2YlDSKD7uA3n1tSqGCFPtXP4y5d3AL3IOw9OjX0MyTbPh/abPJh0Lfr9XHmNwVGMWCtYLMrRPwB6zVB8qbDHnoczHJ4Ud7G4yYLGO8csWPAS4rZDmVBl87jcj5u95KdRr+jsAEyF5rExO2EfLSj37DZhzVcUKTjUElpPuGln8GemZQBT8jFYJETuE2kjNlMoP07VVPF2k6dSX1TwzdOVkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X7+V9g/vEsGeW02MpdIYDO10cJWYSPHxr6ZhSyzl4G4=;
 b=bgH9XqdY8/aOHDXWpgz08UCChhbir1vUL+OP+dfDZGy71LT2aEcjJgxZLgR0kHDxwNND2UCm5HRugs7sRAHod47esCwy+oRVu+mvPiK6G9XMYadTdXkqMtrXU/kHFEpi5ByJiXIIO8orn/tDLa/TY6hMIU1JgfeChfncVYzQB/eYkPkOGCApW0ADtgFSvWL7BvFl7shs7P/BuXtsqsFfIryv9Eh3PL79IfIYGNGwfsawbbwiYYpW7kfwHpfRXgt/azxOS5yBCDXBsBBgj9yYIa0R6QSxG5aLaeUnngl+0nik7eH7sVOMLkosYg1TXuxdzVLW8XPQali7MC0v//8YRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X7+V9g/vEsGeW02MpdIYDO10cJWYSPHxr6ZhSyzl4G4=;
 b=fJNHmjcOQqFGE07bz7wctuWUz5IypZHlbfofisT2XN6WD8ouDb3uBeT1b8TsncUAjEvVB9q87GQ81NbDn8WCOCOAKjerBlF6F31NcfRiUC1TfrvNpjmJ14AfyJqETmhwPtiGti/frGyW6yb7MtzJJfNIHQRl9Ov/NWWPhyNEgd0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com (2603:10a6:800:1b0::18)
 by AM8PR05MB8241.eurprd05.prod.outlook.com (2603:10a6:20b:362::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.22; Mon, 21 Mar
 2022 04:22:45 +0000
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::641c:7898:65f6:8b56]) by VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::641c:7898:65f6:8b56%6]) with mapi id 15.20.5081.022; Mon, 21 Mar 2022
 04:22:44 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tung.q.nguyen@dektech.com.au, tuong.t.lien@dektech.com.au,
 duc.x.doan@dektech.com.au, kuba@kernel.org, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Mon, 21 Mar 2022 11:22:29 +0700
Message-Id: <20220321042229.314288-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: SG2PR06CA0148.apcprd06.prod.outlook.com
 (2603:1096:1:1f::26) To VE1PR05MB7327.eurprd05.prod.outlook.com
 (2603:10a6:800:1b0::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5221c9d2-cb3c-4de8-0b3c-08da0af2724c
X-MS-TrafficTypeDiagnostic: AM8PR05MB8241:EE_
X-Microsoft-Antispam-PRVS: <AM8PR05MB8241210CBA65428087E0BE8FF1169@AM8PR05MB8241.eurprd05.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HmYHLbwhXPNA01T8XSraAOI5HarEqevrQfUHwxP9kX52W372W+4X5T3Fu3w7NwUEtvzCF5rYGY6YfgQMbelOw0cUcz7+WjpNM8VK1C+Apg6SS22KWnzO3dRGcgE9894RlFjxtpP+bP5qMRKAQ/9n2e6ndZFrXJNyOXaw8xwUMea6Be+HVl46wxed5ENkq3z3l8PN4jwwHbMKO4AjzPMLTDfIYSLcSpzGrrnzyLTxykfG0kWzq7Taskvo4JkOiXspnhVJ7uZDc+sAOwp5ULt+GSYzRRadxa6zxs1jfOw0qgBHGU/O/+v4ufTjngJhj09r4Jy29hznWZfOY36fgc/IfNULjHzNvcHoBI0ulsjyuWEVMqnPO5lwFtaJMHnm03810Z6R58a0cK7tWZcW5527zqvnABGQa3LtuSVLhRsYeAYxwF37OHV4ueW/saZH2rsMMp9E2uS+wUDU5dspAC6RNf5PTLE/Aywk00/KXvjAiO/AV44w68aKMib8Gg305AEh6r7ZdjjZ8mzTLLKL0li8chHmhvV9rw91E2kXOtFSNfOV1rH1jdFJT8TyX+jUtAgDHPkWuh31IdfatMWZA1NH5g63OR83tYRdmCPdv3tKD2YNmLEicPuoWhZst+giRBM6qZ8e/Mbf8phAU7JUgw7fnl91n1TNmoN1itNOpkHc+TACO7CqXfoh3lh5Ns7+udI9whWyd9dcupeAbkme4hqCiA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR05MB7327.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(396003)(366004)(39840400004)(136003)(376002)(346002)(86362001)(1076003)(316002)(2906002)(2616005)(83380400001)(508600001)(6486002)(8936002)(66556008)(66476007)(38100700002)(38350700002)(6506007)(8676002)(52116002)(55236004)(103116003)(6512007)(36756003)(5660300002)(66946007)(186003)(6666004)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iYhdwItXCxV/l18NcQjXEPrSoyEXjT/R1N6MvQIYLv6dSu7cloqzujp/1Y/V?=
 =?us-ascii?Q?kOFMIG9SaG09fwnIEEl3mqP2AtFppckyY0TSaeTxVwC8zsNcgVGEJG6/xVmF?=
 =?us-ascii?Q?XTxWEICFy7PpNZUgRHc7FN/TMoz8c7Xwl5r0BaP6fN/Yzci7kf7SWdi/vZLT?=
 =?us-ascii?Q?YUjc9o//YSM6fWzGD67OwQjZnH7ak54MimuxGjzgN74J9ULyGoXDeYme84hi?=
 =?us-ascii?Q?bYEPfPj3Tf47MtV8fSeCdJCf6bi48uVnk0QY5VqtVoXwmeaDgU9gMbtK5jcq?=
 =?us-ascii?Q?rUAIxEPT2t5aTV1EBalKVnKL0FpyxH76f2uXst69rUKIVU3ESs4j/anD2Edp?=
 =?us-ascii?Q?a7aF3XMFurBx6w40r65ykAoJbrXID9lQ4QaktWEVdLUNvsbNIij9TbgeLcrU?=
 =?us-ascii?Q?21jK5/kZd3aG5jGmPuhiZ+PhGUgV7Jq+r3xS4K8r4pwXl24+52A1NEuD3B4u?=
 =?us-ascii?Q?S+1g78YJUKxrBb4oYEfOfO79yTS4rNSKKRWRcZ7/KH3LMcyl/Fb9MHOCSHbi?=
 =?us-ascii?Q?6biNDHHLEXlqr930cubzBbBNJujyJza/10HvQyF89Uj0IQD/iHoZ1CFUSRc/?=
 =?us-ascii?Q?W6VTsRmVM16HdG+M5gcczdgcdfqAhCrLFqMAJXBjhsC8YjEJ8M4dyCcTybjO?=
 =?us-ascii?Q?N+J3BlWcC2nN1xANfgXXHSljASxnA4LXaQkPL0PrvBluw2G2PRpOAIqPfHlk?=
 =?us-ascii?Q?JKX6WEx1HwmelTf7JTA9Z8V+s4wP0c1rAa6pGuu7f9iobx/lNLQYyDziKLEK?=
 =?us-ascii?Q?KWgWoGAjpBcEzPEfPbDz5aA/iygZ9Ghw7Hh2lYn19NtknsYxtpUt0ryW6zQ4?=
 =?us-ascii?Q?AxMvchmyP66Ljim+zKFPyB56REaonF+yij5ZoPjOdgzqY646hGiVr02bFSkf?=
 =?us-ascii?Q?oYPUaLbzWlVn3C3s585Edj56f8GCKzkNLXcNVFUYyIPhCbzFRgWUGzSn2g8+?=
 =?us-ascii?Q?rtHzLXiB+OkcKblLNmLPt6lvls3d9mrI4HWpVTvpxm+ljkwxWnj++3KCQAKz?=
 =?us-ascii?Q?x4Vt860hmQVJ6syoVJWyMFxDCDT29bUpocByhZtkfIy0LZei1PFNJAVsTold?=
 =?us-ascii?Q?2/QgGHMSndOBtwxtBtqvDlXdO6kD9sQCvfWs5odqackmyFVL7CwbPVv0Ip+N?=
 =?us-ascii?Q?YZQuRnJ16N3Vcvh8nhI4IKMYoB7BKAPJsyHpHl3M8H1tJhMliRVMuluKjigl?=
 =?us-ascii?Q?p+fbQMC9bvTD/GysdZQPAUe1C1TgmkjdHADNKc7nWRIaj/ILdDzXGUKfZYsd?=
 =?us-ascii?Q?HWmeecedz8FYi6b0JlK6utaO2R9UYHbdIC8yrEV0Mgy2L+jUbK+p4V/iizrc?=
 =?us-ascii?Q?SYx0gyOrb30u7RjAS+5tzORCHdoiqziXcdxGOwXrYXmreBDkgfgQimJmpbVd?=
 =?us-ascii?Q?IepaZBN79PR3C/QVVVIoicEgjHjvp4XRhlaHM+gtguNkSQzVVmjGlTihXleD?=
 =?us-ascii?Q?GABDDMErTd79uwqUDMKSKPBXkebypzChBuYDh+dXTvSeRyHQ09pmtA=3D=3D?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 5221c9d2-cb3c-4de8-0b3c-08da0af2724c
X-MS-Exchange-CrossTenant-AuthSource: VE1PR05MB7327.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2022 04:22:44.5433 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TjKPYV146zHrUn8V8OCdwFDhnSQvj9l4O2jA0vZd+PVCPNwcaS9HaTYdzX0Bcpcq8eV5qvGffatRNYHs4RVpcdzBXIk6bG7lNSAh8OSXQFk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR05MB8241
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 no trust [40.107.20.95 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.95 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nW9ZF-005ZVc-BF
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
Acked-by: Ying Xue <ying.xue@windriver.com>
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
