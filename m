Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 315401CDFD0
	for <lists+tipc-discussion@lfdr.de>; Mon, 11 May 2020 18:02:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jYAsf-0000yC-AN; Mon, 11 May 2020 16:02:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jYAsd-0000xr-UH
 for tipc-discussion@lists.sourceforge.net; Mon, 11 May 2020 16:02:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SOAIq/RE6Y5JOBM2yDLPyy20YH0lv10AOZhsg2CGwbM=; b=IvTov9n1WsL2+LaFmJfpsfCizw
 q56w1PQXD8xCwjIdhrjvRx2PI0kRRXmQ0JcuVESNYgGUPGyBnif0Fc+dU5KtVPdNNRywJ6OXaYt8M
 rh+OdC7f/gtDCkuMHUPluJ7unTL3bTBruZLdUocjbnwz/H0SjHpl+Y2UB7XKUBTGBq1g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SOAIq/RE6Y5JOBM2yDLPyy20YH0lv10AOZhsg2CGwbM=; b=HYHKV4jXFVE0gg0TgOatri+250
 X+nASwjgHvw1Ie2DXLdYuOf3P8b6doOst4Oh2YDWWtL/q50pOEHQPCILkeAvrqQxGysbysex7TFnB
 PeAs5P4dov80bvK9Ypq6Fa1/VGHniUAzamic1kRA8LjpEv22zXELGl9885Xl8QMz/Fdg=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jYAsc-009Dmk-0b
 for tipc-discussion@lists.sourceforge.net; Mon, 11 May 2020 16:02:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589212923;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SOAIq/RE6Y5JOBM2yDLPyy20YH0lv10AOZhsg2CGwbM=;
 b=QqSzDHBaGVCmz7Qm8H9jYIFCgIeG/oFj6o89GRnKF6FUbvYnixZjFaCKelvLs9euAmD7x0
 h1+btuKgXK91llcC5VkM/tDMurlF9CZkxgf9ScKLASicxr3ACX9Ddi+vRzEo8dgShefuG+
 QemY5MLWUl0B/h+mRL/9koeoL3S6wBc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-249-kWZSz6tfPG-jEhFqN7BaFQ-1; Mon, 11 May 2020 12:02:01 -0400
X-MC-Unique: kWZSz6tfPG-jEhFqN7BaFQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 48614872FE1;
 Mon, 11 May 2020 16:02:00 +0000 (UTC)
Received: from [10.10.113.139] (ovpn-113-139.rdu2.redhat.com [10.10.113.139])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7F64D5C1B5;
 Mon, 11 May 2020 16:01:59 +0000 (UTC)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200511035954.6486-1-tuong.t.lien@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <5a6bb116-746e-7d78-26b7-d0efb375cca2@redhat.com>
Date: Mon, 11 May 2020 12:01:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200511035954.6486-1-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jYAsc-009Dmk-0b
Subject: Re: [tipc-discussion] [net] tipc: fix failed service subscription
 deletion
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



On 5/10/20 11:59 PM, Tuong Lien wrote:
> When a service subscription is expired or canceled by user, it needs to
> be deleted from the subscription list, so that new subscriptions can be
> registered (max = 65535 per net). However, there are two issues in code
> that can cause such an unused subscription to persist:
>
> 1) The 'tipc_conn_delete_sub()' has a loop on the subscription list but
> it makes a break shortly when the 1st subscription differs from the one
> specified, so the subscription will not be deleted.
>
> 2) In case a subscription is canceled, the code to remove the
> 'TIPC_SUB_CANCEL' flag from the subscription filter does not work if it
> is a local subscription (i.e. the little endian isn't involved). So, it
> will be no matches when looking for the subscription to delete later.
>
> The subscription(s) will be removed eventually when the user terminates
> its topology connection but that could be a long time later. Meanwhile,
> the number of available subscriptions may be exhausted.
>
> This commit fixes the two issues above, so as needed a subscription can
> be deleted correctly.
>
> v2: define a new macro to write sub field value (- Jon's comment)
> v3: break if the sub to be deleted has been found
>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>   net/tipc/subscr.h | 10 ++++++++++
>   net/tipc/topsrv.c |  9 +++++----
>   2 files changed, 15 insertions(+), 4 deletions(-)
>
> diff --git a/net/tipc/subscr.h b/net/tipc/subscr.h
> index aa015c233898..6ebbec1bedd1 100644
> --- a/net/tipc/subscr.h
> +++ b/net/tipc/subscr.h
> @@ -96,6 +96,16 @@ void tipc_sub_get(struct tipc_subscription *subscription);
>   		(swap_ ? swab32(val__) : val__);			\
>   	})
>   
> +/* tipc_sub_write - write val_ to field_ of struct sub_ in user endian format
> + */
> +#define tipc_sub_write(sub_, field_, val_)				\
> +	({								\
> +		struct tipc_subscr *sub__ = sub_;			\
> +		u32 val__ = val_;					\
> +		int swap_ = !((sub__)->filter & TIPC_FILTER_MASK);	\
> +		(sub__)->field_ = swap_ ? swab32(val__) : val__;	\
> +	})
> +
>   /* tipc_evt_write - write val_ to field_ of struct evt_ in user endian format
>    */
>   #define tipc_evt_write(evt_, field_, val_)				\
> diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
> index 931c426673c0..446af7bbd13e 100644
> --- a/net/tipc/topsrv.c
> +++ b/net/tipc/topsrv.c
> @@ -237,8 +237,8 @@ static void tipc_conn_delete_sub(struct tipc_conn *con, struct tipc_subscr *s)
>   		if (!s || !memcmp(s, &sub->evt.s, sizeof(*s))) {
>   			tipc_sub_unsubscribe(sub);
>   			atomic_dec(&tn->subscription_count);
> -		} else if (s) {
> -			break;
> +			if (s)
> +				break;
>   		}
>   	}
>   	spin_unlock_bh(&con->sub_lock);
> @@ -362,9 +362,10 @@ static int tipc_conn_rcv_sub(struct tipc_topsrv *srv,
>   {
>   	struct tipc_net *tn = tipc_net(srv->net);
>   	struct tipc_subscription *sub;
> +	u32 s_filter = tipc_sub_read(s, filter);
>   
> -	if (tipc_sub_read(s, filter) & TIPC_SUB_CANCEL) {
> -		s->filter &= __constant_ntohl(~TIPC_SUB_CANCEL);
> +	if (s_filter & TIPC_SUB_CANCEL) {
> +		tipc_sub_write(s, filter, s_filter & ~TIPC_SUB_CANCEL);
>   		tipc_conn_delete_sub(con, s);
>   		return 0;
>   	}
Now it looks good.
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
