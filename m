Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4222224EA
	for <lists+tipc-discussion@lfdr.de>; Thu, 16 Jul 2020 16:12:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jw4cw-0003kr-D4; Thu, 16 Jul 2020 14:12:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jw4cu-0003kg-Vs
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jul 2020 14:12:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=93pGs80hFUIIRbMgMMqt9vXMlJggGtSaID7JgFHUTBI=; b=AEz1bIInMnhwttB1t93LzOdE7A
 EhMa4YS7ZgwQorvocqa03ayXyMNcIvNpK1gPG/ZKUkQF+qvg0bLZC9ke1RUY+TV83/i3rDH8fIsP2
 rxildCHvPNSO+yVZ5vMRCVfzG1zj4cgNdVOCMkHPk6lhN7NbUOROUeIrLEUFNDiQpdYg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=93pGs80hFUIIRbMgMMqt9vXMlJggGtSaID7JgFHUTBI=; b=Ra4ZGIx0aFVU3zDTAW45M770an
 yIl9OfxSUcXrzmGrY2LDGFq/d+B9bWgyLFg+QlE8y3d9tnxjEFywlWRgTpQwFqWMgh/9wFzRrnfmr
 MH3YJOKDjCv5VK/NfG2fG8VahczYgodkeHSGb7JsRC2QvQr48CMGLxcNQ1wxWbt6BxpQ=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jw4cs-005yiF-Qv
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jul 2020 14:12:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594908756;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=93pGs80hFUIIRbMgMMqt9vXMlJggGtSaID7JgFHUTBI=;
 b=Zmcl/ZLc6k2B36xrEEcv4MR5UFL+DP3VuYuewsv6eUZPJcAgncaFh9JvEhkB51AlLglOeu
 6j4rUQUwqLt3z0tbmIbFVDDADjlFUEJufWBf8NudUD5QAqM8j4tn3wpMRYScYjQk/95Wdl
 ACp+sg3RKAn4ZxXDBndNZAAnTawGBcY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-208-FAim28FgN6mNhim5d3NKPg-1; Thu, 16 Jul 2020 10:12:33 -0400
X-MC-Unique: FAim28FgN6mNhim5d3NKPg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0E7131888AC8;
 Thu, 16 Jul 2020 14:12:28 +0000 (UTC)
Received: from [10.10.120.78] (ovpn-120-78.rdu2.redhat.com [10.10.120.78])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3656C72AC7;
 Thu, 16 Jul 2020 14:12:27 +0000 (UTC)
To: Tung Nguyen <tung.q.nguyen@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net, maloy@donjonn.com,
 ying.xue@windriver.com
References: <20200716051333.7618-1-tung.q.nguyen@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <8f25382b-40ff-591c-3532-2a97b1a6c2d5@redhat.com>
Date: Thu, 16 Jul 2020 10:12:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200716051333.7618-1-tung.q.nguyen@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jw4cs-005yiF-Qv
Subject: Re: [tipc-discussion] [net v1 1/1] tipc: allow to build NACK
 message in link timeout function
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



On 7/16/20 1:13 AM, Tung Nguyen wrote:
> Commit 02288248b051 ("tipc: eliminate gap indicator from ACK messages")
> eliminated sending of the 'gap' indicator in regular ACK messages and
> only allowed to build NACK message with enabled probe/probe_reply.
> However, necessary correction for building NACK message was missed
> in tipc_link_timeout() function. This leads to significant delay and
> link reset (due to retransmission failure) in lossy environment.
>
> This commit fixes it by setting the 'probe' flag to 'true' when
> the receive deferred queue is not empty. As a result, NACK message
> will be built to send back to another peer.
>
> Fixes: commit 02288248b051 ("tipc: eliminate gap indicator from ACK messages")
> Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> ---
>   net/tipc/link.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index 263d950e70e9..d40f8e5b7683 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -827,11 +827,11 @@ int tipc_link_timeout(struct tipc_link *l, struct sk_buff_head *xmitq)
>   		state |= l->bc_rcvlink->rcv_unacked;
>   		state |= l->rcv_unacked;
>   		state |= !skb_queue_empty(&l->transmq);
> -		state |= !skb_queue_empty(&l->deferdq);
>   		probe = mstate->probing;
>   		probe |= l->silent_intv_cnt;
>   		if (probe || mstate->monitoring)
>   			l->silent_intv_cnt++;
> +		probe |= !skb_queue_empty(&l->deferdq);
>   		if (l->snd_nxt == l->checkpoint) {
>   			tipc_link_update_cwin(l, 0, 0);
>   			probe = true;
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
