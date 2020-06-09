Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED98A1F32CF
	for <lists+tipc-discussion@lfdr.de>; Tue,  9 Jun 2020 05:55:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jiVMg-00008q-Sm; Tue, 09 Jun 2020 03:55:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jiVMe-00008g-Sx
 for tipc-discussion@lists.sourceforge.net; Tue, 09 Jun 2020 03:55:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wuBmliDA8zYecit0ihPz9jCvEv6Fz883spEtqXp5nSc=; b=i7eyC1oY61JglROlFtJXTlA42E
 eiodpv5ZkVWSPoZPWihm2zw6S65fyRxAAirDBCMGCSh6wzTW069Tgm1QpaEgAiP+Z2I8IecxDCGYR
 OCQyY4csfR89oQ+U5LIbojlxomy6e+WF+CxRDbqPaLseuIv7Ox0KjKV1WaA0RNlB20e0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wuBmliDA8zYecit0ihPz9jCvEv6Fz883spEtqXp5nSc=; b=P
 hsodc+ftu5AVtz2P714xrfh6ZvIonG2b/RBrIWVJvRP/V8pWF7oGbrTn4jrsmfeYfLHbae9R6VsKO
 KOvAGYiRVml58JPS/Fz5iq661NfVlf3bhNlGvlXZonG3oigWbSq/if/FqA9+mdwKvUwQCmIvCJKtT
 hE/n+Y6KLXZUQBSA=;
Received: from mail-eopbgr60137.outbound.protection.outlook.com
 ([40.107.6.137] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jiVMY-00CHZk-Jl
 for tipc-discussion@lists.sourceforge.net; Tue, 09 Jun 2020 03:55:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zc23MlYbzrM7v6WMp71h5RJWgCFxBzAXdN8A4dEXr6AVjbBfji7zBdKY4zX5vP1pRDxKpnz6kOgYMEfVqUIXJUamLBPpaeMiheibtSBPBhFXdQQeIzFPNyqQA7duhVbUprVq0vS/inImC7JntsIwwsoBuxCZOwcu886JJQHNAdOWLJrBLwmhiMoxb6+CcvoSt/D6xPC9p+/xoyV+spF1BFPKgsRhur8TNfArnGl/18+M3IdO+C4pANyLBNB/Kjk5rA6x71kpLJICHNkD/3/WmbPLsY6A7CdC39DE5FVqigO+i2fKyOfdkYT3VG3/Jj3kExZrbLdMwx9tQWL6IPCmWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wuBmliDA8zYecit0ihPz9jCvEv6Fz883spEtqXp5nSc=;
 b=F32CVWyLp+5BE4pHbOcygXazoqkRSvXBwhCZ6+euFizSZVBLgHSe5yaBosH77hb5PJPqw74Ke3APgGRQRVoHfLSuKbYzWfS1yMwYVKYt9EAajyIRoMAhVcaYrc2Lk4SQJmditmZydj5DTtcke8w6oC60k1gj7jDq8a7n6enpv6vnp7UumoB9RzRNSrQqi7pV/PuOz0+dK1HxGPHNsXidcqeniH1iq6UHxAx0CtUJ8uHKJK+kAs7zvmttXYjIDHhuuhAlBsX8rhsGYZ16THKygWziENvJIP5wtYWuaDgl1sCnEHr80Gu41sfKAwCYVGbGtK0prdNpnAlivxgTst5x1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wuBmliDA8zYecit0ihPz9jCvEv6Fz883spEtqXp5nSc=;
 b=Tsh4QOzYOF8WINfQ4bDuUHfd6NuuWH7kAbal4GhDCtooFeICpApcJHTT3Ip2h5ewowRCsIgwcPlogLmM/48MjxOCOsRm0nJAQaWL+gSly3qJV3GfIot+9YAL4G2dJYy1TLIYxaky+v3RKULd5CGWsAqFvTNZ7f3kRGea995+srE=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3750.eurprd05.prod.outlook.com (2603:10a6:209:10::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.23; Tue, 9 Jun
 2020 03:55:34 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3066.023; Tue, 9 Jun 2020
 03:55:34 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Tue,  9 Jun 2020 10:55:20 +0700
Message-Id: <20200609035520.28571-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-ClientProxiedBy: TYBP286CA0028.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:404:10a::16) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 TYBP286CA0028.JPNP286.PROD.OUTLOOK.COM (2603:1096:404:10a::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.18 via Frontend Transport; Tue, 9 Jun 2020 03:55:31 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7498f3ef-3183-41c7-a4a5-08d80c28f621
X-MS-TrafficTypeDiagnostic: AM6PR0502MB3750:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0502MB37504F6E0B136A0827EEE01AE2820@AM6PR0502MB3750.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-Forefront-PRVS: 042957ACD7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4UgruhFpoLOpjUzoeOhrtBKwE2Lfzf4ljBfWEw3Nj8906P4eYxNw5iQpkJD7Lz3WRIqrwq3qUinFYxlfgOUodpEnJHTML8XK8fmBvMK3m66F5CZYn13S/LmpUfFl4dt/TPv9LlqX+vwHZUnECpeQvVJB0QOOzrMiYH0q0c8T/BLNRWjTMKzu+91KKVbjI1Z66t8vm/IUtv08RP/cLa900KU+kEuZse+nmXoLNyDKmgeeaNQRTBOrbG51IuGY94Q8o2kRccsw80EZygBkeZXwComLOJWV+pjCJRFrOc37Gy95CWcYqztFEMU+OacXi5j7zBSouy5l3ViRMrv4oPaWVA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(136003)(346002)(39850400004)(376002)(366004)(316002)(2616005)(8936002)(55016002)(956004)(6666004)(7696005)(478600001)(52116002)(8676002)(66946007)(83380400001)(107886003)(4326008)(66476007)(36756003)(66556008)(2906002)(1076003)(86362001)(5660300002)(16526019)(26005)(103116003)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: CI4G9nQDC2mtJVWc0EO2BemBf5PBssLMCZBCWLswaTc03nO8Hn9Kssr7Gd4ui5Xdgrn1LNrTkSFyBAjeglJbEkhE1NJxNw9g3oH5mV6XZ8fiWLkypc1EY7PW9kJBnTYAP1e/XcXOzJgS45wtTHn3qgiXBWgtvcpIEttPMMZk2GSDj6gMIBTgNzOZydgp1407Mq2kIe4lxkkNhSeWps5zFKvQ1bkZdrBaIwsX5StXVleFLiv6QSgZmciUa6kh2469XG7fkVwjqyT+pcCTvIzb/GaYgzYMGiYqH9uzqq6oCt5OV9JRz9Vkq7aX7DImlrzSb0JbWHRA6DgsJjOug3031F5AppNCSg8v3rQfPl6dSxCBtii+d7eJUGTcYp8LLl7PQZ/b4xIJxyp+l2LtqgqeuibP2Bc+6xs0SrzXYYpppVxadJz19Jk/gbcgv3FcX7nWx5AYyEUEsS8mFXuhVYNVy+Fij4AcFUkz7ozMOCEfWjo=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 7498f3ef-3183-41c7-a4a5-08d80c28f621
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2020 03:55:34.5517 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gb6UwmaSWNGwrd1DQJ79X4Hhnbk2HaFTraD7aCCmdRrEs0VYw8jbVc/rvnTnsgyEyoxrJOf+ZgSMBUjbUKBctk+OHLH27iD8Z5bPObu6mF0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3750
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.137 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jiVMY-00CHZk-Jl
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
Cc: tipc-dek@dektech.com.au
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
socket, i.e. 'maxnagle != 0' before calling the 'tipc_msg_append()'. In
addition, we put a sanity check in the function to avoid calling the
'copy_from_iter()' with a negative size and doing an infinite loop.

v2: use 'size_t' in the 'min_t()' to get a proper value of 'cpy' (after
    Jon's comment)

Reported-by: syzbot+75139a7d2605236b0b7f@syzkaller.appspotmail.com
Fixes: c0bceb97db9e ("tipc: add smart nagle feature")
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
