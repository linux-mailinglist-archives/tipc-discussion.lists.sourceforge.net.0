Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 264E82EB8EF
	for <lists+tipc-discussion@lfdr.de>; Wed,  6 Jan 2021 05:32:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kx0UC-0008Ss-EK; Wed, 06 Jan 2021 04:31:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kx0U9-0008Sj-FA
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Jan 2021 04:31:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1ma27HwBM7xmyeGVoGMDaH/dNF7163uBpdEFzSo6Uqg=; b=gX0ty7nqCc5QImZo91CJXpgd9F
 fgmC2WgOj8Ti/mEA05BnwGrwFRkM51qdO86CZQXr7fY1FwW/0cEgyd/jcM+uOkkqGsafT68eVrVc5
 jFN7lOM8AI3zA0veGBRmjiIet64aPusPYnGxniscQ4F4YjMP6E5nZxOnEVj31062JwHk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1ma27HwBM7xmyeGVoGMDaH/dNF7163uBpdEFzSo6Uqg=; b=A
 SZe0+6hvLKti86+OSzXwo9GFJl3XstTTx0vpPj1DtxJ5009fvPUidBOyr/NXMLK5tfe3DwbBNNNle
 W/wCFNkDx3VivFkKyP5hhON7W/ZnwDV6mCMf7DXrdLCyV4pKzrbuXhg56cIVAhdGiDDTLTNcnSuiY
 A267ane4NuPR/3R8=;
Received: from mail-eopbgr80133.outbound.protection.outlook.com
 ([40.107.8.133] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kx0U3-002EeQ-J2
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Jan 2021 04:31:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S1rYQfWBSvikSKuGjJpX55iM1IkwMLzpwvgexpays1nS+eBzCilXhyoMMtWpEs+b9cBt9qsdhBqp2JL4D80AQeroFmabBlAxKogX7LxF08KW8Kx6Dw/4KFPePnRJ9nW47hTS1ETDrokmmFKZi6ErK/GYP+2E8hpASLXoRUclYLF43KbCh+vUvN23x3y17T8b8U5PWP51rZ+I4pHWT0CgxtQwSAfriSsaJPs4M+4gmub5bdJ+KPXlpcgdwD9s5zx2JLmqTjdEQWjo4S40XMnWhmjpZ9Zn984iR3GInojM2Jnabll6CtuT/Xu4P5DY+LEJ/W7kOwzYECml4f+t/oS+0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1ma27HwBM7xmyeGVoGMDaH/dNF7163uBpdEFzSo6Uqg=;
 b=akQsXKWPVch6O5Imek4pXL/YwuyMeekEATHi9KGZk84aFyM4Lc2S7RTWWfGStu0SsZq2KCqrYHpzkue+mLflqSWYUpfKW5YzYdogBOzwRUWvmJvdqEiG+NUEFvFcToEiNhTsP2er4wksVAjec35XdTx60zNxvL9uMJ3TTMCspAgsvQUROOoDEECfGCtkyYu8u1hk9yOBbPucfbQUizjuPdZq5Purzk9AEFrg5MjQHIpfq2GntsxKTs7fhjlhN2fPGOd3RS7z3TWk3nAcfr6PsjvlTdIWFW4TeGIjpsl321904J6Dz07s3fLk1z+bnLd/zPSIZgXYvysLKnGaRS0TfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1ma27HwBM7xmyeGVoGMDaH/dNF7163uBpdEFzSo6Uqg=;
 b=G/w2+NSn1IpbcXzh/B9PltKzSxrF7o95PoabBMGlbYa1pUc6rio5F4Pocvfk5PWOAcHCFsE/IO5zBSQP1Qksm2Pz9MehQgRJ+RmpAHIgkQKXi5ntLxfQMbCwBZ1rsbJ/IHymKgzAxJiVnVma74nlp1cS1QOENNN0WhMbkHmHVQE=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB6703.eurprd05.prod.outlook.com (2603:10a6:800:142::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Wed, 6 Jan
 2021 04:31:32 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883%6]) with mapi id 15.20.3721.024; Wed, 6 Jan 2021
 04:31:32 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Wed,  6 Jan 2021 11:31:16 +0700
Message-Id: <20210106043116.195808-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-ClientProxiedBy: HK2PR04CA0082.apcprd04.prod.outlook.com
 (2603:1096:202:15::26) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 HK2PR04CA0082.apcprd04.prod.outlook.com (2603:1096:202:15::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3742.6 via Frontend Transport; Wed, 6 Jan 2021 04:31:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b0516873-69f0-4194-612f-08d8b1fbf188
X-MS-TrafficTypeDiagnostic: VI1PR05MB6703:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB67034D8EF9E6157E3243D8F8F1D00@VI1PR05MB6703.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KKWfMjDf21uGjtX47B/2ieA5tViffUB4l6kkTiP0vKQvH7qOZozmPFn81Ylja2cgiH6knGWr3yEFP8zkNC8vO98B+5EfqpvFLL9ayq6ZLFJ4Ccb7Njpgt2d/wdrWHahcvpGDsKfLQTio+4ax3XaD6xnASaJ8jBiAJdpam+L6yGaf0gd2upQUrqCVWokE2PNDbRa8KbdHMHy0Q0dBsVKbIwU7QMwzqo9EuxfspGnASmoPDAIWi1UBvW2aRYIR9mBHZH/VcrdHraW5nAFhE83fllvXVdDQN1cXvNsdeLRhpkKYwfodoYId6xi66zafo7wqv8QZApx3pQyJYQPw42TSRgBvEMhCmlXNEDVmjsPlPKcD/iy8bXt+TKojzvG9BKl6YtswK03G0ORPsZGxjOYfGw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(136003)(39840400004)(366004)(396003)(316002)(6666004)(36756003)(55016002)(478600001)(16526019)(186003)(2616005)(26005)(1076003)(956004)(2906002)(8936002)(66476007)(5660300002)(66946007)(103116003)(66556008)(83380400001)(8676002)(86362001)(7696005)(52116002)(4326008)(107886003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?tK+EY9hEdBQGI+DR/I+N64mQDoFXDEnLSzw9HM3waP/zjcpqRv7G/Fd6dOtf?=
 =?us-ascii?Q?lxoIcSPc79xMCJmWxpwkmSQFQ8Z6Y4uhoL3RF4v4LcI2VC2j27v58ESfXWTe?=
 =?us-ascii?Q?EQs5Lv2YbBSjEjiuMjfNrHoqEQsJJliI3s2KwGa88GL1FxzzbTKk/w4ao6ke?=
 =?us-ascii?Q?RLTTykQIur9R8pHiXWSVmgHS62eu1P5tCnuRwJ9BXykEKJsF+fmQTsrQ5M7k?=
 =?us-ascii?Q?FlnNswzRhvL+uVNu4SzFpNJLkCpmNA2TGBRWe2+hIWg4yJIO/6F8INUfnnS0?=
 =?us-ascii?Q?UqNCyxpBHgoxEvSSWlVPYRu4Oo7hKGwX+Y3srmb3NqYE87pakqKM+YKSpqZU?=
 =?us-ascii?Q?g360WdLzqxSc76vRfFDw/snuBE6tWIKOFbsrMGf8zl/FSITFBAtB6B46bvlh?=
 =?us-ascii?Q?G4nQS6j3jQRxrMj1eIXmlNmXxsKIRcR6YqkQhMOGO4Zcf1XUgiAkA9CRRncI?=
 =?us-ascii?Q?EH45FT7/nuv5PEvUOaiqSJPeUO6C+PN25rw9fEMh5e9nNPfhKlyFKkrxzQmo?=
 =?us-ascii?Q?NoFIBmnnoEUDAjLmtkZFJp351z6DyDWWFCycjuxntnv3S9lVhBt0pIL3f4TQ?=
 =?us-ascii?Q?iM4l8jrGbl2aRJyYCtVdJ5WoVt6AGkuq68UCq1nQVxvFRYhQebr2x17XNjKl?=
 =?us-ascii?Q?fdnpxffwVcVE8x4AD5drSFPt0OlZ+cTpnf5L/9t8GmEXC0HYCs1l19kuqK9G?=
 =?us-ascii?Q?oRy1BTWFJcZeB3GGb/oW/oSpWfE5GSVWEM1NmsUOh7gElxZqAKQ/e8qGctsG?=
 =?us-ascii?Q?EKGQqOnfEgLsq6HJbnWdBMhSEtEN1pKnROlitEjzx6u/8i7Ol/96JmTLMfd9?=
 =?us-ascii?Q?YdpiL/6od9twFrQrN6wBojMHox/zKhinfNbSm4ODmhhRmC/cgD7fm1FNbq0K?=
 =?us-ascii?Q?xuc8RNfXv6Pw2fWvnwqbh33/prxuHCmqxFAEPvqX0PoaFH0fhbwybGSf9mmo?=
 =?us-ascii?Q?srbH5g0T1RXMnLOVXIjaiSL2efsoIgnoSFlc1fdWRTUWPduVMnlPYe0U3HXN?=
 =?us-ascii?Q?e9V5?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2021 04:31:31.9220 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-Network-Message-Id: b0516873-69f0-4194-612f-08d8b1fbf188
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ail5cs9WmxjhkyQLnnWpyixinSPeBqN5zJByFp+9ITW/Im6GvZ3L+qB35ybZVmE05GByxzNIbVVDVXmdeP/oFTURQolb9skOtXYnVu+7UHQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6703
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.133 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kx0U3-002EeQ-J2
Subject: [tipc-discussion] [net] tipc: fix NULL deref in tipc_link_xmit()
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

The buffer list can have zero skb as following path:
tipc_named_node_up()->tipc_node_xmit()->tipc_link_xmit(), so
we need to check the list before casting an &sk_buff.

Fault report:
 [] tipc: Bulk publication failure
 [] general protection fault, probably for non-canonical [#1] PREEMPT [...]
 [] KASAN: null-ptr-deref in range [0x00000000000000c8-0x00000000000000cf]
 [] CPU: 0 PID: 0 Comm: swapper/0 Kdump: loaded Not tainted 5.10.0-rc4+ #2
 [] Hardware name: Bochs ..., BIOS Bochs 01/01/2011
 [] RIP: 0010:tipc_link_xmit+0xc1/0x2180
 [] Code: 24 b8 00 00 00 00 4d 39 ec 4c 0f 44 e8 e8 d7 0a 10 f9 48 [...]
 [] RSP: 0018:ffffc90000006ea0 EFLAGS: 00010202
 [] RAX: dffffc0000000000 RBX: ffff8880224da000 RCX: 1ffff11003d3cc0d
 [] RDX: 0000000000000019 RSI: ffffffff886007b9 RDI: 00000000000000c8
 [] RBP: ffffc90000007018 R08: 0000000000000001 R09: fffff52000000ded
 [] R10: 0000000000000003 R11: fffff52000000dec R12: ffffc90000007148
 [] R13: 0000000000000000 R14: 0000000000000000 R15: ffffc90000007018
 [] FS:  0000000000000000(0000) GS:ffff888037400000(0000) knlGS:000[...]
 [] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
 [] CR2: 00007fffd2db5000 CR3: 000000002b08f000 CR4: 00000000000006f0

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/link.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 6ae2140eb4f7..a6a694b78927 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1030,7 +1030,6 @@ void tipc_link_reset(struct tipc_link *l)
 int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 		   struct sk_buff_head *xmitq)
 {
-	struct tipc_msg *hdr = buf_msg(skb_peek(list));
 	struct sk_buff_head *backlogq = &l->backlogq;
 	struct sk_buff_head *transmq = &l->transmq;
 	struct sk_buff *skb, *_skb;
@@ -1038,13 +1037,18 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 	u16 ack = l->rcv_nxt - 1;
 	u16 seqno = l->snd_nxt;
 	int pkt_cnt = skb_queue_len(list);
-	int imp = msg_importance(hdr);
 	unsigned int mss = tipc_link_mss(l);
 	unsigned int cwin = l->window;
 	unsigned int mtu = l->mtu;
+	struct tipc_msg *hdr;
 	bool new_bundle;
 	int rc = 0;
+	int imp;
+
+	if (pkt_cnt <= 0)
+		return 0;
 
+	hdr = buf_msg(skb_peek(list));
 	if (unlikely(msg_size(hdr) > mtu)) {
 		pr_warn("Too large msg, purging xmit list %d %d %d %d %d!\n",
 			skb_queue_len(list), msg_user(hdr),
@@ -1053,6 +1057,7 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 		return -EMSGSIZE;
 	}
 
+	imp = msg_importance(hdr);
 	/* Allow oversubscription of one data msg per source at congestion */
 	if (unlikely(l->backlog[imp].len >= l->backlog[imp].limit)) {
 		if (imp == TIPC_SYSTEM_IMPORTANCE) {
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
