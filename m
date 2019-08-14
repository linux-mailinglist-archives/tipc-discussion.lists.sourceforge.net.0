Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9C18D299
	for <lists+tipc-discussion@lfdr.de>; Wed, 14 Aug 2019 13:57:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hxrtv-0003Ao-RT; Wed, 14 Aug 2019 11:57:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1hxrtu-0003Ag-LE
 for tipc-discussion@lists.sourceforge.net; Wed, 14 Aug 2019 11:57:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vq9uGieI+e9f+jSjHmlrzANC4KxESqxRhDOgc3C5Dg8=; b=af7EVNQ8tSJpUj1Fm0TCnluIc6
 qNQzeT6a6r4Wexft4HuNJ0Lq3u+nN82f8RxP7BGFyqkYLUiH9WlQzLhplLRBn6al2jaCtF6fZzJgf
 FGnDYzc1a/FW4uYEfsuTTl4LXad3KZlxI5PmVHplsFdNk77KQA7ox+olLAxfQH24t554=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vq9uGieI+e9f+jSjHmlrzANC4KxESqxRhDOgc3C5Dg8=; b=HZjoqceeVVrPTQIxguvc7SDUfg
 mLaiUqM464lweVxkiIQIUfBUVQ4klLRgN850ijGiuwYbmsx07EdHYOuWAa86njCZo5MjhxfWHHKGI
 Hki4IYVTMUfVABes7DAWbMniDmsvZKQX1pbCUy49reA/S+WRcdoDf+yjsUftdMvLi1gs=;
Received: from mail1.windriver.com ([147.11.146.13])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.90_1) id 1hxrts-003Pr4-Iu
 for tipc-discussion@lists.sourceforge.net; Wed, 14 Aug 2019 11:57:10 +0000
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
 by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x7EBuEYU028525
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Wed, 14 Aug 2019 04:56:14 -0700 (PDT)
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Wed, 14 Aug
 2019 04:56:14 -0700
To: Tung Nguyen <tung.q.nguyen@dektech.com.au>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20190813100131.5987-1-tung.q.nguyen@dektech.com.au>
 <20190813100131.5987-3-tung.q.nguyen@dektech.com.au>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <9e9dffd4-20c3-1686-d3b9-40cde80588ca@windriver.com>
Date: Wed, 14 Aug 2019 19:45:01 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190813100131.5987-3-tung.q.nguyen@dektech.com.au>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hxrts-003Pr4-Iu
Subject: Re: [tipc-discussion] [net v1 2/3] tipc: fix wrong socket reference
 counter after tipc_sk_timeout() returns
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

On 8/13/19 6:01 PM, Tung Nguyen wrote:
> When tipc_sk_timeout() is executed but user space is grabbing
> ownership, this function rearms itself and returns. However, the
> socket reference counter is not reduced. This causes potential
> unexpected behavior.
> 
> This commit fixes it by calling sock_put() before tipc_sk_timeout()
> returns in the above-mentioned case.
> 
> Fixes: afe8792fec69 ("tipc: refactor function tipc_sk_timeout()")
> Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>

Acked-by: Ying Xue <ying.xue@windriver.com>

> ---
>  net/tipc/socket.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index dcb8b6082757..9fd9a5727786 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -2683,6 +2683,7 @@ static void tipc_sk_timeout(struct timer_list *t)
>  	if (sock_owned_by_user(sk)) {
>  		sk_reset_timer(sk, &sk->sk_timer, jiffies + HZ / 20);
>  		bh_unlock_sock(sk);
> +		sock_put(sk);
>  		return;
>  	}
>  
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
