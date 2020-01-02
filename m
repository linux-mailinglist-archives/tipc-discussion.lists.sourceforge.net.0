Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C27F712E440
	for <lists+tipc-discussion@lfdr.de>; Thu,  2 Jan 2020 10:10:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1imwV8-0007tp-Nz; Thu, 02 Jan 2020 09:10:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1imwV5-0007t3-DR
 for tipc-discussion@lists.sourceforge.net; Thu, 02 Jan 2020 09:10:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oGFLS5CNKVUTzr9FjW4Gx6dwZs1+RHkOlz+R//ag4T0=; b=V8Muaus+OHmF3kVcnSEFiAbRlJ
 fxklKgRqSV+NMYwd7WafFA2JzXzbpY7NDLMxx6ujLbRWZPJhceBpH4+8x3upMC9G61Rd/nHMJbHu7
 EN4dC4kp3GvVbE4XJmeOtpnENkZrmME0hs5ns08P7eRa/K5gnbuv0dV304/75KBSOrxM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oGFLS5CNKVUTzr9FjW4Gx6dwZs1+RHkOlz+R//ag4T0=; b=DEdH75MonFpHk0hRuSxydLQUrv
 qWEH4vpxKE5aNJrcBNru4Pt4UutmhlSQ6t2+a4hYmbXFT4yf3bzdKIaKpRHZO+tFVHoYQ9kqP/HeI
 dxlKDB5aCP9EWySEtqQ+6V24Lg98yn0lkbcXMAaWABm8+aXJr7VpkPDKmMRUdNYsRHeQ=;
Received: from mail.windriver.com ([147.11.1.11])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1imwUw-006jgr-Dw
 for tipc-discussion@lists.sourceforge.net; Thu, 02 Jan 2020 09:10:39 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 0029AFao021342
 (version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
 Thu, 2 Jan 2020 01:10:17 -0800 (PST)
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.80]) by
 ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0468.000; Thu, 2
 Jan 2020 01:10:15 -0800
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Tuong Lien <tuong.t.lien@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>
Thread-Topic: [net v2] tipc: fix wrong connect() return code
Thread-Index: AQHVvu8GS4zhECzZtEi5yJVwnbS49qfXGsfQ
Date: Thu, 2 Jan 2020 09:10:15 +0000
Message-ID: <25A14D9CFAB7B34FB9440F90AFD35233013CB1F833@ALA-MBD.corp.ad.wrs.com>
References: <20191230085548.20721-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20191230085548.20721-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.155.103]
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [147.11.1.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1imwUw-006jgr-Dw
Subject: Re: [tipc-discussion] [net v2] tipc: fix wrong connect() return code
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

Great! 

Acked-by: Ying Xue <ying.xue@windriver.com>

-----Original Message-----
From: Tuong Lien [mailto:tuong.t.lien@dektech.com.au] 
Sent: Monday, December 30, 2019 4:56 PM
To: tipc-discussion@lists.sourceforge.net; jmaloy@redhat.com; maloy@donjonn.com; Xue, Ying
Subject: [net v2] tipc: fix wrong connect() return code

The current 'tipc_wait_for_connect()' function makes a loop and waits
for the condition 'sk->sk_state != TIPC_CONNECTING' to conclude if the
connecting has done. However, when the condition is met, it always
returns '0' even in the case the connecting was actually failed (e.g.
refused because the server socket has closed...) and the socket state
was set to 'TIPC_DISCONNECTING'.
This results in a wrong return code for the 'connect()' call from user,
making it believe that the connection is established and goes ahead
with more actions e.g. building & sending a message but then finally
gets an unexpected result (e.g. '-EPIPE').

This commit fixes the issue by instead setting the wait condition to
'tipc_sk_connected(sk)', so that the function will return '0' only when
the connection is really established. Otherwise, either the socket
error code if any or '-ETIMEDOUT'/'-EINTR' will be returned
correspondingly.

---------
v2: changed after discussing with Ying
---------

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/socket.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 6552f986774c..2f5679f84060 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -2432,8 +2432,8 @@ static int tipc_wait_for_connect(struct socket *sock, long *timeo_p)
 			return sock_intr_errno(*timeo_p);
 
 		add_wait_queue(sk_sleep(sk), &wait);
-		done = sk_wait_event(sk, timeo_p,
-				     sk->sk_state != TIPC_CONNECTING, &wait);
+		done = sk_wait_event(sk, timeo_p, tipc_sk_connected(sk),
+				     &wait);
 		remove_wait_queue(sk_sleep(sk), &wait);
 	} while (!done);
 	return 0;
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
