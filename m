Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9629712AAC8
	for <lists+tipc-discussion@lfdr.de>; Thu, 26 Dec 2019 08:16:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ikNO5-000816-Pc; Thu, 26 Dec 2019 07:16:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1ikNO4-00080y-6q
 for tipc-discussion@lists.sourceforge.net; Thu, 26 Dec 2019 07:16:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vBzEO/pkTQxTSeM0o8eR860mf2NBje59zLJeihlbq/0=; b=D1xC0ULlRxmVepr/bWALQ0hCWV
 8MmPMbRwIbmvg1fIMOSi0fDpz3zyKd3BOHC7nO7uo4p3DvkP9YgJpkoQu3IvjhEh0TnVyTnKnf61N
 Zppy5fQmaTAyXY27+8oCC8IYIP4MkRtsam50ab78EkOu7KgB4Bb4viW0+TGAQaipfaec=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vBzEO/pkTQxTSeM0o8eR860mf2NBje59zLJeihlbq/0=; b=aJtxpFRjzENpZlg6dcrRRMBAR4
 PKpiUB42L9g9DW4HP4/Y5tycpZRVmwSlgdQ8PO2nMvLRfAf0f9k20jjpY2cN0Ieo8H8GUMkfsTtF/
 FTkU/AGYTV29oAV68y/vnQjFO5N5gWuVaz2s53Jll8jNvekZIkvsVyVibu4EpUOCDTzA=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ikNNz-00FUo1-Oo
 for tipc-discussion@lists.sourceforge.net; Thu, 26 Dec 2019 07:16:48 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id CB70145AEB;
 Thu, 26 Dec 2019 18:16:34 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1577344594; bh=DAvgERLoVmoJFU
 4+2rxVtATfjjGwlguEWhxVLSrbULA=; b=Tjb8nmehzBes0lpYRiHLYOIuqhUb8D
 SE1Eu+w/XxDiaaPkY9PEYCttxieq8jwrXJkA513pQY7/UoXS6zsf8yhCNmcAPOhr
 adzbX1vKdkbU0cc3mPg4LJb6EJWLdaLUwR8zUsksHQbBZbjfXZhtHhXOstAwz13S
 juE0uDuT6AmJ4=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ZptA3dJo-Q5X; Thu, 26 Dec 2019 18:16:34 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id A19D945AEC;
 Thu, 26 Dec 2019 18:16:34 +1100 (AEDT)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 7413645AEB;
 Thu, 26 Dec 2019 18:16:33 +1100 (AEDT)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'Ying Xue'" <ying.xue@windriver.com>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20191224080551.28379-1-tuong.t.lien@dektech.com.au>
 <25A14D9CFAB7B34FB9440F90AFD35233013CB15029@ALA-MBD.corp.ad.wrs.com>
 <07f501d5bb88$6eba09d0$4c2e1d70$@dektech.com.au>
 <5061b76c-652d-1d92-1528-9934d947a112@windriver.com>
In-Reply-To: <5061b76c-652d-1d92-1528-9934d947a112@windriver.com>
Date: Thu, 26 Dec 2019 14:16:31 +0700
Message-ID: <086501d5bbbc$676e8640$364b92c0$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJ9ammvOgxW261btpJtn+W+DMblzQJ13mfoAu5pv14BvJi+gKZDmGSw
Content-Language: en-us
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ikNNz-00FUo1-Oo
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

Sorry, my mistake! I thought it was "while (!done || !sk->sk_err)"...
But, this is really confusing and one might ask why we continue the loop while the socket has encountered an error (sk-> sk_err! = 0)???
Moreover, it's not necessarily the "sk_err" will be the only case,
For example:
	sk->sk_state != TIPC_CONNECTING but sk->sk_err = 0 (somehow) and a pending/interrupt signal

then we should return '-EINTR'?

BR/Tuong

-----Original Message-----
From: Ying Xue <ying.xue@windriver.com> 
Sent: Thursday, December 26, 2019 1:17 PM
To: Tuong Lien Tong <tuong.t.lien@dektech.com.au>; tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com; maloy@donjonn.com
Subject: Re: [net] tipc: fix wrong connect() return code

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
