Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4256B406831
	for <lists+tipc-discussion@lfdr.de>; Fri, 10 Sep 2021 10:11:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mObdS-00046P-W3; Fri, 10 Sep 2021 08:11:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1mObdQ-00046I-L9
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Sep 2021 08:11:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m5hhM7tLX5A5GEUztfwolzISE6oBb+JBnUxNunHj7lw=; b=Wcmo9zwlG57a6VdjrKosqtp1+G
 Pgwj2zaSzdaaMe8SKIHwKj5tAL1Tg+O3EDGxKZoMeSqs+C0wT972RUBpSkwpyriCp9DRbDLDLwvPK
 4VuIZFGLGs2bmPJwftedAcIbGZUyRchfOY46iEl6L6mQgOcmLZazTgq0hu4cmhwB+5BA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=m5hhM7tLX5A5GEUztfwolzISE6oBb+JBnUxNunHj7lw=; b=T
 /GUUPkw30pVBTKoIKZvlF109RCqoUCRYUswtUTDhfyQ+3LDQfpOWOLNTu7MMBTI+vq2OKQ5RWQ6xu
 7nNurdz7VrEwnp/OSWu1AcR7kekFLz/krZWv0DBIR4w8tpvoE68biDyku2p9AGb9EOj7/5nML3FGL
 82In1JdIlpuWwAVc=;
Received: from mail-db8eur05on2138.outbound.protection.outlook.com
 ([40.107.20.138] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mObdO-0000pf-TF
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Sep 2021 08:11:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H7yB1QxnMK9bv4j8mRrQqQuQbQoTjGQfXNYb9jdaZMDty0Fon0tKE/zB/AchtIiP6+mD+65YJozWuIJhxnr0BLLRsHDp/IYE+OMJLk9wcF25SnXHGELwHN5YEfBL3GIVJivmqBxgGRpc5CMraADgamUOZvYUl72XMm0pxVpb5NX2wGHMGto5xxRvMDnwWMessuv0XhieqZbWBm/QuITiccGKwA0wU/cXVnSxY+HJjJihAxFwoCndPveKFf13DjongZczaMkRdqweGZmuPxxxmdDDdcuM+vnE04TfPEa9R1yhv8IaDG1ueZrRmms+rU1Kp2eWSFzaAjnFj/blQ0AKug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=m5hhM7tLX5A5GEUztfwolzISE6oBb+JBnUxNunHj7lw=;
 b=DdXFaS2OPEGcyeq450Sa2ZIvCKxLavjkvLLeqORfUQsknG2Zxhw9+CmG6FucPz4+XUobnHELKgzdL3E9qyypKnaVa1Bh9sJRQfg38hSsFHkyhyzn0zssguD+VYKcU/nvY+KzGshSGoV8Vvl5S/cvO3GBSiryVyhVOkD/kwXvnafLpHg2VAZ2Ud43Y4Ue77Y+TV5SP8YYWHIiSzPnOUu7pfKvbpzGLVGaSAmQOEtoyqmv0riuOtQG/4/EMYp5xE8jJ4H1M+ropzf9KoJeLfDOtrydjYTi6D05/euqXAeuTNMXqly38MxWZZ3bkqAvJ4zJol3mVmuWR76bpmC+Xphs+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m5hhM7tLX5A5GEUztfwolzISE6oBb+JBnUxNunHj7lw=;
 b=E9xb2Cjs6z/y5rU5M6MOxbOrHsXe00Ck75m28GAmwBFKOS+FStleCyA1K/3LjVEOaS7dK2yPTIe4dwdf1lWGN2LFuQu/gdbioQQYDUM3uV+HwDtQgefKnhQ94SSsbi+zIK9FY2xRun7myk94HdT/cNJv9bNGZZmuX/6c9zPRsWQ=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com (2603:10a6:800:1b0::18)
 by VI1PR05MB4671.eurprd05.prod.outlook.com (2603:10a6:802:5f::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Fri, 10 Sep
 2021 05:38:43 +0000
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::31d4:18eb:d210:dce7]) by VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::31d4:18eb:d210:dce7%7]) with mapi id 15.20.4478.025; Fri, 10 Sep 2021
 05:38:43 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com, lucien.xin@gmail.com,
 tung.q.nguyen@dektech.com.au, huy.xn.hoang@dektech.com.au
Date: Fri, 10 Sep 2021 12:38:29 +0700
Message-Id: <20210910053829.58663-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: HK2PR0302CA0015.apcprd03.prod.outlook.com
 (2603:1096:202::25) To VE1PR05MB7327.eurprd05.prod.outlook.com
 (2603:10a6:800:1b0::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (171.250.162.80) by
 HK2PR0302CA0015.apcprd03.prod.outlook.com (2603:1096:202::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.9 via Frontend Transport; Fri, 10 Sep 2021 05:38:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c9183b83-791f-42d1-8d92-08d9741d4053
X-MS-TrafficTypeDiagnostic: VI1PR05MB4671:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB4671146685788778237A1598F1D69@VI1PR05MB4671.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: //89DDZffwOVRFLehxfqfDPUnOf9eSASuv7FgDFvSyDxU//rAW3WvpwyI2cgjIwWB74v99H35DgUlmqbmgjklx9zOXOAGRvco8nCp+WAHxePZvFVX9zLhDbdwVxv/BYzkMOue+R2goa7GBF/xjmXatzsgiHvrQG6U5cWqDRYhT9f6JmbHxO02db6hNk/jT2oQ4lipk8ESgvAWCNhwhu0NVOB2kFBIB/dr8gtnYiO9xpJ+D4I0JxP6m+Tg6+PkUkJgSmCQ2qk2RVUt59IctBSu5KFm3bZWDyE8i8WAijowoJROFHCo2JL13Xi+0FfWVTccbbHThVTPxPXDVEnXFu2CzqAWowlOOERJfmX1NTgvLB7ckB6Wz4TdVTYEu0mg31rwJpapdMqQN4wmCE3s9lx6g4TQkUGP2CJYGF/RpyHf/f2M9jbeotDPCxMAMMhP2TIMNJQC/OlPRwPN5L4gUXEc5mN4ppmTpj1qo5Zb78aLwfmBdP31Zt74t34jlgjTUVg1XZTHwcLf09cuvhVHdHe6HygJSV6nAytQK+ryuor1nQJ2qcCVww2LWiLwW+20o/KBkIlTR8RZsojG5xVbxLpY2EMo7u9r7kGE/OnE1bVraW4Z840uxNNE4ndyVEdbyZZjkyUHDbV1BMELnzmE8v9/9tMfXCak4Ci30ikhPv8R1K4gLPHcsELL+ki7IvnVhuJQyj03EwBu6xTa94zD0mGAg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR05MB7327.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(376002)(136003)(396003)(39840400004)(2616005)(66476007)(66556008)(8936002)(8676002)(103116003)(186003)(52116002)(956004)(36756003)(6666004)(2906002)(86362001)(7696005)(66946007)(55016002)(6636002)(478600001)(1076003)(38350700002)(83380400001)(38100700002)(5660300002)(55236004)(316002)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1Oan52qAk8Bi84fq0v0Xlcg+eUb6J/fg4REGRY9XS9ddMOv0khWulXB79pZf?=
 =?us-ascii?Q?3y5EMiEVA54eQwr5e2jzM5SRSRc5BwD13GfiSsSjxcWjrCYvww2w86TkfQ3f?=
 =?us-ascii?Q?A5hwCgZueE7Wxxx3auuiTkzLekOpYHyFKZjuyXEbUaB6+LF1Zr1nQsjI7l4v?=
 =?us-ascii?Q?vOYxbXQ4N//8xylCeJilSo1CJYwVvgbXZ1svWmMqh2aVeCWSfd4fNJm236+j?=
 =?us-ascii?Q?B9+d0woJ+ZGmNWwJKgoJZP4k2la0W0IKFY7QGGG9wAzdoSpY0MM0V1NqSG0G?=
 =?us-ascii?Q?0jlbN9wW8CucojXIszSox+Frpifn0hRarkjsjo6CVujZAaGrmAESrJ99oacI?=
 =?us-ascii?Q?oq3m8UDCcI+NVK0hfEmz4U0CYtDf4tSvTbp+86Fh9icLtwQUsma8qkQKnq0+?=
 =?us-ascii?Q?n/oq/71QqvSsChCAbxdG4CQMXXbVCSkuysuOLui/4Z3LnxTfUP5fqf1K1UOT?=
 =?us-ascii?Q?SGoghoGaOrlgrmofh/bdSkb8Tj20CU/IohJCntVT5OnPExBaEhn2QEsfbDsu?=
 =?us-ascii?Q?F359GLNzZdoEgRbDbrvcLygSMddDjNx9Q7MQxTlv57Mwm25u/QBVZ47uGCXy?=
 =?us-ascii?Q?LP28mxYiN8o3e0sYn+xEkke32OtlMKaZhg9ncaP25H03IeV8ZQPz4vTwb6ls?=
 =?us-ascii?Q?vG7cKtKDGNUODZeWADlm8AB2iUuamRhMY2ES81AdC6+Bk6Q0kJ5VsdwS6Z59?=
 =?us-ascii?Q?jbCSKohPQwRdgDyJrw+vcOQok7csSJB69RsMcyQVYjyEFbsooK0EK+pCS+Yw?=
 =?us-ascii?Q?qZrDDVfF0sDMuEzlsu6FwtZSXVsgBf21U+ASh9HW5FEzrS+v96J7I8Q4YALb?=
 =?us-ascii?Q?4yuJnZw8HJoHUwFOCS7TROYp32YREpG9R0vcw1b7/GFiNk3Clb65brG4jFS0?=
 =?us-ascii?Q?pHQ5bmms35Df3tfO5+LEDPedIE0AWR3VbRFj2aQjbNeFtCM5ADc/lJ1/RbL4?=
 =?us-ascii?Q?3ySHSfYIKzcQ5qGE8/Sp6zP/ER8KcFVUML0cALLCdB0kKK7Aeh0AXfjoQxKG?=
 =?us-ascii?Q?sMxubeuS1L3X5RNPuZz5WjaUAaWj1y5M8XP5AIuv5nkiRl4H1z980hisVI8f?=
 =?us-ascii?Q?RRYs1wGk7cIm5wQJLxBTCpFG31eBn8JhLO4T2OfLbHytJ7YJJFHXiW7SI5uy?=
 =?us-ascii?Q?OMMiPAsSyW17kA+/W4CDFkXhOwNGAd3lkVg4TpO0RA4l349goYkaKDCQmkCV?=
 =?us-ascii?Q?eqVrrgzZlDR2ghiirbxC1PYqTtrZx/yUy6F5uunnsfHPW0v1fGmiAEt8llxB?=
 =?us-ascii?Q?gYXWnmZWuCl1l6F97bNtryG5U60vvjEsmD3nS5Siu67Vdrr2r4g0arTcQYM4?=
 =?us-ascii?Q?3jhVPyeln04WZpFGoKN9HG90?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: c9183b83-791f-42d1-8d92-08d9741d4053
X-MS-Exchange-CrossTenant-AuthSource: VE1PR05MB7327.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2021 05:38:43.5132 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qHzV+bZ4X6gEp+KEYKODNTSVFXeLuTwbw5W9Vb2ZKI9Zzyoc6MsvhYZVMHo+d+1/E5w9rO96YtegaOgcqrBe6lljo/U4UVYKRYfunqzGMNc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4671
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In tipc_sk_enqueue() we use hardcoded 2 jiffies to extract
 socket buffer from generic queue to particular socket. The 2 jiffies is too
 short in case there are other high priority tasks get CPU cycles [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.138 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.138 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1mObdO-0000pf-TF
Subject: [tipc-discussion] [net] tipc: increase timeout in tipc_sk_enqueue()
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

In tipc_sk_enqueue() we use hardcoded 2 jiffies to extract
socket buffer from generic queue to particular socket.
The 2 jiffies is too short in case there are other high priority
tasks get CPU cycles for multiple jiffies update. As result, no
buffer could be enqueued to particular socket.

To solve this, we switch to use to constant timeout 20msecs.
Then, the function will be expired between 2 jiffies (CONFIG_100HZ)
and 20 jiffies (CONFIG_1000HZ).

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/socket.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index a0a27d87f631..ad570c2450be 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -2423,7 +2423,7 @@ static int tipc_sk_backlog_rcv(struct sock *sk, struct sk_buff *skb)
 static void tipc_sk_enqueue(struct sk_buff_head *inputq, struct sock *sk,
 			    u32 dport, struct sk_buff_head *xmitq)
 {
-	unsigned long time_limit = jiffies + 2;
+	unsigned long time_limit = jiffies + usecs_to_jiffies(20000);
 	struct sk_buff *skb;
 	unsigned int lim;
 	atomic_t *dcnt;
-- 
2.30.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
