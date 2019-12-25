Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AC30D12A846
	for <lists+tipc-discussion@lfdr.de>; Wed, 25 Dec 2019 14:49:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ik721-0002ra-AF; Wed, 25 Dec 2019 13:48:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1ik720-0002rQ-BO
 for tipc-discussion@lists.sourceforge.net; Wed, 25 Dec 2019 13:48:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aDhp1LceIr6tGmXwwll2pAjx9i7fAzNVIEy8wpqDqbw=; b=N42p9Bbi57/mQh7iztk8FavDaT
 1ijv3pFh9t4MHuyE3vNP3hDabbz3rnyNN7trBCj9rykPHG7NWh6h6IA8GSyXTWIncY85OwLTBP3i6
 dyNzHuYGukp9eUUOsT35AuAwm96osKlf3izXIZF2NQ5bnHoUC1Z5pXYfngETI8G8jwoU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aDhp1LceIr6tGmXwwll2pAjx9i7fAzNVIEy8wpqDqbw=; b=Zh9nLbmWwqiurkOoqEX3F9UvtB
 JpQHHsMBEN6IzbGi27m+coq8k0VjtdLGFndFzqh5uuChdEWe02zAuwadT8TgqrMDqqt3eUwp6g7Zh
 RRnnOC4sdxyVY8UHmQdV/1VscvYw+tN6pof9tnCdgXfXAg/qtIRGR1vlo0WuBUjo5u9U=;
Received: from mail1.windriver.com ([147.11.146.13])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1ik71w-00F74Y-IW
 for tipc-discussion@lists.sourceforge.net; Wed, 25 Dec 2019 13:48:56 +0000
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
 [147.11.189.41])
 by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xBPDmUXD022640
 (version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
 Wed, 25 Dec 2019 05:48:32 -0800 (PST)
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.80]) by
 ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0468.000; Wed,
 25 Dec 2019 05:48:09 -0800
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Tuong Lien <tuong.t.lien@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "jon.maloy@ericsson.com"
 <jon.maloy@ericsson.com>, "maloy@donjonn.com" <maloy@donjonn.com>
Thread-Topic: [net] tipc: fix wrong connect() return code
Thread-Index: AQHVujEE8zHX3Bm0bU+JX1bM/NfoPKfK3twg
Date: Wed, 25 Dec 2019 13:48:08 +0000
Message-ID: <25A14D9CFAB7B34FB9440F90AFD35233013CB15029@ALA-MBD.corp.ad.wrs.com>
References: <20191224080551.28379-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20191224080551.28379-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.17.159]
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1ik71w-00F74Y-IW
Subject: Re: [tipc-discussion] [net] tipc: fix wrong connect() return code
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

Probably below change is more easily understandable:

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 6552f98..358cc55 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -2435,7 +2435,7 @@ static int tipc_wait_for_connect(struct socket *sock, long *timeo_p)
                done = sk_wait_event(sk, timeo_p,
                                     sk->sk_state != TIPC_CONNECTING, &wait);
                remove_wait_queue(sk_sleep(sk), &wait);
-       } while (!done);
+       } while (!done || sk->sk_err);
        return 0;
 }

-----Original Message-----
From: Tuong Lien [mailto:tuong.t.lien@dektech.com.au] 
Sent: Tuesday, December 24, 2019 4:06 PM
To: tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com; maloy@donjonn.com; Xue, Ying
Subject: [net] tipc: fix wrong connect() return code

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

This commit fixes the issue by returning the corresponding error code
if any when the wait process is waken up.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/socket.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 8b1daf3634b0..2e5faf89ef80 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -2428,7 +2428,7 @@ static int tipc_wait_for_connect(struct socket *sock, long *timeo_p)
 {
 	DEFINE_WAIT_FUNC(wait, woken_wake_function);
 	struct sock *sk = sock->sk;
-	int done;
+	int done = 0;
 
 	do {
 		int err = sock_error(sk);
@@ -2438,12 +2438,14 @@ static int tipc_wait_for_connect(struct socket *sock, long *timeo_p)
 			return -ETIMEDOUT;
 		if (signal_pending(current))
 			return sock_intr_errno(*timeo_p);
+		if (done)
+			return 0;
 
 		add_wait_queue(sk_sleep(sk), &wait);
 		done = sk_wait_event(sk, timeo_p,
 				     sk->sk_state != TIPC_CONNECTING, &wait);
 		remove_wait_queue(sk_sleep(sk), &wait);
-	} while (!done);
+	} while (1);
 	return 0;
 }
 
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
