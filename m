Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 890DA213B82
	for <lists+tipc-discussion@lfdr.de>; Fri,  3 Jul 2020 16:09:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jrMNP-0003fb-NA; Fri, 03 Jul 2020 14:09:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jrMNO-0003fS-2a
 for tipc-discussion@lists.sourceforge.net; Fri, 03 Jul 2020 14:09:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lgkBL08AcARcuqEptvLoqBVIEIqmclwny9VjuA795dw=; b=K1CTY9njMPL6b4sqooPjVgkQs+
 nZww7/Z+ebMFg5Dj3xYPIjFIntxITwBw2WCdjYIKl77EVUGdUuCQfAV98CJA6dWR5bw8GCwkLutW5
 xg313luTg5eMs+/RtrxmSz6H2Sl1z3Sdw32wTH54sEQXhFoBZNoK3jS63lgkzVBA7g3E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lgkBL08AcARcuqEptvLoqBVIEIqmclwny9VjuA795dw=; b=eC1s3yfDPRoHKBBMToUf99Ws3Z
 CvHTuKgSxVWCkKIMd+4P1JfbeTOChyhNSGVHqylU4eY44uoiWb4Rs1+xq2ylfT+dIHxIdtLCgdlKF
 39smQa+Lo4gt4MZF2gh2o7kUJCr17/7UphTylXpV4Z+SNk6gKalOBGU5yCrLZR62Cwpk=;
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jrMNL-006rla-SM
 for tipc-discussion@lists.sourceforge.net; Fri, 03 Jul 2020 14:09:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593785345;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lgkBL08AcARcuqEptvLoqBVIEIqmclwny9VjuA795dw=;
 b=fE7et2mhkNir12MLD34q609FY9+j15O66qCGAAMEV/EuLJVP5TlCwTyeiR/0bWZIyOals5
 dbGEO0GkXql7yuUTmadOwZkCaC84k/TxeyPsYMxW27HjEeK0KnSKXehz9LcB0kYva1v2tV
 BwUxjIU+8WI4jDL6X6rdwbAMzpTAZsg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-213-Ptl3jexhNtWwl64MthkX4Q-1; Fri, 03 Jul 2020 10:09:03 -0400
X-MC-Unique: Ptl3jexhNtWwl64MthkX4Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 344DD186A208;
 Fri,  3 Jul 2020 14:09:02 +0000 (UTC)
Received: from [10.10.113.54] (ovpn-113-54.rdu2.redhat.com [10.10.113.54])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 10F431002382;
 Fri,  3 Jul 2020 14:08:58 +0000 (UTC)
To: Hamish Martin <hamish.martin@alliedtelesis.co.nz>, ying.xue@windriver.com
References: <20200703005653.19794-1-hamish.martin@alliedtelesis.co.nz>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <17c7ffef-f8a2-9432-2bcf-fd5b74272262@redhat.com>
Date: Fri, 3 Jul 2020 10:08:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200703005653.19794-1-hamish.martin@alliedtelesis.co.nz>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: alliedtelesis.co.nz]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jrMNL-006rla-SM
Subject: Re: [tipc-discussion] [PATCH] tipc: fix retransmission on unicast
 links
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
Cc: john.thompson@alliedtelesis.co.nz, chris.packham@alliedtelesis.co.nz,
 tipc-discussion@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 7/2/20 8:56 PM, Hamish Martin wrote:
> A scenario has been observed where a 'bc_init' message for a link is not
> retransmitted if it fails to be received by the peer. This leads to the
> peer never establishing the link fully and it discarding all other data
> received on the link.
>
> The issue is traced to the 'nxt_retr' field of the skb not being
> initialised for links that aren't a bc_sndlink. This leads to the
> comparison in tipc_link_advance_transmq() that gates whether to attempt
> retransmission of a message performing in an undesirable way.
> Depending on the relative value of 'jiffies', this comparison:
>      time_before(jiffies, TIPC_SKB_CB(skb)->nxt_retr)
> may return true or false given that 'nxt_retr' remains at the
> uninitialised value of 0 for non bc_sndlinks.
>
> This is most noticeable shortly after boot when jiffies is initialised
> to a high value (to flush out rollover bugs) and we compare a jiffies of,
> say, 4294940189 to zero. In that case time_before returns 'true' leading
> to the skb not being retransmitted.
>
> The fix is to ensure that all skbs have a valid 'nxt_retr' time set for
> them and this is achieved by refactoring the setting of this value into
> a central function.
> With this fix, transmission losses of 'bc_init' messages do not stall
> the link establishment forever because the 'bc_init' message is
> retransmitted and the link eventually establishes correctly.
>
> Signed-off-by: Hamish Martin <hamish.martin@alliedtelesis.co.nz>
> ---
>   net/tipc/link.c | 26 ++++++++++++++++++--------
>   1 file changed, 18 insertions(+), 8 deletions(-)
>
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index ee3b8d0576b8..263d950e70e9 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -921,6 +921,21 @@ static void link_prepare_wakeup(struct tipc_link *l)
>   
>   }
>   
> +/**
> + * tipc_link_set_skb_retransmit_time - set the time at which retransmission of
> + *                                     the given skb should be next attempted
> + * @skb: skb to set a future retransmission time for
> + * @l: link the skb will be transmitted on
> + */
> +static void tipc_link_set_skb_retransmit_time(struct sk_buff *skb,
> +					      struct tipc_link *l)
> +{
> +	if (link_is_bc_sndlink(l))
> +		TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
> +	else
> +		TIPC_SKB_CB(skb)->nxt_retr = TIPC_UC_RETR_TIME;
> +}
> +
>   void tipc_link_reset(struct tipc_link *l)
>   {
>   	struct sk_buff_head list;
> @@ -1036,9 +1051,7 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
>   				return -ENOBUFS;
>   			}
>   			__skb_queue_tail(transmq, skb);
> -			/* next retransmit attempt */
> -			if (link_is_bc_sndlink(l))
> -				TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
> +			tipc_link_set_skb_retransmit_time(skb, l);
>   			__skb_queue_tail(xmitq, _skb);
>   			TIPC_SKB_CB(skb)->ackers = l->ackers;
>   			l->rcv_unacked = 0;
> @@ -1139,9 +1152,7 @@ static void tipc_link_advance_backlog(struct tipc_link *l,
>   		if (unlikely(skb == l->backlog[imp].target_bskb))
>   			l->backlog[imp].target_bskb = NULL;
>   		__skb_queue_tail(&l->transmq, skb);
> -		/* next retransmit attempt */
> -		if (link_is_bc_sndlink(l))
> -			TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
> +		tipc_link_set_skb_retransmit_time(skb, l);
>   
>   		__skb_queue_tail(xmitq, _skb);
>   		TIPC_SKB_CB(skb)->ackers = l->ackers;
> @@ -1584,8 +1595,7 @@ static int tipc_link_advance_transmq(struct tipc_link *l, struct tipc_link *r,
>   			/* retransmit skb if unrestricted*/
>   			if (time_before(jiffies, TIPC_SKB_CB(skb)->nxt_retr))
>   				continue;
> -			TIPC_SKB_CB(skb)->nxt_retr = (is_uc) ?
> -					TIPC_UC_RETR_TIME : TIPC_BC_RETR_LIM;
> +			tipc_link_set_skb_retransmit_time(skb, l);
>   			_skb = pskb_copy(skb, GFP_ATOMIC);
>   			if (!_skb)
>   				continue;
Nice job!
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
