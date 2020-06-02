Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7361EB34E
	for <lists+tipc-discussion@lfdr.de>; Tue,  2 Jun 2020 04:19:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jfwWi-0001Cg-Hw; Tue, 02 Jun 2020 02:19:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jfwWh-0001CS-6C
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Jun 2020 02:19:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=boab0CUOzQF15fkNdsT7B/Ykuv+GA4EXnGkt6HUdgs8=; b=LlEKNTA0mANFnZhcGMWcyyIubB
 FSUiUJ2iRCHvTp3Ab9VizdVeIbhWhMVaoIyyyEhNseDt21BnW9wD4uCtKw56TyXAZHsE2wMWvvrWJ
 Qk4ENTyweOP0HhGqJK6Mi5ZgZpfU2UG+U0mEE9ROLqEdF2IoTo9swiOrpy/V8y+n50pk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=boab0CUOzQF15fkNdsT7B/Ykuv+GA4EXnGkt6HUdgs8=; b=dn0BX77GBuclZQxmxkeD5ABS4d
 aC0nLG9KmxpFE1QSFXJJr4w/VPAF6lFAJ3V8dwP1MaqmvVGnsp0VgMwZbDqXV59YRIX5Sjnj/hCqE
 NYBTRh5CMXwO5du7tgaN6WMkR6X6XnKtJJ0xQ6Wt+o3m3JRcvT15NfL124E3bCUP99IQ=;
Received: from mail-vi1eur05on2111.outbound.protection.outlook.com
 ([40.107.21.111] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jfwWb-005haL-SI
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Jun 2020 02:19:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AeVp8wpilykT2XQquD6Jcdbu1HBSgS71zAAHkVk0E6VOfVVg7gyMHuAg6ZYkuoXN+hTJbi/G8qmdERsZ2lcGCR0sRbuW42HQ9UmguCDJkpvsReifbo6IjLPTPichufmdGkg1yyDYW2LZMRtyov1Ndd91uWVgG56RQ2Rta00TTxXUFJ4NcmGjqNuBNvOr36Fsn7RykQduzBhZnzEhOnWfcBrEMBcKGKKjOFgSKgNKObwL0vbdz6la52UZ/CJDIEIiGOtCVHtUUR0L/9b2Q+YWNHmEPtNAa/E5BLGd29DWNf3jONHrCH0C4J4b8pF2qUo8OLGnTrpyJKNAjX5B1EYyfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=boab0CUOzQF15fkNdsT7B/Ykuv+GA4EXnGkt6HUdgs8=;
 b=g9vwIOmsFjrMXAFDbfGHpPH6xk1f06YKeeB2HGMeco5Oh4mTTMm5EelBUieKCzulCnaS1qPDHa1MnUIugI2FuKKRjzEHmLUD3FSbp2lR3OYk/oRAuUXsAHrg28z1GyC171FOTJniDotm5GXiXjZA83W1PKywY/XnNXKxtscAq+eUlsUZzoRL5zT3VYTALCaKraf3tTxl3OkIzNmGx0L6+BdYeS2ARRkaVboJ36ipc1DhbLVg6b627FkUGfL/8I6H6trTk2ITgxlyHbd7DiCcebQ0yI+/iU3o/TsBlTpWuC+n5NhfupqSyeoVvRdRsUmHNLtwUVffeo/5VXX2e2jYoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=boab0CUOzQF15fkNdsT7B/Ykuv+GA4EXnGkt6HUdgs8=;
 b=CUQvR6s6aY0vqQtjH/aePu+a0TytKKVvOmv7P9ETlh0ZYlRWlZoEvI+n+vRD5z510JBlMsAbB8cqieJM3sSi8coAGSpNPuC3PwRU+obkE0DFHzIpGBn72h4SPbyB2ureYCogaahyHMvoGzEMNiRnboS8t5GQD+0PrMnDYUC5ysg=
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3927.eurprd05.prod.outlook.com (2603:10a6:209:7::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Tue, 2 Jun
 2020 02:19:22 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3045.024; Tue, 2 Jun 2020
 02:19:22 +0000
From: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
To: "jmaloy@redhat.com" <jmaloy@redhat.com>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [RFC PATCH] tipc: fix general protection fault in sendstream()
Thread-Index: AQHWNOQQv1bjV+LR5EmNEX6oC5egO6jEmc5A
Date: Tue, 2 Jun 2020 02:19:22 +0000
Message-ID: <AM6PR0502MB3925B7FD244AB41F6ADF9637E28B0@AM6PR0502MB3925.eurprd05.prod.outlook.com>
References: <20200528113506.30384-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20200528113506.30384-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f8eb4703-6974-49c4-4e5e-08d8069b5d5e
x-ms-traffictypediagnostic: AM6PR0502MB3927:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0502MB3927BEEE8B88507AF159F46BE28B0@AM6PR0502MB3927.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0422860ED4
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nKIGsWzBLkCK8k2lF2/giow8bPJH5BOvSRKJ/3e7WOLh4dPuXERDzMunz/1NqDUcP/3YOUpQ7RXDPTjj+7WtICu2RhiM7aljTw4qyIWOnRaHR8G83irvUwIyQJjJsMXkZxHkC96qRifMpIptR1Gr+O/p7rK9YBQdehHGm8c4X+NNAGVJKDNCn+vxNjivSuFl9wQMJWijzNJyA1HpzpgV+bKFZ9DWo/NhFniQz70yg9BTtKvkA7QjX/htiKi0RiWtpIMZEOhL2Ld0rr7WfI/NinId8wS97zwpA/CwNY7slkk5i4xeYGcb6iJmFqPs42f5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(136003)(39850400004)(346002)(366004)(376002)(26005)(66476007)(76116006)(186003)(4326008)(66946007)(9686003)(66556008)(66446008)(5660300002)(83380400001)(64756008)(71200400001)(55016002)(86362001)(52536014)(2906002)(8936002)(8676002)(316002)(110136005)(33656002)(7696005)(478600001)(54906003)(6506007)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: iBYuOAVJSzlzi6DHwjyo3BUHW9iHRLjpsfBVEeLm7lvquiK2hQOw+lBk9hQ3j0VOItmRTfDA2WBg5lmVXZw02nRgPyQGo+adk5ZSoTKLNnhGsFczNZotRIwdfBiAu0LgrXqoeTxNAAhUkHOF/+Oo+mTX17L0bitoRscJmboy5jFZykQjc/EJUxmWxwb6D64ULzvzwDe4nDfms7hX7qTNFyEF3p4AAN4b6Sr4pxu4Fh6OS48Gu0FqAwYXgOs4bOJoKJhGLIrEOOBcHrELyHsHWxDA4IMj0U6G6VaGrnffnWcVEjY8W8g8lesWs1XOCugfYBOcEZtQksaNroqQaVONPsQ+mInhmo/XlhEBeJB7tAVpUIg/TAVU8EtoGZtX9MjOuUffWxGrspPOF+TjiEN+zvSOXTfWxCAOJqHkBmsjIAT1OVwfMJFKIKiTPl7HmdeMB4kmXGmdEcSZLuhjWgP0AiMwP3I8lccfR0xNNBQC9PI=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: f8eb4703-6974-49c4-4e5e-08d8069b5d5e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2020 02:19:22.8544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6BCt+if2zqzrKB53X1kHodcvli2TfsJTXo/+SuSdjMdp4CSjbOF/0hyvfVweocrZtvjPcZwtXvnjds26A9JcDYZAmVo98f5uvx8JaFOt3nU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3927
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.111 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jfwWb-005haL-SI
Subject: Re: [tipc-discussion] [RFC PATCH] tipc: fix general protection
 fault in sendstream()
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
Cc: tipc-dek <tipc-dek@dektech.com.au>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon, all,

Would you please look at this patch and give me your 'Acked-by' before I post it?
I can see the patch from YueHaibing ("tipc: Fix NULL pointer dereference in __tipc_sendstream()") was applied, but this patch is needed nonetheless since it will also cover the other case as mentioned below.

BR/Tuong

-----Original Message-----
From: Tuong Tong Lien <tuong.t.lien@dektech.com.au> 
Sent: Thursday, May 28, 2020 6:35 PM
To: jmaloy@redhat.com; maloy@donjonn.com; ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net
Cc: tipc-dek <tipc-dek@dektech.com.au>
Subject: [RFC PATCH] tipc: fix general protection fault in sendstream()

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
