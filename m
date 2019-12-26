Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE7412AA88
	for <lists+tipc-discussion@lfdr.de>; Thu, 26 Dec 2019 07:31:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ikMgB-0005oL-2n; Thu, 26 Dec 2019 06:31:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1ikMg6-0005nj-0E
 for tipc-discussion@lists.sourceforge.net; Thu, 26 Dec 2019 06:31:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1L5KavusVE/Gr2rKmdN4qVCe0jVTCkdKRhaiXpAMlUM=; b=BZcVNVeHELGp7QackjJFBVQyA4
 ZXvsOb/E7h2j0NIVdV+ZZh88NcrckAP3OafUkBLb3CJUEfbN9wYn/d2PqP7Tg9HuPqvUwH9zrNG10
 bAlnkxxVSTXe/jhLT1OQKGQrDMs99FHFVgN/hL9U4BhS1uA5zVNPxd1kfLT4luBTga7Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1L5KavusVE/Gr2rKmdN4qVCe0jVTCkdKRhaiXpAMlUM=; b=MjKjlMdm+rwmWXAL0zlXKDm8nd
 dmw1gPaW7aqQ5Y3jV7TwRt4xzZV2C/gB2J740l1aSljBgiLL5/DDir7efjGO5NB1QFeDNKi1h0sqq
 yLMAwVIeTmsuAjncXmropC0lctAb+4sPexQwCFOCCZw3eScqeMcIXLIdbQnqf+qqiRz8=;
Received: from mail1.windriver.com ([147.11.146.13])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1ikMg1-00FJ0H-O2
 for tipc-discussion@lists.sourceforge.net; Thu, 26 Dec 2019 06:31:21 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xBQ6UxNV000892
 (version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
 Wed, 25 Dec 2019 22:30:59 -0800 (PST)
Received: from [128.224.155.99] (128.224.155.99) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Wed, 25 Dec
 2019 22:30:58 -0800
To: Tuong Lien Tong <tuong.t.lien@dektech.com.au>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20191224080551.28379-1-tuong.t.lien@dektech.com.au>
 <25A14D9CFAB7B34FB9440F90AFD35233013CB15029@ALA-MBD.corp.ad.wrs.com>
 <07f501d5bb88$6eba09d0$4c2e1d70$@dektech.com.au>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <5061b76c-652d-1d92-1528-9934d947a112@windriver.com>
Date: Thu, 26 Dec 2019 14:17:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <07f501d5bb88$6eba09d0$4c2e1d70$@dektech.com.au>
Content-Language: en-US
X-Originating-IP: [128.224.155.99]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1ikMg1-00FJ0H-O2
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

On 12/26/19 9:04 AM, Tuong Lien Tong wrote:
> Hi Ying,
> 
> Actually, the 'done' flag has been set in the particular case (since the
> 'sk->sk_state' changed to 'TIPC_DISCONNECTING' after receiving a rejection
> of its SYN from server...) and what we want to achieve is the error code
> from the 'sock_error(sk)' to be returned to user correctly.
> For your code, there is no difference, the function would still return '0'
> for the said case.

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

Sorry, in my understanding, if this case you mentioned above occurs,
"done" will be really set to 1, which means "while loop" will exit and
then 0 will be returned to 0. This is our current problem.

But, if we add "sk->sk_err" as another while statement condition, the
while loop will not exit because "sk->sk_err" is not 0. As a
consequence, in next loop, sock error code will be returned to user
because sock_error() is not 0.

> I considered an alternative that:
> 
>                 done = sk_wait_event(sk, timeo_p,
>                                      sk->sk_state != TIPC_CONNECTING,
> &wait);
>                 remove_wait_queue(sk_sleep(sk), &wait);
>         } while (!done);
> -       return 0;
> +      return sock_err(sk);
> 
> but this could get more concerns or we should check the socket state at the
> return e.g. 
>         return (sk->sk_state != TIPC_ESTABLISHED) ? sock_err(sk) : 0;
> 
> and the fact is that we have this code already in the while statement, so I
> have decided to go with the code below.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
