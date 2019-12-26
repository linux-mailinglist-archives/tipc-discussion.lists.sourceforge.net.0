Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB9912A974
	for <lists+tipc-discussion@lfdr.de>; Thu, 26 Dec 2019 02:04:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ikHa5-0005df-9g; Thu, 26 Dec 2019 01:04:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1ikHa3-0005dX-Uq
 for tipc-discussion@lists.sourceforge.net; Thu, 26 Dec 2019 01:04:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fPep7OorEc0omiMD1Vk+JdiaRsQoY+eXPBNgnC1l5OE=; b=FLM3Z3Cyok5wYZPmWrTv9oXqEe
 ZJLpS6KP/4gQAlFtx1zTJMIn0ie7XrOZJr/rIKsS4dSJgbuSHAbuXwvGbkgDifm6UKDViKgC48V8H
 wsqgTftVVLKIJXuYlGs3IJyJZ9nPtSVA48SWneTBmdzUIO17gGARHNSYTTxopl7kJ6OI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fPep7OorEc0omiMD1Vk+JdiaRsQoY+eXPBNgnC1l5OE=; b=iUsMWShXg/9lYJV1aQxTwPgCNY
 dUQrlrSfoRi19hyq92p/UJg2UtwHCkoQa8KZPnANe94uz7XM882hfV2EbGasdl+Kz2ets8X5/5Oiv
 W6s/ZU+k3bp7Ap6OKhGX18jhIEA86XQOtlgD/h7/nAMGb91xSfXG1wo/ULGEnk0WL1cA=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ikHZz-00FMBt-47
 for tipc-discussion@lists.sourceforge.net; Thu, 26 Dec 2019 01:04:47 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 68ABB4C3EA;
 Thu, 26 Dec 2019 12:04:33 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1577322273; bh=9R1zmfrPn9I3BU
 +1GrfmcgUwh8F7hFD8W2n18dM39LI=; b=lkoagJ3XWNZl7JXyEbwdkENtih+vP6
 ouJdYhhBglteBhAwjNzXlTJDUfLoYGZAzZqCMJKYGn19OBGATQwPp4r0vCQH6jKk
 0QCphxszlVZjbui83NNhDaUQ+qabgAYt4TueftfqaimbCZc13eEiJ0JpKccbD0Vm
 EekOeLzizK37o=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id xSjAr7AyJpBf; Thu, 26 Dec 2019 12:04:33 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id E25484C3EB;
 Thu, 26 Dec 2019 12:04:32 +1100 (AEDT)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id CD1D64C3EA;
 Thu, 26 Dec 2019 12:04:31 +1100 (AEDT)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'Xue, Ying'" <Ying.Xue@windriver.com>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20191224080551.28379-1-tuong.t.lien@dektech.com.au>
 <25A14D9CFAB7B34FB9440F90AFD35233013CB15029@ALA-MBD.corp.ad.wrs.com>
In-Reply-To: <25A14D9CFAB7B34FB9440F90AFD35233013CB15029@ALA-MBD.corp.ad.wrs.com>
Date: Thu, 26 Dec 2019 08:04:30 +0700
Message-ID: <07f501d5bb88$6eba09d0$4c2e1d70$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJ9ammvOgxW261btpJtn+W+DMblzQJ13mfopmiJD1A=
Content-Language: en-us
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ikHZz-00FMBt-47
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

Hi Ying,

Actually, the 'done' flag has been set in the particular case (since the
'sk->sk_state' changed to 'TIPC_DISCONNECTING' after receiving a rejection
of its SYN from server...) and what we want to achieve is the error code
from the 'sock_error(sk)' to be returned to user correctly.
For your code, there is no difference, the function would still return '0'
for the said case.
I considered an alternative that:

                done = sk_wait_event(sk, timeo_p,
                                     sk->sk_state != TIPC_CONNECTING,
&wait);
                remove_wait_queue(sk_sleep(sk), &wait);
        } while (!done);
-       return 0;
+      return sock_err(sk);

but this could get more concerns or we should check the socket state at the
return e.g. 
        return (sk->sk_state != TIPC_ESTABLISHED) ? sock_err(sk) : 0;

and the fact is that we have this code already in the while statement, so I
have decided to go with the code below.

BR/Tuong

-----Original Message-----
From: Xue, Ying <Ying.Xue@windriver.com> 
Sent: Wednesday, December 25, 2019 8:48 PM
To: Tuong Lien <tuong.t.lien@dektech.com.au>;
tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com;
maloy@donjonn.com
Subject: RE: [net] tipc: fix wrong connect() return code

Probably below change is more easily understandable:

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 6552f98..358cc55 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -2435,7 +2435,7 @@ static int tipc_wait_for_connect(struct socket *sock,
long *timeo_p)
                done = sk_wait_event(sk, timeo_p,
                                     sk->sk_state != TIPC_CONNECTING,
&wait);
                remove_wait_queue(sk_sleep(sk), &wait);
-       } while (!done);
+       } while (!done || sk->sk_err);
        return 0;
 }

-----Original Message-----
From: Tuong Lien [mailto:tuong.t.lien@dektech.com.au] 
Sent: Tuesday, December 24, 2019 4:06 PM
To: tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com;
maloy@donjonn.com; Xue, Ying
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
@@ -2428,7 +2428,7 @@ static int tipc_wait_for_connect(struct socket *sock,
long *timeo_p)
 {
 	DEFINE_WAIT_FUNC(wait, woken_wake_function);
 	struct sock *sk = sock->sk;
-	int done;
+	int done = 0;
 
 	do {
 		int err = sock_error(sk);
@@ -2438,12 +2438,14 @@ static int tipc_wait_for_connect(struct socket
*sock, long *timeo_p)
 			return -ETIMEDOUT;
 		if (signal_pending(current))
 			return sock_intr_errno(*timeo_p);
+		if (done)
+			return 0;
 
 		add_wait_queue(sk_sleep(sk), &wait);
 		done = sk_wait_event(sk, timeo_p,
 				     sk->sk_state != TIPC_CONNECTING,
&wait);
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
