Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 077121F186E
	for <lists+tipc-discussion@lfdr.de>; Mon,  8 Jun 2020 14:06:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jiGXR-0007KF-DU; Mon, 08 Jun 2020 12:06:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jiGXP-0007K3-4b
 for tipc-discussion@lists.sourceforge.net; Mon, 08 Jun 2020 12:05:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P+jOYOmyl66CyPhQSUsbl0ykh9DVN44B8eo7yWybpfg=; b=JT7a63RWuVqE439N9nYSYg23F7
 XRpkAaCkf3KKVM7C6cE7TeK1OvvINLyvW5uRq3gRA6VAzTxCSYF7g16jJJtaT7fORlBfGR/ktQB2N
 DEVym2wIdsxTsfLEWJMJrYTc/brZ3xuTruAqt60p7nlZh+lnmrUQeDE+E01oCX2kApLU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=P+jOYOmyl66CyPhQSUsbl0ykh9DVN44B8eo7yWybpfg=; b=T
 OaNGycIC7YxSk/kX3OJv+cQ9R+nfxYXxAt8S2rul2RcWl/yncRmksMNU6+eIUePxSVvDCvmFesSCf
 eS10DC1yK1oRUqzdQRXdkbebqRz1eD0T9BRGknAT9ZRra8fPEZ7eHUOkHg7ePLOecXq9vUyJni3zt
 cTKlmRqDneRR//gw=;
Received: from mail-eopbgr140105.outbound.protection.outlook.com
 ([40.107.14.105] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jiGXI-00DPoQ-06
 for tipc-discussion@lists.sourceforge.net; Mon, 08 Jun 2020 12:05:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Thsui10OziggLWD9h7VtbALlZroTKjaoZPvyuFycn5We+oJFFOpL6cwkTPu2fbP1wxIL2OueVtALMdPH5138P/Cf2O7GQPXOwsqAFKSKzvM49bfilLaJk0i4Tt2uAdHKy4dzKSoD+/Ygm1NZiMxq0gGfik0g/3+KpfFSCslSI3gfbUldP0oUxUj5kw6fqfwUI5jjoMmLkOX83ZB4xIuEU35izPmQxB3754JppMRw9q3ZgeM1qWAGikuWMk2KffZbAjNaJmT90WjLKEyD1Gt0VrHFaxmiZTwcPvJccK59r2aZ+nITN3SNRmAgH23cHbX6OFt+aBrpXBdIdKfPHJ2pLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P+jOYOmyl66CyPhQSUsbl0ykh9DVN44B8eo7yWybpfg=;
 b=WzAC+k8wJlZqb9Zflf0fUbjqf2LhjiM1fKTwUbWmJHbxoDKnyMRJdzB7CbD1cq7MVrHbftNwrIpuTJPlURQx3lqWSDDp9JFJ3XvM7RNz0G67YC2VeIWJuHZLbSGrG6svPr+GdRmCV05FBr/9CD0pP3m5zT3Vsa3Hm4rcSuW8yc95qxRcueL4SMA/LIZlEObSiw2d4OE0wfi7CuHWkTrPB0gItMGeUGt36Jp7Sp8DrH2j7WW+8utWkMieTRJpnP54Kw8YZefPMczkqyLXcYKG5rb0J6ISdev74z7VBgmlu86mWe9gS6gtBF6IdfCkfIeErz0iaDkI/8ZzilC//iCJpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P+jOYOmyl66CyPhQSUsbl0ykh9DVN44B8eo7yWybpfg=;
 b=lRLIgfBaW9dsVEVwWeBla5s/Lfy2qOiUSZQqevIWEXjwuL+lrFPpCItEN4bxzYOHBLjpMhdhqvb5rRynGQ9UPA0nguIV9BBb6UNcUHrtHXG34DDEh+9jzlrrW2+IJ7lI3/SBmoFxWvjJ79B5t2EVL2TjyjSGxqNsfKrB5k6bHRc=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB4006.eurprd05.prod.outlook.com (2603:10a6:209:1d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Mon, 8 Jun
 2020 12:05:43 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3066.023; Mon, 8 Jun 2020
 12:05:43 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Mon,  8 Jun 2020 19:05:30 +0700
Message-Id: <20200608120530.20690-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-ClientProxiedBy: TYAPR01CA0124.jpnprd01.prod.outlook.com
 (2603:1096:404:2d::16) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 TYAPR01CA0124.jpnprd01.prod.outlook.com (2603:1096:404:2d::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.18 via Frontend Transport; Mon, 8 Jun 2020 12:05:40 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a6b2f0bd-e2b0-42db-e996-08d80ba444ab
X-MS-TrafficTypeDiagnostic: AM6PR0502MB4006:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0502MB40061D7DB35EAA6D1794AA21E2850@AM6PR0502MB4006.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-Forefront-PRVS: 042857DBB5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mDvwE7mhrPyJpX0tv/D1nWqWLkKBMlVizuNyLwnoE5ydZRVALmi4cn8efrhAYWb2LGtKlZyfAFKssZazxqhdgYcm8aUVhri52kcSTUl7hm5PWoZVlIWHOGTTGNOC7fXN/UwHFZDKQ/wJD0lTg5mbs9vtQpWwtxDq8fKhOe4tGR7bbR67tEP7EmhUMtnk/H9sHwYphXY9p061McQtDDjhKWtdmd0os1zbQeIHD9iQjCtLAYRzUfABCbcK/oS+BYaXTxyy74IVa+z2svYqgqjQjFrMZtP7RDut7Ef652JX4/f29Fn8i86t39iUzjYoXg2DVRdE5LfRPLZxeG8PUDUFnw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(136003)(376002)(346002)(39850400004)(86362001)(36756003)(1076003)(186003)(16526019)(478600001)(66476007)(66946007)(26005)(52116002)(55016002)(7696005)(5660300002)(2906002)(66556008)(6666004)(103116003)(8676002)(107886003)(83380400001)(4326008)(2616005)(956004)(316002)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: p6vmFR2d0nut33CxHnCs+Seh8Absy6aLcWeW8RyvaPzmfc0eLJXHq1q5PzqF9TXAjdzAnRijDPRhELvtf2rhLFaS1ir3Vi2oQuRx3BCjTYVgfHEbDi1dsdxtZ63+f0mbAk7keHIRSiKPkLudL05xRduXbxdJyk7ltKr2tx1KPs0hW3MTiUxC5eFgGDU9Sx1OoI4GQ7DCPZvkhvr168tn3NuakrJnpzDgT2KpH/jP1ZGn0BeDa4l4lX708wpid+sWp1ceNATHplqWrS9LGV6qhpXiHMagv3u1GycINaq3EYytF1R/a2OH1gKIxWZTFKZDT84InWvpmU9SDtd/358CmkQgUvuf1cIbdPv2Nt8YVpbPef9rP/P6eNOwKG/pcrHf7nHcqhakK/4ljRmPb+gy6MPW1Fu0nP0hGbLUrh6Y8YPH8AJaAFBhMbIbtBRv6rka0XzwcRiojonSnJ2+yL1bPkLFxUpRShd69aAroT88NqE=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: a6b2f0bd-e2b0-42db-e996-08d80ba444ab
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2020 12:05:43.2521 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p+lJCagpI8OtbYu+AM1DKM+ffOYT92V3z7GYHXBWqi4onhJRVBqNArAJcvdkiL3OuagC7TZva7U7VhUamWDDUkSltimR5FmpF5IebOJh1Ow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB4006
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.105 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jiGXI-00DPoQ-06
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

Reported-by: syzbot+75139a7d2605236b0b7f@syzkaller.appspotmail.com
Fixes: c0bceb97db9e ("tipc: add smart nagle feature")
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/msg.c    | 5 +++--
 net/tipc/socket.c | 3 ++-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 046e4cb3acea..ea3ebf35e0c2 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -239,13 +239,14 @@ int tipc_msg_append(struct tipc_msg *_hdr, struct msghdr *m, int dlen,
 		curr = msg_blocks(hdr);
 		mlen = msg_size(hdr);
 		cpy = min_t(int, rem, mss - mlen);
-		if (cpy != copy_from_iter(skb->data + mlen, cpy, &m->msg_iter))
+		if (cpy < 0 ||
+		    cpy != copy_from_iter(skb->data + mlen, cpy, &m->msg_iter))
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
