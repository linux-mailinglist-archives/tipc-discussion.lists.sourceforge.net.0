Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 77ADA1F6588
	for <lists+tipc-discussion@lfdr.de>; Thu, 11 Jun 2020 12:23:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jjKMQ-0004TH-MB; Thu, 11 Jun 2020 10:23:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jjKMO-0004T1-SA
 for tipc-discussion@lists.sourceforge.net; Thu, 11 Jun 2020 10:23:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FxRFjp9i/M4XJkrDAjgvr+hQCJ+HpRt3j0I2b2paE8w=; b=UxEYGeKixiz8o8xZAky/3he2Aj
 kBRMuNU+tJ9RRJsJS/HFzwHtWYCu3hChd9nFV0cNOR3OstHpXNQXEBHhwmADPAYH9Qzl7DMpCKyXG
 VsthBRas741HAPkgLaAsUV31Sgj3dROMpeycQxdEbMzH7yhkaC6TomdMUPHDxXFmZYoo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FxRFjp9i/M4XJkrDAjgvr+hQCJ+HpRt3j0I2b2paE8w=; b=l
 KYLiKoV0b0pesfkLvNvIX+zBQtrDEBnn2DnhLFxY5u5yBQy+Acug8wwlkHJv/UT8B1MRno4yw/jVw
 ShFoadvpxGUM+Wy8QTw+nMiyM+jIddudlQh8/Pcaco8bKLNfDmvaenrsS5/QDfLD+k0Idhq6+lYSd
 uyJD3o9ZVNfQbejY=;
Received: from mail-eopbgr70107.outbound.protection.outlook.com
 ([40.107.7.107] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jjKMM-00FILA-7U
 for tipc-discussion@lists.sourceforge.net; Thu, 11 Jun 2020 10:23:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HvPqOlTS9+GAv8fADj22RHsZNq9dMsA4kIwgM1uBn2bbNip1+6O5KOWGtciJtha8rkHwCxVSJfdhXa8TSQyG1QXcuQOxi6eoWvhPNBbbi5x5Io2JbznBRXAoieCOifcMRBeoTnMjmVjV1KKZf/0BgPSiZSoi5uiJq3h6WhEAOSYvQotC/hjJ56RWuYsF3Z6LZWtwlexWi2g8ddorbTYjIszBzkoCKSl6A7+vypGAIR5SshK36A8/oE+F3Aiy25Qdf/HIgRsKA7awRx/vRcCM7nqRlSjpy3WgU6zSeGc/1oRY302z1wpHcdAwYZlm2jehbHEglbk/7k2lxvnGTbmB1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FxRFjp9i/M4XJkrDAjgvr+hQCJ+HpRt3j0I2b2paE8w=;
 b=KA1vr5FXWgeV4Hb1ABGw567QKLf2Xb6bCBao6vg/KMHkeKd/8W+BmT2oyRYBCAPqFM4YJxdyoYg2q0W+DpCRX2KyKNfSZwxJFKV1etp9biZXnV9/rkThcQSsO/sEec+/9fgG1I4ha/qUFDN7f/wLSb3rWoWCmrP2bdUTuWaV/hq6AFJ4UbBh8+JpWbh8Bmst1g0l5BlmrG9BUDorV29hq2UPSNURSOlEC4h46dq1i8rCd/PTvKek1sXOfqJtOM3W7nptMBd837LxvyH3EFqseYiD/zeSSWE7MSWJQLfPPNPzhaTsiRd9yLbJQ/N5Y5BQJR6X1/z/K5LSNCKTCpJQ1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FxRFjp9i/M4XJkrDAjgvr+hQCJ+HpRt3j0I2b2paE8w=;
 b=fp71K/HFmCUbjP+akfGjdPzM+PNZ9grGWsdTfBSYri3j+Rr2tXm1b2X3yjfwSvl/ZHWWL84sJZ7b8WLYCZqoYdMN/0r30CsqYKcckpTtl6uK22gsp2jr//SBaIWultBPaZ6cC0dizA8hpJrCEjuTUHjLIv612Bl7bYDNbPjVUVw=
Authentication-Results: davemloft.net; dkim=none (message not signed)
 header.d=none;davemloft.net; dmarc=none action=none
 header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3816.eurprd05.prod.outlook.com (2603:10a6:209:10::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Thu, 11 Jun
 2020 10:07:43 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3066.023; Thu, 11 Jun 2020
 10:07:43 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jmaloy@redhat.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Thu, 11 Jun 2020 17:07:35 +0700
Message-Id: <20200611100735.24184-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-ClientProxiedBy: SG2PR06CA0208.apcprd06.prod.outlook.com
 (2603:1096:4:68::16) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR06CA0208.apcprd06.prod.outlook.com (2603:1096:4:68::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3088.19 via Frontend Transport; Thu, 11 Jun 2020 10:07:41 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5e86a98f-27dc-4b97-8a88-08d80def484a
X-MS-TrafficTypeDiagnostic: AM6PR0502MB3816:
X-Microsoft-Antispam-PRVS: <AM6PR0502MB3816527C2C07CF8AC87DD368E2800@AM6PR0502MB3816.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-Forefront-PRVS: 0431F981D8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6VToQgoL2WaLUKzuQSpDm6tcqQBrx/8arS2cHMkFj4BtlQ7pyjhLdKxs7p/JZgISilAaai+qrJK9e27JZJgwi9EJ/VKVZzSEefrwB8aaomrSU97OvRcL6gNdq7jIgj5qc3utf5PRwbaTAUv8kgU1wsbZLyIJspsvvHTyPU3+DxYbk3AhixzbC6ob/x5vLb5iOsh82D09lSCq2ocAnoFbeqPRIaBRz/pRMbjaTjlagG8AY5EnCgpGpK7AR+9SbVwffGSffal8K6kvoaJJ3LQ3c/gzKpcPJzb8FXTldD7q3bpeSFa07VF0QEeCa/rpc04aYjaRkwBp2OOw3gM2ESIHkw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(136003)(366004)(396003)(39850400004)(316002)(55016002)(83380400001)(1076003)(8936002)(103116003)(6666004)(8676002)(86362001)(26005)(16526019)(2616005)(4326008)(66946007)(52116002)(7696005)(5660300002)(2906002)(478600001)(36756003)(66556008)(66476007)(186003)(956004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: +8MQ9Tq6NcALglcKPG1YVDB3kYLMips3AbdHy+huj4SaLqvyF+zYVCU7ZZpZ3NMlLhaLl/qnfa0gHP0m78GZyzdSqRD9vR7KKh0Td/pU7g2rB/Sp4OMt13wunZz4JXBlel3yu7OsC/1wkDic473iio1r8EV4G+VbM2qtZ922eyQD/0e++jNu4OZlKBc5xwbA0cgpGVln1RyqFlDT03SUqBCg/NzBbcZc8J7ycSTVBvx4Hz93OHeP2+EhgyVdMw7b6r9Btkp/ZakCaM1KqIekosvI7iKk8MPplR1RaeIbAe40+R4wnSPYamaBcjCBke6tcMVKZoY9nHS/Rk2b1n/RiQR95wvUqn0oAEh+iKc39XeMICxpwc2cSwJWtci5QJynv1yUcewaR2wMNJOtAcltcpNO7pwK4jG6Y5Now7nvvTcLHC/4RzyjUfNlOXKQwLz/2+xp4lgQ30CTq1vS15qxjNDQFRUJjn6eMnyi1ZkfMCg=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e86a98f-27dc-4b97-8a88-08d80def484a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2020 10:07:43.5523 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OJ0Zbay087DSrE80ZMqJe3VAvRnNbG9w2iJ6TSM87H8q/n2LIGKnlCF7XrtNQxJ4CI2l8Ho95e/bG6GuxVVmiMY0YS/bNKgH3t7iy5Xndr8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3816
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.107 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jjKMM-00FILA-7U
Subject: [tipc-discussion] [net] tipc: fix kernel WARNING in
 tipc_msg_append()
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
Cc: tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

syzbot found the following issue:

WARNING: CPU: 0 PID: 6808 at include/linux/thread_info.h:150 check_copy_size include/linux/thread_info.h:150 [inline]
WARNING: CPU: 0 PID: 6808 at include/linux/thread_info.h:150 copy_from_iter include/linux/uio.h:144 [inline]
WARNING: CPU: 0 PID: 6808 at include/linux/thread_info.h:150 tipc_msg_append+0x49a/0x5e0 net/tipc/msg.c:242
Kernel panic - not syncing: panic_on_warn set ...

This happens after commit 5e9eeccc58f3 ("tipc: fix NULL pointer
dereference in streaming") that tried to build at least one buffer even
when the message data length is zero... However, it now exposes another
bug that the 'mss' can be zero and the 'cpy' will be negative, thus the
above kernel WARNING will appear!
The zero value of 'mss' is never expected because it means Nagle is not
enabled for the socket (actually the socket type was 'SOCK_SEQPACKET'),
so the function 'tipc_msg_append()' must not be called at all. But that
was in this particular case since the message data length was zero, and
the 'send <= maxnagle' check became true.

We resolve the issue by explicitly checking if Nagle is enabled for the
socket, i.e. 'maxnagle != 0' before calling the 'tipc_msg_append()'. We
also reinforce the function to against such a negative values if any.

Reported-by: syzbot+75139a7d2605236b0b7f@syzkaller.appspotmail.com
Fixes: c0bceb97db9e ("tipc: add smart nagle feature")
Acked-by: Jon Maloy <jmaloy@redhat.com>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/msg.c    | 4 ++--
 net/tipc/socket.c | 3 ++-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 046e4cb3acea..01b64869a173 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -238,14 +238,14 @@ int tipc_msg_append(struct tipc_msg *_hdr, struct msghdr *m, int dlen,
 		hdr = buf_msg(skb);
 		curr = msg_blocks(hdr);
 		mlen = msg_size(hdr);
-		cpy = min_t(int, rem, mss - mlen);
+		cpy = min_t(size_t, rem, mss - mlen);
 		if (cpy != copy_from_iter(skb->data + mlen, cpy, &m->msg_iter))
 			return -EFAULT;
 		msg_set_size(hdr, mlen + cpy);
 		skb_put(skb, cpy);
 		rem -= cpy;
 		total += msg_blocks(hdr) - curr;
-	} while (rem);
+	} while (rem > 0);
 	return total - accounted;
 }
 
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 26123f4177fd..a94f38333698 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1574,7 +1574,8 @@ static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dlen)
 			break;
 		send = min_t(size_t, dlen - sent, TIPC_MAX_USER_MSG_SIZE);
 		blocks = tsk->snd_backlog;
-		if (tsk->oneway++ >= tsk->nagle_start && send <= maxnagle) {
+		if (tsk->oneway++ >= tsk->nagle_start && maxnagle &&
+		    send <= maxnagle) {
 			rc = tipc_msg_append(hdr, m, send, maxnagle, txq);
 			if (unlikely(rc < 0))
 				break;
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
