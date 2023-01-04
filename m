Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BA665DAE0
	for <lists+tipc-discussion@lfdr.de>; Wed,  4 Jan 2023 18:00:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pD77t-0007R6-37;
	Wed, 04 Jan 2023 17:00:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1pD77r-0007R0-Af
 for tipc-discussion@lists.sourceforge.net;
 Wed, 04 Jan 2023 17:00:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zXsmZR9XHprXX1ccVi/uLaV+6BqIaNSwp3Za69Pnxlw=; b=K/ye3lWb4WTa5itBdIbbCkuCF/
 Poukg1k89IOydSnHfZM4uIfleQFH9eipckoGQL1jlbdQdkseuuYjJewmCfxYbhxq/UFIYQBw3/iUm
 Q+VXK5YNI7FiRv7bYztOPpZcsbIT6dawmAdsIcalFlMsizKhiMKiq5VtzsCmqCD8kKHg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zXsmZR9XHprXX1ccVi/uLaV+6BqIaNSwp3Za69Pnxlw=; b=A2BEySaTiAHpwiwHxynFfy5RDD
 AKbLrXilSB0oSu7yEvFuHY7kVwBhCXf5Z0zFup/UEBvHkjq6OsVvsGa13ChUt5SIl3sC8tONWqaNM
 +gTvNDCD+qgKq24ROSsS8S+YW/gLh8rcAdZvr44FOOR6e+OKPSMMnmN7PjxkkstWEW24=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pD77i-004lTw-VA for tipc-discussion@lists.sourceforge.net;
 Wed, 04 Jan 2023 17:00:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1672851612;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zXsmZR9XHprXX1ccVi/uLaV+6BqIaNSwp3Za69Pnxlw=;
 b=HmbGZsTQmNawioMtt+6imHskwkDT62f7KPPrSxzwVPiaXQ3poDJ8wdvUjXURBBXMSiF2Ty
 gok43kLwKYyYLYpVxaeLvB2xonoaAFgPF82wdEGHP21AX+jiOne7f2nTM4FUI04De7zoBH
 yG5ZBxvXPGc1JmJgCSqTzHr3rdclE2o=
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com
 [209.85.221.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-210-ahldF_XmOKiFsGAvNoozfg-1; Wed, 04 Jan 2023 12:00:11 -0500
X-MC-Unique: ahldF_XmOKiFsGAvNoozfg-1
Received: by mail-vk1-f199.google.com with SMTP id
 o85-20020a1f2858000000b003d5eb4cc1e6so1489714vko.2
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 04 Jan 2023 09:00:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zXsmZR9XHprXX1ccVi/uLaV+6BqIaNSwp3Za69Pnxlw=;
 b=1nmRtrhUjKvCuS/bVoLHeBCBiw+Lt+ooIyPeSw85eQVFdYhtk2T2r1O8TZBdVwvciG
 crH6c5TP/OExsyMFE23Zugwmt3CI4KnanWuhYUPrb0B3/vYH2zfLbeQ5K3PEyf3A5scu
 KvVL3gsPmkZKT776ZL0k3POiNiidoeBYjZLkCbFu3DJGqlOQXQOxdvGM3tculUVB8JFF
 NZIVw/gxDYfocvNVkOJk7Fi1d3eHSJDqPS92fwEcH0bKlJ9vv2YxRM3Wiuv6sixjBTm0
 eNrU2EKtdQg667U5w6ju8GvLaJT7f6miQMIwaRP5cbKupHHjRSAhX4P936FqefbGZuZ9
 378A==
X-Gm-Message-State: AFqh2kq8gA3IWMTGrAd+QwsN6RZMHIe2qozR5qCw2wnVAIyWmk4ho+ME
 5Ffs7NjupPE7zVYXE/6RREj17mGmHxKQ5JipxcCDHp2lqLZExtGwhGwB07v+m9NaINVHXodbjxb
 cfX6FPiUGlBhn3d8bV3RWWcn4eg18zOw5RrTX
X-Received: by 2002:a1f:2186:0:b0:3d5:53dc:2a91 with SMTP id
 h128-20020a1f2186000000b003d553dc2a91mr15453921vkh.14.1672851610747; 
 Wed, 04 Jan 2023 09:00:10 -0800 (PST)
X-Google-Smtp-Source: AMrXdXuD+CM0pD5hZTgHY8oWRfYWsNX76W+EIHx3XwdX4ZUVh3eXJXE4xCUigeqYphfU4djCixqb+g==
X-Received: by 2002:a1f:2186:0:b0:3d5:53dc:2a91 with SMTP id
 h128-20020a1f2186000000b003d553dc2a91mr15453900vkh.14.1672851610460; 
 Wed, 04 Jan 2023 09:00:10 -0800 (PST)
Received: from [10.0.0.97] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 b5-20020a05620a04e500b006fab416015csm23910764qkh.25.2023.01.04.09.00.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Jan 2023 09:00:10 -0800 (PST)
Message-ID: <546f5006-f8f3-4bdb-55b6-336824555af1@redhat.com>
Date: Wed, 4 Jan 2023 12:00:08 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
To: Tung Nguyen <tung.q.nguyen@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net, maloy@donjonn.com,
 ying.xue@windriver.com
References: <20230104024222.13690-1-tung.q.nguyen@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <20230104024222.13690-1-tung.q.nguyen@dektech.com.au>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/3/23 21:42,
 Tung Nguyen wrote: > This unexpected behavior
 is observed: > > node 1 | node 2 > ------ | ------ > link is established
 | link is established > reboot | link is reset > up | send disco [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pD77i-004lTw-VA
Subject: Re: [tipc-discussion] [PATCH v1 1/1] tipc: fix unexpected link
 reset due to discovery messages
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



On 1/3/23 21:42, Tung Nguyen wrote:
> This unexpected behavior is observed:
>
> node 1                    | node 2
> ------                    | ------
> link is established       | link is established
> reboot                    | link is reset
> up                        | send discovery message
> receive discovery message |
> link is established       | link is established
> send discovery message    |
>                            | receive discovery message
>                            | link is reset (unexpected)
>                            | send reset message
> link is reset             |
>
> It is due to delayed re-discovery as described in function
> tipc_node_check_dest(): "this link endpoint has already reset
> and re-established contact with the peer, before receiving a
> discovery message from that node."
>
> However, commit 598411d70f85 has changed the condition for calling
> tipc_node_link_down() which was the acceptance of new media address.
>
> This commit fixes this by restoring the old and correct behavior.
>
> Fixes: 598411d70f85 ("tipc: make link implementation independent from struct tipc_bearer")
> Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> ---
>   net/tipc/node.c | 12 ++++++++----
>   1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index 49ddc484c4fe..5e000fde8067 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -1179,8 +1179,9 @@ void tipc_node_check_dest(struct net *net, u32 addr,
>   	bool addr_match = false;
>   	bool sign_match = false;
>   	bool link_up = false;
> +	bool link_is_reset = false;
>   	bool accept_addr = false;
> -	bool reset = true;
> +	bool reset = false;
>   	char *if_name;
>   	unsigned long intv;
>   	u16 session;
> @@ -1200,14 +1201,14 @@ void tipc_node_check_dest(struct net *net, u32 addr,
>   	/* Prepare to validate requesting node's signature and media address */
>   	l = le->link;
>   	link_up = l && tipc_link_is_up(l);
> +	link_is_reset = l && tipc_link_is_reset(l);
>   	addr_match = l && !memcmp(&le->maddr, maddr, sizeof(*maddr));
>   	sign_match = (signature == n->signature);
>   
>   	/* These three flags give us eight permutations: */
>   
>   	if (sign_match && addr_match && link_up) {
> -		/* All is fine. Do nothing. */
> -		reset = false;
> +		/* All is fine. Ignore requests. */
>   		/* Peer node is not a container/local namespace */
>   		if (!n->peer_hash_mix)
>   			n->peer_hash_mix = hash_mixes;
> @@ -1232,6 +1233,7 @@ void tipc_node_check_dest(struct net *net, u32 addr,
>   		 */
>   		accept_addr = true;
>   		*respond = true;
> +		reset = true;
>   	} else if (!sign_match && addr_match && link_up) {
>   		/* Peer node rebooted. Two possibilities:
>   		 *  - Delayed re-discovery; this link endpoint has already
> @@ -1263,6 +1265,7 @@ void tipc_node_check_dest(struct net *net, u32 addr,
>   		n->signature = signature;
>   		accept_addr = true;
>   		*respond = true;
> +		reset = true;
>   	}
>   
>   	if (!accept_addr)
> @@ -1291,6 +1294,7 @@ void tipc_node_check_dest(struct net *net, u32 addr,
>   		tipc_link_fsm_evt(l, LINK_RESET_EVT);
>   		if (n->state == NODE_FAILINGOVER)
>   			tipc_link_fsm_evt(l, LINK_FAILOVER_BEGIN_EVT);
> +		link_is_reset = tipc_link_is_reset(l);
>   		le->link = l;
>   		n->link_cnt++;
>   		tipc_node_calculate_timer(n, l);
> @@ -1303,7 +1307,7 @@ void tipc_node_check_dest(struct net *net, u32 addr,
>   	memcpy(&le->maddr, maddr, sizeof(*maddr));
>   exit:
>   	tipc_node_write_unlock(n);
> -	if (reset && l && !tipc_link_is_reset(l))
> +	if (reset && !link_is_reset)
>   		tipc_node_link_down(n, b->identity, false);
>   	tipc_node_put(n);
>   }

Acked-by: Jon Maloy <jmaloy@redhat.com>
Nice job!



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
