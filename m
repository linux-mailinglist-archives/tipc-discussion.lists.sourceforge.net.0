Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 565A712ABA8
	for <lists+tipc-discussion@lfdr.de>; Thu, 26 Dec 2019 11:39:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ikQXp-0003zt-SD; Thu, 26 Dec 2019 10:39:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1ikQXo-0003zk-6J
 for tipc-discussion@lists.sourceforge.net; Thu, 26 Dec 2019 10:39:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=whn8pj0SxCfpqXWx742SFoWS7Dp2a4ImVUbRUow/1PU=; b=hZmep610NrtLSOM4N7qGXra8V7
 s9N/oSAsozf1h82Q1UgbdCzLh4QXUc98aE3k0JH0lIsrwChTQxpTOr4zQdd8ziwGUv5b4vR0eMxja
 V4eDD6P7Q5Aua6cGKJ4zBdi1nesE/G/AKPI9LSrVdKEYk6uLHnxq5NQceR73Ryx8MgvA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=whn8pj0SxCfpqXWx742SFoWS7Dp2a4ImVUbRUow/1PU=; b=gL3zmbRrlL9+6Ifee15ZaHbarf
 idFYEY93YOM3bao7Lu13NK5jWEJ47FMXOHzboIknozBy+sAJAD9jRxaA9LCjylJs9QSOtRrKPih2e
 eMedDx0t4u9GJn7BsnzJOkhKQr05QNc8zrhJVF/t51TBGGjF8xqRntudeznBMoQtxiPg=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ikQXk-00FQzx-EK
 for tipc-discussion@lists.sourceforge.net; Thu, 26 Dec 2019 10:39:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id A1889463F1;
 Thu, 26 Dec 2019 21:38:51 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1577356731; bh=/Wvwb+XJVr8e9P
 Et565rxCxn5Od3q9jFAqvYJ9GPbQo=; b=AWH/KfU3y2fuqvseZERJ2UaGQm5M62
 jfS+Nxaemtn1SnOV7hGFOEJtoZ+RxOHwYlkbk2MgM7LwxsGBKoEA4ER6SHsmXeoS
 sYihAsNTNNSlB+BxRX+pjK+ZkRrfpcX3R+ZBYKwZVhFQZReoxswyYA8B1p5v38qk
 OXr0NRXeqj29M=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id W_NtV49lZdqt; Thu, 26 Dec 2019 21:38:51 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 3BC44463F2;
 Thu, 26 Dec 2019 21:38:51 +1100 (AEDT)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 1B7D7463F1;
 Thu, 26 Dec 2019 21:38:49 +1100 (AEDT)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'Ying Xue'" <ying.xue@windriver.com>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20191224080551.28379-1-tuong.t.lien@dektech.com.au>
 <25A14D9CFAB7B34FB9440F90AFD35233013CB15029@ALA-MBD.corp.ad.wrs.com>
 <07f501d5bb88$6eba09d0$4c2e1d70$@dektech.com.au>
 <5061b76c-652d-1d92-1528-9934d947a112@windriver.com>
 <086501d5bbbc$676e8640$364b92c0$@dektech.com.au>
 <f93eecc7-9fff-5bab-61b4-5bfd6d55cb7b@windriver.com>
In-Reply-To: <f93eecc7-9fff-5bab-61b4-5bfd6d55cb7b@windriver.com>
Date: Thu, 26 Dec 2019 17:38:48 +0700
Message-ID: <087801d5bbd8$a970ce10$fc526a30$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJ9ammvOgxW261btpJtn+W+DMblzQJ13mfoAu5pv14BvJi+gAGZ+1ZiAojxsC6mIp1K8A==
Content-Language: en-us
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ikQXk-00FQzx-EK
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

What about this?

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 6ebd809ef207..04f035bcc272 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -2446,7 +2446,7 @@ static int tipc_wait_for_connect(struct socket *sock, long *timeo_p)
                done = sk_wait_event(sk, timeo_p,
                                     sk->sk_state != TIPC_CONNECTING, &wait);
                remove_wait_queue(sk_sleep(sk), &wait);
-       } while (!done);
+       } while (!tipc_sk_connected(sk));
        return 0;
 }

BR/Tuong

-----Original Message-----
From: Ying Xue <ying.xue@windriver.com> 
Sent: Thursday, December 26, 2019 2:55 PM
To: Tuong Lien Tong <tuong.t.lien@dektech.com.au>; tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com; maloy@donjonn.com
Subject: Re: [net] tipc: fix wrong connect() return code

On 12/26/19 3:16 PM, Tuong Lien Tong wrote:
> Sorry, my mistake! I thought it was "while (!done || !sk->sk_err)"...
> But, this is really confusing and one might ask why we continue the loop while the socket has encountered an error (sk-> sk_err! = 0)???

This is totally reasonable because it can make code simpler.
[Tuong]: but a performance hit since it almost looks like the sk_err has to be read twice?

> Moreover, it's not necessarily the "sk_err" will be the only case,
> For example:
> 	sk->sk_state != TIPC_CONNECTING but sk->sk_err = 0 (somehow) and a pending/interrupt signal

If sk->sk_state is changed from TIPC_CONNECTING to TIPC_ESTABLISHED,
sk->sk_err should be kept 0, but if sk->sk_state is changed to other
states, sk->sk_err must be set with a proper error code in socket
receive path, otherwise, it's a bug.

However, there might be one below race condition:

sk->sk_state is set to TIPC_DISCONNECTING, but before sk->sk_err is set
with an error code, the process who calls connect() is woken up by one
single. Even so, the process is still blocked when it tries to hold sock
lock with lock_sock() in sk_wait_event() because the socket lock is
taken in socket receive path. After socket lock is released, the process
will continue being run. But at that moment, sk->sk_err has been set
with an error code. So, this is no problem for us.

> 
> then we should return '-EINTR'?



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
