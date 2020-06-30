Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC61D20F962
	for <lists+tipc-discussion@lfdr.de>; Tue, 30 Jun 2020 18:26:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jqJ5A-0008SB-QP; Tue, 30 Jun 2020 16:26:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jqJ59-0008Rz-5c
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Jun 2020 16:26:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XKA9yQIH2JbeJO/zcNQvEZqeUO/tC1B59FvxRZDZvRE=; b=i1ykI4DWibQJmd8xyRzp9AFvGw
 imwxC32P2PoBe9cKmsgIO5Go9QNEb2mw7tKUheNggtdYhQuyA+8LBppacfwv1cTOMpPPby3xI/XHO
 Ovcpx8o36uboJtTXqX7N0UaZAkwgbXig9lkvwmAVQ8bwgao6EZOrUWJfn8e7QXLtFibc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XKA9yQIH2JbeJO/zcNQvEZqeUO/tC1B59FvxRZDZvRE=; b=ktDedUHD6QXPk7HYi6CpcGyMtZ
 kA8NQjywTNfv1bVSeT+1LZp7cP9/pm3LNNgHPrA+JBboMIqXTmE0ENF0Z/uy8hjOX80EsIC12/dbz
 K2+BqBnaBAITLnMHoFMlgg9+D7Ez255hok0pl9ktiMGE7Ny4FYr4fsBuvybbi0ozXCag=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jqJ57-007dyH-9g
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Jun 2020 16:26:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593534355;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XKA9yQIH2JbeJO/zcNQvEZqeUO/tC1B59FvxRZDZvRE=;
 b=FTG1QOX/zx1AYxjjR0CSPbUbghEh35To7ap6N1PWnHYvarImsP9LNwkIxU4nDBrc71q6U6
 m0uDQMqekm7vq4xiPvrV5U0K3WkHXpSuWNTP37RBbDKsRPIr8A/L6ybjg/5NhNQ/EbvBBi
 zV7/esTiQjyj7vVwXysYnrWTLsyfRaE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-270-O-F0PSjiPcCIrPOZoFq38Q-1; Tue, 30 Jun 2020 12:25:51 -0400
X-MC-Unique: O-F0PSjiPcCIrPOZoFq38Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 07632107ACF2;
 Tue, 30 Jun 2020 16:25:50 +0000 (UTC)
Received: from [10.10.116.137] (ovpn-116-137.rdu2.redhat.com [10.10.116.137])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 440535D9DC;
 Tue, 30 Jun 2020 16:25:48 +0000 (UTC)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200630045627.24007-1-tuong.t.lien@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <298590d6-bc26-5aa4-4195-01eb57936ef2@redhat.com>
Date: Tue, 30 Jun 2020 12:25:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200630045627.24007-1-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jqJ57-007dyH-9g
Subject: Re: [tipc-discussion] [net] tipc: fix incorrect unicast link window
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 6/30/20 12:56 AM, Tuong Lien wrote:
> In commit 16ad3f4022bb ("tipc: introduce variable window congestion
> control"), we enable user to set the link 'max_win' value which is used
> as the upper threshold for the variable link window algorithm later.
>
> However, since it is done by the same netlink command property
> 'TIPC_NLA_PROP_WIN' that was used to set the actual link window before,
> it appears to be a non backward compatible issue when user tries to get
> the value back but finds a different value (i.e. the variable window at
> that moment).
>
> Besides, there is another flaw with the 'max_win' where it is set to be
> 'TIPC_MAX_LINK_WIN' (i.e. 8191) by default that is obviously unexpected
> (the variable link window will take place and go beyond that might harm
> the underlying device...). The value is actually derived from the lower
> bearer & media layers (i.e. 'eth' media) at the initializing time where
> the default value should be 'TIPC_DEF_LINK_WIN' (i.e. 50) instead.
>
> We fix the issue #1 by returning the 'max_win' which is exactly the one
> set by user, while setting back the 'max_win' for the 'eth' media to be
> the said value for the #2.
>
> Note: the changes do not affect the variable link window mechanism, but
> make the right thing i.e. it will work only when user really wants.
If understand this right variable window flow control will now in 
practice be disabled by default, and only be activated if the user 
explicitly sets max_win to something >> 50. Right?

///jon

>
> Fixes: 16ad3f4022bb ("tipc: introduce variable window congestion control")
> Reported-by: Hoang Le <hoang.h.le@dektech.com.au>
> Reported-by: Thang Ngo <thang.h.ngo@dektech.com.au>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>   net/tipc/eth_media.c | 2 +-
>   net/tipc/link.c      | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/net/tipc/eth_media.c b/net/tipc/eth_media.c
> index 8b0bb600602d..675b947eab89 100644
> --- a/net/tipc/eth_media.c
> +++ b/net/tipc/eth_media.c
> @@ -93,7 +93,7 @@ struct tipc_media eth_media_info = {
>   	.priority	= TIPC_DEF_LINK_PRI,
>   	.tolerance	= TIPC_DEF_LINK_TOL,
>   	.min_win	= TIPC_DEF_LINK_WIN,
> -	.max_win	= TIPC_MAX_LINK_WIN,
> +	.max_win	= TIPC_DEF_LINK_WIN,
>   	.type_id	= TIPC_MEDIA_TYPE_ETH,
>   	.hwaddr_len	= ETH_ALEN,
>   	.name		= "eth"
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index ee3b8d0576b8..28834dafdc98 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -2662,7 +2662,7 @@ int __tipc_nl_add_link(struct net *net, struct tipc_nl_msg *msg,
>   	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_TOL, link->tolerance))
>   		goto prop_msg_full;
>   	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN,
> -			link->window))
> +			link->max_win))
>   		goto prop_msg_full;
>   	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_PRIO, link->priority))
>   		goto prop_msg_full;



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
