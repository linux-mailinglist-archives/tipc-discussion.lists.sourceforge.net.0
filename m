Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1891328F959
	for <lists+tipc-discussion@lfdr.de>; Thu, 15 Oct 2020 21:21:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kT8ou-0004dp-21; Thu, 15 Oct 2020 19:21:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kT8ot-0004df-Gi
 for tipc-discussion@lists.sourceforge.net; Thu, 15 Oct 2020 19:21:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ffkg0mUhvfm7M/5wyU3MoiaSGmEVA9mGZ2ekRFlYlDA=; b=hosyyve+R9/1Ll42AK1HKkcTYD
 SJz3jmJfrgxKOCPT7AQxJtgc193fjRDA+6TnTgbPwdgkhTntkH3KkupO2pofs5mRetIbRdh6KfdD1
 aUSW/rS5kx+jt+2UKT49wHFo7JNnY5hIv3hGwZKZ8DqtEAEP0br3e4Z4kIwt1zm0jWkY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ffkg0mUhvfm7M/5wyU3MoiaSGmEVA9mGZ2ekRFlYlDA=; b=VScNlJTCL8KUB0BkpZyX7W3d2a
 8lSIqgPX5dkBJUBRTj2Vt08zbtbj4oRmbaAIivR5mcT5zV/wn/z62SORC6al6jaekq2F6woeItL16
 0yVO45RlAoPxSk4QPqxxanFa0+L7US916DW7eEM8jMtj5Fm9+Gb2BR7AZCxw/LywBp7k=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kT8oc-00Bo2z-Pn
 for tipc-discussion@lists.sourceforge.net; Thu, 15 Oct 2020 19:21:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1602789684;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ffkg0mUhvfm7M/5wyU3MoiaSGmEVA9mGZ2ekRFlYlDA=;
 b=bs1KTzUXYwDFZkUvdV+0adPptRnBZzJ1UCUUuzLSM2Ja8zez1ZtJp6K9hRZyD2gpmMv6h7
 8lek7MqH4XyjpG8hs8e0Z91YPq1PEx+wzkvqOuG9sVGlN4nRW9tfIwTAThiiAd5eimS2Hw
 LWrCasVXapU4Bm+7E44VXz6zrJjyyCE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-506-gnEZ5dKCOnS8na-ALhkilA-1; Thu, 15 Oct 2020 15:21:21 -0400
X-MC-Unique: gnEZ5dKCOnS8na-ALhkilA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F38508030DD;
 Thu, 15 Oct 2020 19:21:19 +0000 (UTC)
Received: from [10.10.116.249] (ovpn-116-249.rdu2.redhat.com [10.10.116.249])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 56B6110013DB;
 Thu, 15 Oct 2020 19:21:18 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20201014070739.6550-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <ff018270-a114-ead5-10b8-2a81eb77f87d@redhat.com>
Date: Thu, 15 Oct 2020 15:21:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201014070739.6550-1-hoang.h.le@dektech.com.au>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.1 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kT8oc-00Bo2z-Pn
Subject: Re: [tipc-discussion] [next v2] tipc: fix incorrect setting window
 for bcast link
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 10/14/20 3:07 AM, Hoang Huu Le wrote:
> In commit 16ad3f4022bb
> ("tipc: introduce variable window congestion control"), we applied
> the algorithm to select window size from minimum window to the
> configured maximum window for unicast link, and, besides we chose
> to keep the window size for broadcast link unchanged and equal (i.e
> fix window 50)
>
> However, when setting maximum window variable via command, the window
> variable was re-initialized to unexpect value (i.e 32).
>
> We fix this by updating the fix window for broadcast as we stated.
>
> Fixes: 16ad3f4022bb ("tipc: introduce variable window congestion control")
> Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/bcast.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> index c77fd13e2777..bc88f21ec0b2 100644
> --- a/net/tipc/bcast.c
> +++ b/net/tipc/bcast.c
> @@ -589,7 +589,7 @@ static int tipc_bc_link_set_queue_limits(struct net *net, u32 max_win)
>   	if (max_win > TIPC_MAX_LINK_WIN)
>   		return -EINVAL;
>   	tipc_bcast_lock(net);
> -	tipc_link_set_queue_limits(l, BCLINK_WIN_MIN, max_win);
> +	tipc_link_set_queue_limits(l, tipc_link_min_win(l), max_win);
>   	tipc_bcast_unlock(net);
>   	return 0;
>   }
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
