Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F43285EDD
	for <lists+tipc-discussion@lfdr.de>; Wed,  7 Oct 2020 14:14:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kQ8Kx-0002NN-GV; Wed, 07 Oct 2020 12:14:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kQ8Ku-0002Mr-5T
 for tipc-discussion@lists.sourceforge.net; Wed, 07 Oct 2020 12:14:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LcY0vmvz+FJEFgUGNkEgi/l0MnPW6Y4wxwaeaSBg6H4=; b=Lxm8aCwQ03Ht774Oa7ygcN5KHB
 6UGleZ8u3AwwjAxIqiUjZM/W5rP7YwmGOX96JyiXLxqDxPh+nztKS2X76TEZAS/YDwQrTDxaATvOE
 exvrvb9NvcwI54v2XXVhgcE26tt4OCsP2lmGTG21r7Rteg65mmfk7JwcjsGk2XIM0MNM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LcY0vmvz+FJEFgUGNkEgi/l0MnPW6Y4wxwaeaSBg6H4=; b=a
 SIMn9K7/QvbTEJGXHLx6bcy4wj03PIqDz5aTnWVEcnJUJzzEcFyBSW4p/8neb7e7/bn74XSJexP72
 WarkTHhd+PJA48WcESSCzSN3LWhkVC3JW8RL1gGqNrPMasFAaL5WonlGBxTgtZZdFTzvoco/kgpc8
 BZUkJf2BRGi8RgQE=;
Received: from mail-vi1eur05on2127.outbound.protection.outlook.com
 ([40.107.21.127] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQ8Ki-005xbs-4R
 for tipc-discussion@lists.sourceforge.net; Wed, 07 Oct 2020 12:14:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PhrTnjIpcLMd5tnLPwowCYNkH/Zbnr9Z3yzu2m+CPJoEnUz4sFpOhBon58qS3k0VtTvmBQ7P+snYYnil+FnK6hyg0Z51E95NNpDHUPKCRK4Eu9xJEA+XV99D4myr4FgutdY+yc46HHAaxAhgoG9d5gywVdNRYA2vJeXM1E53CxaJoO837ydEyAYb5avt55X+JDZa9eHRLKfwcswTVZZxK2s/UeK4Oc+fSNADOTfpEY5vM4RPaHEt2JhP0ew6iPB7KFv1SdB1MVhpEzmNVTUkiGULl/gdfSDkRanERVn02URlWkgACpGrz+ypRohlJY/E9nqlgUep2wLryAf7CnOrTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LcY0vmvz+FJEFgUGNkEgi/l0MnPW6Y4wxwaeaSBg6H4=;
 b=Cft7fjQwD9E6SSvChdLif9fEpquVqC7R1wBz4aIkMrQRUtKA4jcAgs7OhmApifsyiUILLbCWaQAMqLAL7clI6+nKH4vNk611IaXVxDzW9ZNmqt+8JQJc6YYaEh/gIHq3LnyFEC5ihypMPNkHVSMx8AB9elAiRBwmggheCZ2k4mLxPLW3XFRP5zQvtOFSSXaRzYEPve5e9P3v3pb8iUmoFSTNDTtcEoLKuXQb/3WVF0Zxr085zOW55/wG5LCFzLuECaRMZEwY4VbIKM5556mSYvPK1/qnosUgmFYcGGPM+sm2kHMZ19qOvYMRiw3PNKW2m8VO67iHZymyXdwM3Yivyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LcY0vmvz+FJEFgUGNkEgi/l0MnPW6Y4wxwaeaSBg6H4=;
 b=EY0Zwp2AhwbbuP8a+KS8PWP4OsbwYdnfWGRXkFfekHLAwV0CgLW0OQmRGVwBdNVu5jgdd+9e+jLANwAUEhxv4i5kSAYYpO9aXp6wM4a48CAOxbVyKyy2LtOc/vHLP9sUvCSAF4el4OltEOQKV3jKrnyYHZCQwYMZuafWsl+2Mec=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VE1PR05MB7485.eurprd05.prod.outlook.com (2603:10a6:800:1a4::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.22; Wed, 7 Oct
 2020 12:13:56 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4%6]) with mapi id 15.20.3433.045; Wed, 7 Oct 2020
 12:13:56 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Wed,  7 Oct 2020 19:13:42 +0700
Message-Id: <20201007121342.61932-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-ClientProxiedBy: SG2PR03CA0110.apcprd03.prod.outlook.com
 (2603:1096:4:91::14) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR03CA0110.apcprd03.prod.outlook.com (2603:1096:4:91::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.11 via Frontend Transport; Wed, 7 Oct 2020 12:13:54 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d2e190aa-29f2-4b11-55f2-08d86aba76b2
X-MS-TrafficTypeDiagnostic: VE1PR05MB7485:
X-Microsoft-Antispam-PRVS: <VE1PR05MB74850313A2F1D3D0DD107B3BF10A0@VE1PR05MB7485.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S1FXZK1RgvogkYJoUiZY1fE4Wjo9tLNj4/Rk8szSZ0wd785Rs0kzchvtnYDPUSXLc4/H8nTdH9fOxt5WQeBBrshNW0QGR3SlZPNeef3TTXhhwvjdVULgf0nvHsUdiJuCYZ+8YnBYYgN5mo1dgMTl4VjYfxKaQfflA32jnsxOSwYBVXu37O8C4bYkKpgJend/6r7bIBuS5D/M9SXOjUciRoiC1q0U0fE7MbKrHlO0yPHnvfWVCmSup/QFTQjj0Y4PTjmVPh/yjXaXq2LmAmiDPLSkApe2awmKrmc+7V9f4y5VwMk4dAUtx5E3fa1v09tfkzGTd3rNKDIcHa6c31mh5Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(346002)(39840400004)(396003)(136003)(316002)(16526019)(26005)(52116002)(7696005)(186003)(2906002)(8936002)(55016002)(1076003)(86362001)(2616005)(6666004)(36756003)(956004)(8676002)(478600001)(5660300002)(45080400002)(66476007)(66556008)(103116003)(66946007)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: CpGbZUgC/C8gvw9Dxe79vF9v9mlEIGagrBtuzxRB9hMbk0rGucULZ8fgBu2zbO17wFVRheiDAnEnWAMRoI74ocw0Dh6yJESbPp2QGKaQmjVqL86WogRWJ8spCXcuIyyuB9HVSJ69NhW2rY76lNKf6BJbdAa6BzZR3lq9CvOBJQvHIfm7vJu4HyK9a+t+LEmT1Q3u23wO8Q5wVw1vQUhS+eXopzQkukaedaKk4KQLGhK5A6TGFC0tilXhFO7wDlDP+YqU8hlICq05wThKwm+PsLZhb8+Q7X/fmg0Skf2dbdEdyZX8113S+pitKqii44etek/RCXaTrEjkhtl4ba6USs9rWnDXi+enMaY6hH7bw/6SqU4qXlY8a37LrZY/I1J1WqrnnxVX5OyzpVJYnu58bpyUEnnbbhoomWNpExPNSZu/Tj9KVwZQLOHe00H9Uaz1h6WL5t7ZfOLoqSUATlQzjfJnx4tjCAmVLYbnZm4TurO7+qx8EesLj5gCmhVcBDeNk2cQuZyzRSGweabX06YcUoNy8Y2nrrsiseGlkM6NHZDx07vDMhMIPtovmeB3kUFUgQq8cAJ2ThN3bfN7vC383T03RPPhezsbC9FlMLP16c0xEZeduHowxuN+HfbeFd82SIh+nYDj620ED9ZSd8un7w==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: d2e190aa-29f2-4b11-55f2-08d86aba76b2
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2020 12:13:56.3393 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CZqqJXS+y6W3qsMd2+BzUdDM7wJKfh/pCO7Ac01QiDswD5zuJ8z9FJySlYDuv+sG3mTnRriXy4RhT1exMnbDFdNRyJnKs1dJxZfjpflFZbg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR05MB7485
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.21.127 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.127 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kQ8Ki-005xbs-4R
Subject: [tipc-discussion] [net-next] tipc: fix NULL pointer dereference in
 tipc_named_rcv
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

In the function node_lost_contact(), we call __skb_queue_purge() without
grabbing the list->lock. This can cause to a race-condition why processing
the list 'namedq' in calling path tipc_named_rcv()->tipc_named_dequeue().

    [] BUG: kernel NULL pointer dereference, address: 0000000000000000
    [] #PF: supervisor read access in kernel mode
    [] #PF: error_code(0x0000) - not-present page
    [] PGD 7ca63067 P4D 7ca63067 PUD 6c553067 PMD 0
    [] Oops: 0000 [#1] SMP NOPTI
    [] CPU: 1 PID: 15 Comm: ksoftirqd/1 Tainted: G  O  5.9.0-rc6+ #2
    [] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS [...]
    [] RIP: 0010:tipc_named_rcv+0x103/0x320 [tipc]
    [] Code: 41 89 44 24 10 49 8b 16 49 8b 46 08 49 c7 06 00 00 00 [...]
    [] RSP: 0018:ffffc900000a7c58 EFLAGS: 00000282
    [] RAX: 00000000000012ec RBX: 0000000000000000 RCX: ffff88807bde1270
    [] RDX: 0000000000002c7c RSI: 0000000000002c7c RDI: ffff88807b38f1a8
    [] RBP: ffff88807b006288 R08: ffff88806a367800 R09: ffff88806a367900
    [] R10: ffff88806a367a00 R11: ffff88806a367b00 R12: ffff88807b006258
    [] R13: ffff88807b00628a R14: ffff888069334d00 R15: ffff88806a434600
    [] FS:  0000000000000000(0000) GS:ffff888079480000(0000) knlGS:0[...]
    [] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
    [] CR2: 0000000000000000 CR3: 0000000077320000 CR4: 00000000000006e0
    [] Call Trace:
    []  ? tipc_bcast_rcv+0x9a/0x1a0 [tipc]
    []  tipc_rcv+0x40d/0x670 [tipc]
    []  ? _raw_spin_unlock+0xa/0x20
    []  tipc_l2_rcv_msg+0x55/0x80 [tipc]
    []  __netif_receive_skb_one_core+0x8c/0xa0
    []  process_backlog+0x98/0x140
    []  net_rx_action+0x13a/0x420
    []  __do_softirq+0xdb/0x316
    []  ? smpboot_thread_fn+0x2f/0x1e0
    []  ? smpboot_thread_fn+0x74/0x1e0
    []  ? smpboot_thread_fn+0x14e/0x1e0
    []  run_ksoftirqd+0x1a/0x40
    []  smpboot_thread_fn+0x149/0x1e0
    []  ? sort_range+0x20/0x20
    []  kthread+0x131/0x150
    []  ? kthread_unuse_mm+0xa0/0xa0
    []  ret_from_fork+0x22/0x30
    [] Modules linked in: veth tipc(O) ip6_udp_tunnel udp_tunnel [...]
    [] CR2: 0000000000000000
    [] ---[ end trace 65c276a8e2e2f310 ]---

To fix this, we need to grab the lock of the 'namedq' list on both
path calling.

Fixes: cad2929dc432 ("tipc: update a binding service via broadcast")
Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
---
 net/tipc/name_distr.c | 10 +++++++++-
 net/tipc/node.c       |  2 +-
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
index 2f9c148f17e2..fe4edce459ad 100644
--- a/net/tipc/name_distr.c
+++ b/net/tipc/name_distr.c
@@ -327,8 +327,13 @@ static struct sk_buff *tipc_named_dequeue(struct sk_buff_head *namedq,
 	struct tipc_msg *hdr;
 	u16 seqno;
 
+	spin_lock_bh(&namedq->lock);
 	skb_queue_walk_safe(namedq, skb, tmp) {
-		skb_linearize(skb);
+		if (unlikely(skb_linearize(skb))) {
+			__skb_unlink(skb, namedq);
+			kfree_skb(skb);
+			continue;
+		}
 		hdr = buf_msg(skb);
 		seqno = msg_named_seqno(hdr);
 		if (msg_is_last_bulk(hdr)) {
@@ -338,12 +343,14 @@ static struct sk_buff *tipc_named_dequeue(struct sk_buff_head *namedq,
 
 		if (msg_is_bulk(hdr) || msg_is_legacy(hdr)) {
 			__skb_unlink(skb, namedq);
+			spin_unlock_bh(&namedq->lock);
 			return skb;
 		}
 
 		if (*open && (*rcv_nxt == seqno)) {
 			(*rcv_nxt)++;
 			__skb_unlink(skb, namedq);
+			spin_unlock_bh(&namedq->lock);
 			return skb;
 		}
 
@@ -353,6 +360,7 @@ static struct sk_buff *tipc_named_dequeue(struct sk_buff_head *namedq,
 			continue;
 		}
 	}
+	spin_unlock_bh(&namedq->lock);
 	return NULL;
 }
 
diff --git a/net/tipc/node.c b/net/tipc/node.c
index cf4b239fc569..d269ebe382e1 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -1496,7 +1496,7 @@ static void node_lost_contact(struct tipc_node *n,
 
 	/* Clean up broadcast state */
 	tipc_bcast_remove_peer(n->net, n->bc_entry.link);
-	__skb_queue_purge(&n->bc_entry.namedq);
+	skb_queue_purge(&n->bc_entry.namedq);
 
 	/* Abort any ongoing link failover */
 	for (i = 0; i < MAX_BEARERS; i++) {
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
