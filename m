Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A8D1E5E63
	for <lists+tipc-discussion@lfdr.de>; Thu, 28 May 2020 13:35:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jeGp6-0003Ic-1f; Thu, 28 May 2020 11:35:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jeGp4-0003IB-1z
 for tipc-discussion@lists.sourceforge.net; Thu, 28 May 2020 11:35:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UtVP/Kx4q13PYSWUV0oDZTJ/xDxr/WR0B85mgI0cIZg=; b=VsPbgD4k1Ys1Sk0WHq2pGb0H8h
 4VmI7JOzK3Lgl5DAznKmR7DN/i0pVU7SFhnkNjl31VVlR5za+Eb2yy9qdgIvaxI8iaqWRRDe1mchq
 B1d/7CasT/NzJHZFnRsWg9KDfnau6K9uD5bmdUrNoFdERFUx0IQRwUXnStN350eZKf6A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=UtVP/Kx4q13PYSWUV0oDZTJ/xDxr/WR0B85mgI0cIZg=; b=M
 yfawGGpqrarHxGiw6mBr1L6WTZnPrS8atO+pKoNB5bWnXFNXTUixguRbvqcMcOWQ6LsyFrvs6Wt/Z
 vPjvEJS6ink30tnKGVxFhpoJQsvUanicjdQiFfpTxLd33CVgr9qmI0Xa2H3GtUxX35qUiHluV9ZDc
 uXqP7Rc/eOrZQKYw=;
Received: from mail-eopbgr10138.outbound.protection.outlook.com
 ([40.107.1.138] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jeGox-00G19d-Gs
 for tipc-discussion@lists.sourceforge.net; Thu, 28 May 2020 11:35:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OK8r3v+FwubOM5w4frCcz5ONUp6lhYXkvUO6aXJ+F9x5aCktL5gr4dQvd9TGDUadSerBGMtIBeRJF5GgQYi7ENRAOXF/L64r9zjgPKsHydeknIvtyYMezYXxq6kausZRXlJzw4fdkrv3I1rx/Ut6Lr2uWSEJBx8dUPlPq9Ha6TU7MF0IaRBICs3qh/hFuMOWodT6sVnfCr3ein/4RcX2mNJOuEweslKUvV30XVIdxfJR8Owo6tiPMNRoI3cOybfJ8aUUCDUZNU0Rr/vX3uTPgZwI4RE6I35Er6hWAE6BKjYUglZq5KYMKmnXJYWmT/DSt3QQOg3E7mtcqvbSHzLrWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UtVP/Kx4q13PYSWUV0oDZTJ/xDxr/WR0B85mgI0cIZg=;
 b=oN7bf5VAXnyWy/GmJqxoI91Brgxe2kEHznkPAD++ioeU1DDIfa7gMbzLqMDkF3JyOzo5cJGC1OE8osbAugs6sl5sTUqXcv+ZEvzMp5Ykh62PQB2Sj63K7UiOPYnr91Wqkiaa8IusIylWrCXFh/OKo4PkyTW0qZNab/7SyHV4Pa6jaaTYXiQ9xIBjI9N39KvyJhRHefxvxZkOlL2dDEVlPZdgR5oG2YP9+thBNb0qxmq7juAEHBIwbpzvCVcQ+1miVWx9B1cOawFtxALtZ7URp67+ouySmhTD3ByRD6GPkj4UeNxpXn846hkDBRkd2YQjJjKNYRpAcTL5COrTykcxlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UtVP/Kx4q13PYSWUV0oDZTJ/xDxr/WR0B85mgI0cIZg=;
 b=nOid+mv56yJDjF/OYJbPVTa8D0SG0t0eaoOSVfRq2GMfgVUAv5p6Z6VG88FYOW7ITloGhGLoaHU/ztR//ao3UcF+POsFkN0uOrDhxLxmMu2+GWIRiPhQ1mbOMHUF4giPSOu8fWy/bl92BrTnBU7SHYrj97P0NkC8YCz9PM9WVss=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3687.eurprd05.prod.outlook.com (2603:10a6:209:8::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Thu, 28 May
 2020 11:35:19 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 11:35:19 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Thu, 28 May 2020 18:35:06 +0700
Message-Id: <20200528113506.30384-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-ClientProxiedBy: TYCPR01CA0033.jpnprd01.prod.outlook.com
 (2603:1096:405:1::21) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 TYCPR01CA0033.jpnprd01.prod.outlook.com (2603:1096:405:1::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3045.17 via Frontend Transport; Thu, 28 May 2020 11:35:16 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 709e9b4b-b597-4f22-7f77-08d802fb331d
X-MS-TrafficTypeDiagnostic: AM6PR0502MB3687:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0502MB3687231300AC0C3AD4CDBE5FE28E0@AM6PR0502MB3687.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
X-Forefront-PRVS: 0417A3FFD2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5SSrHGwTzKmZhJafhWhqsHhR5D+qoooEVmr9uEp+8j0OcUND7b/oGL5iugP59SwJ4qe1ZMq6/7Ct6jRCZ4JDQ0Xo1AO3xB1vzM7+3uYJylEpzUV1hfpHoa2qcZeroAx4164IuQ4ati26PKmXSgpqJ15tGwUUEvwOH/rRWcEBsVZV3Y3ZKrSPEIP1Vyz1N562X9AngKdBeiB4FVB3Lz9p/mNeR3FoL/aHScXUkvJoLniwmaQRIfAvwN33QtpfUrFyOkR1YqcNQGQGXL4umw2kES+eAnqKvW3WiFKGALlmvFNclbxbsDf/uLrpYV+yh2gl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(376002)(39850400004)(396003)(366004)(346002)(55016002)(8936002)(86362001)(2616005)(956004)(316002)(36756003)(478600001)(103116003)(83380400001)(5660300002)(4326008)(8676002)(6666004)(52116002)(1076003)(107886003)(7696005)(2906002)(66946007)(66476007)(66556008)(26005)(186003)(16526019);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: 9iAPCm6KvLTuQVU+5jhXkmYrEa8u2ntktVlfiwGw1kcxoweKnarqCHPllA7mfv0fHeE0KFpikVciwoL+FLPlFDMSs5sYSzAGwLopqDzreyktlL65pdvu2uAKj7m0nCjdc8dtX7KYG0Jg+bOnBwmJRPWKX3XiDDMKsAmyappSE01xb0mQsMRAQAe9IZ8RGSV+ajiQXkDNvlkiG+YsBJs1TuZkv/B5QDnzstNxbIU262xtrZFfYVgyUF4nq+x4Bj7b/k1KtlBP7McQYF4QfYi+CXUgJe1Eb0576IyQmJ3480rEo021lpWhKwl5Zs3u1MPP5+IB3og4xXiLT0epKMtc7IfOqPGW9H0XEt1VfovmG74cZg5PdsrJvYauoKznNd8aecX3SXyUYydZcG2NlLuGB5sewS3GCaqE9OD8hIpvFOt6vf//9y3Rp6mNa56YuNZ4spiP9V3JhfIDTPg0SHN9Pk2YouqIVj2jUtkzGVmb9ks=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 709e9b4b-b597-4f22-7f77-08d802fb331d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2020 11:35:19.4481 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3AHlAc+WJE4ewdwgPm5AC9FWROaIvqmcLwF33LoHlRzLvFDUCgwAwTvfwdVbj49VIHAR2h+/RPKPXq7pXP/mBp0t8X/ZY9SKJeWtQnT5T1w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3687
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.138 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jeGox-00G19d-Gs
Subject: [tipc-discussion] [RFC PATCH] tipc: fix general protection fault in
 sendstream()
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
Cc: tipc-dek@dektech.com.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

syzbot found the following crash:

general protection fault, probably for non-canonical address 0xdffffc0000000019: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x00000000000000c8-0x00000000000000cf]
CPU: 1 PID: 7060 Comm: syz-executor394 Not tainted 5.7.0-rc6-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:__tipc_sendstream+0xbde/0x11f0 net/tipc/socket.c:1591
Code: 00 00 00 00 48 39 5c 24 28 48 0f 44 d8 e8 fa 3e db f9 48 b8 00 00 00 00 00 fc ff df 48 8d bb c8 00 00 00 48 89 fa 48 c1 ea 03 <80> 3c 02 00 0f 85 e2 04 00 00 48 8b 9b c8 00 00 00 48 b8 00 00 00
RSP: 0018:ffffc90003ef7818 EFLAGS: 00010202
RAX: dffffc0000000000 RBX: 0000000000000000 RCX: ffffffff8797fd9d
RDX: 0000000000000019 RSI: ffffffff8797fde6 RDI: 00000000000000c8
RBP: ffff888099848040 R08: ffff88809a5f6440 R09: fffffbfff1860b4c
R10: ffffffff8c305a5f R11: fffffbfff1860b4b R12: ffff88809984857e
R13: 0000000000000000 R14: ffff888086aa4000 R15: 0000000000000000
FS:  00000000009b4880(0000) GS:ffff8880ae700000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000020000140 CR3: 00000000a7fdf000 CR4: 00000000001406e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 tipc_sendstream+0x4c/0x70 net/tipc/socket.c:1533
 sock_sendmsg_nosec net/socket.c:652 [inline]
 sock_sendmsg+0xcf/0x120 net/socket.c:672
 ____sys_sendmsg+0x32f/0x810 net/socket.c:2352
 ___sys_sendmsg+0x100/0x170 net/socket.c:2406
 __sys_sendmmsg+0x195/0x480 net/socket.c:2496
 __do_sys_sendmmsg net/socket.c:2525 [inline]
 __se_sys_sendmmsg net/socket.c:2522 [inline]
 __x64_sys_sendmmsg+0x99/0x100 net/socket.c:2522
 do_syscall_64+0xf6/0x7d0 arch/x86/entry/common.c:295
 entry_SYSCALL_64_after_hwframe+0x49/0xb3
RIP: 0033:0x440199
...

This bug was bisected to commit 0a3e060f340d ("tipc: add test for Nagle
algorithm effectiveness"). However, it is not the case, the trouble was
in base that we can make an empty 'txq' queue after the
'tipc_msg_append()' in Nagle mode, especially in the case, syzbot tried
to send messages of zero data length!

The same crash can be reproduced even without the patch but at the link
layer when it accesses the empty queue.

The commit solves the issue by building at least one skb to go with the
socket header and optional data section that may be empty like what we
had with the 'tipc_msg_build()'.

Reported-by: syzbot+8eac6d030e7807c21d32@syzkaller.appspotmail.com
Fixes: c0bceb97db9e ("tipc: add smart nagle feature")
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/msg.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 23809039dda1..604c03adabc2 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -221,7 +221,7 @@ int tipc_msg_append(struct tipc_msg *_hdr, struct msghdr *m, int dlen,
 	accounted = skb ? msg_blocks(buf_msg(skb)) : 0;
 	total = accounted;
 
-	while (rem) {
+	do {
 		if (!skb || skb->len >= mss) {
 			prev = skb;
 			skb = tipc_buf_acquire(mss, GFP_KERNEL);
@@ -246,7 +246,7 @@ int tipc_msg_append(struct tipc_msg *_hdr, struct msghdr *m, int dlen,
 		skb_put(skb, cpy);
 		rem -= cpy;
 		total += msg_blocks(hdr) - curr;
-	}
+	} while (rem);
 	return total - accounted;
 }
 
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
