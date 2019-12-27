Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DCD12B253
	for <lists+tipc-discussion@lfdr.de>; Fri, 27 Dec 2019 08:18:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ikjtR-0005CD-W1; Fri, 27 Dec 2019 07:18:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1ikjtP-0005C1-SP
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Dec 2019 07:18:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JzrRlfvvG2JqS4+OE7cL4rx8t4vgmR4IMQmyfizWCb4=; b=X0fbnVZ1/Bm43s+5HX1WGIfQur
 76plhcro3sl4DgHkX6fW8x4eGQiTuFlj5VM5am4NcxZJxoMJgwlk5HKboPusUbNufT/AMhB2MiK9y
 yBAY+pVNvRhCIjQBI29n3iwO4PptX2JGqyo/Rr6rPqqdSiLTvAp+rVLAvY+RrxSyidIY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JzrRlfvvG2JqS4+OE7cL4rx8t4vgmR4IMQmyfizWCb4=; b=RYpbUq5+xP4saMCxAKcsLI5RjT
 huSEkj5Er+6rG1bGiMdhn7qSOs/PFi8PecnwSUfYFxdMglrcV91D24DhaPs93nL0N/Ri9Z0ZOjuF8
 SoajW6bh6mCqUKmFiU90FCDGEV54AkGEdOiD+euwlIR3uDcZjPcPe3N0b1Vecr9HXF/Y=;
Received: from mail5.windriver.com ([192.103.53.11] helo=mail5.wrs.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ikjtM-00F5Rj-DP
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Dec 2019 07:18:39 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xBR7HCdE021767
 (version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
 Thu, 26 Dec 2019 23:17:22 -0800
Received: from [128.224.155.99] (128.224.155.99) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Thu, 26 Dec
 2019 23:17:02 -0800
To: Tuong Lien Tong <tuong.t.lien@dektech.com.au>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20191224080551.28379-1-tuong.t.lien@dektech.com.au>
 <25A14D9CFAB7B34FB9440F90AFD35233013CB15029@ALA-MBD.corp.ad.wrs.com>
 <07f501d5bb88$6eba09d0$4c2e1d70$@dektech.com.au>
 <5061b76c-652d-1d92-1528-9934d947a112@windriver.com>
 <086501d5bbbc$676e8640$364b92c0$@dektech.com.au>
 <f93eecc7-9fff-5bab-61b4-5bfd6d55cb7b@windriver.com>
 <087801d5bbd8$a970ce10$fc526a30$@dektech.com.au>
 <088701d5bc5c$7b092e30$711b8a90$@dektech.com.au>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <80ed2c14-fe11-2a83-f0c6-d8851899899e@windriver.com>
Date: Fri, 27 Dec 2019 15:03:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <088701d5bc5c$7b092e30$711b8a90$@dektech.com.au>
Content-Language: en-US
X-Originating-IP: [128.224.155.99]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ikjtM-00F5Rj-DP
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

On 12/27/19 10:22 AM, Tuong Lien Tong wrote:
> Hi Ying,
> 
> Thinking more about this...
> I suppose we can even remove the function and utilize the generic macro
> 'tipc_wait_for_cond()' but with the new condition, that is much simpler and
> also saves some footprint.

Agreed.

> The 'tipc_sk_connected()' condition is really what we should expect in this
> case instead.

Yes.

> So, in the case of 'TIPC_DISCONNECTING', regardless of whether we have a
> 'sk->sk_err', it will return that error or '-ETIMEOUT' but never '0'.

But I think it's better to return the error attached on 'sk->sk_err' to
user because it can really reflect why connect() is failed.

> I will send the patch v2 for your review.
> 
> BR/Tuong
> 
> -----Original Message-----
> From: Tuong Lien Tong <tuong.t.lien@dektech.com.au> 
> Sent: Thursday, December 26, 2019 5:39 PM
> To: 'Ying Xue' <ying.xue@windriver.com>;
> tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com;
> maloy@donjonn.com
> Subject: Re: [tipc-discussion] [net] tipc: fix wrong connect() return code
> 
> What about this?
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 6ebd809ef207..04f035bcc272 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -2446,7 +2446,7 @@ static int tipc_wait_for_connect(struct socket *sock,
> long *timeo_p)
>                 done = sk_wait_event(sk, timeo_p,
>                                      sk->sk_state != TIPC_CONNECTING,
> &wait);
>                 remove_wait_queue(sk_sleep(sk), &wait);
> -       } while (!done);
> +       } while (!tipc_sk_connected(sk));
>         return 0;
>  }
> 
> BR/Tuong
> 
> -----Original Message-----
> From: Ying Xue <ying.xue@windriver.com> 
> Sent: Thursday, December 26, 2019 2:55 PM
> To: Tuong Lien Tong <tuong.t.lien@dektech.com.au>;
> tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com;
> maloy@donjonn.com
> Subject: Re: [net] tipc: fix wrong connect() return code
> 
> On 12/26/19 3:16 PM, Tuong Lien Tong wrote:
>> Sorry, my mistake! I thought it was "while (!done || !sk->sk_err)"...
>> But, this is really confusing and one might ask why we continue the loop
> while the socket has encountered an error (sk-> sk_err! = 0)???
> 
> This is totally reasonable because it can make code simpler.
> [Tuong]: but a performance hit since it almost looks like the sk_err has to
> be read twice?
> 
>> Moreover, it's not necessarily the "sk_err" will be the only case,
>> For example:
>> 	sk->sk_state != TIPC_CONNECTING but sk->sk_err = 0 (somehow) and a
> pending/interrupt signal
> 
> If sk->sk_state is changed from TIPC_CONNECTING to TIPC_ESTABLISHED,
> sk->sk_err should be kept 0, but if sk->sk_state is changed to other
> states, sk->sk_err must be set with a proper error code in socket
> receive path, otherwise, it's a bug.
> 
> However, there might be one below race condition:
> 
> sk->sk_state is set to TIPC_DISCONNECTING, but before sk->sk_err is set
> with an error code, the process who calls connect() is woken up by one
> single. Even so, the process is still blocked when it tries to hold sock
> lock with lock_sock() in sk_wait_event() because the socket lock is
> taken in socket receive path. After socket lock is released, the process
> will continue being run. But at that moment, sk->sk_err has been set
> with an error code. So, this is no problem for us.
> 
>>
>> then we should return '-EINTR'?
> 
> 
> 
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
> 
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
