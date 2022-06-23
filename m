Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A4E558A98
	for <lists+tipc-discussion@lfdr.de>; Thu, 23 Jun 2022 23:20:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1o4UFS-0001N6-HJ; Thu, 23 Jun 2022 21:20:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jmaloy@redhat.com>) id 1o4UFQ-0001Mm-I8
 for tipc-discussion@lists.sourceforge.net; Thu, 23 Jun 2022 21:20:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LPcKma9FiUb2lNhsbIUryGaTFK0aNkawo9tMXPLImok=; b=SyPz9GFoNGTlAtICFOb62FlVm2
 fAj8JauNB5t4j+yOelNawFadp7Ic5NAW9LYHTDskC6yTTTuD7fOJpZc0EisxBqlUOZf7U9Wk4yBDX
 iYcyY0Q5xegmmltU2ODya9qIB1+lLL7AEzrr85Pn/NL3s4UAFIBqQdOltmHXTXwONG/Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LPcKma9FiUb2lNhsbIUryGaTFK0aNkawo9tMXPLImok=; b=bU5UOGaf02yFdSWPh4iJ7LnyUB
 vXDntbZY2vKbw7sw9VCaFzw7MLzstjyWP1K7rcuDcryp7dBiTzQosK/nZq+cYfm54x56jrD1Hlc6/
 ZvRP7nyA+O+sekRaclxgltbojQECoa5NDja2PxI0ehWRqjoQGUeUSKFeNjBjZzqCi+fg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o4UFQ-00BXv4-9y
 for tipc-discussion@lists.sourceforge.net; Thu, 23 Jun 2022 21:20:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1656019214;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LPcKma9FiUb2lNhsbIUryGaTFK0aNkawo9tMXPLImok=;
 b=HUMT9lMw7CGgOfh5GC5CGKn44c0QGrCXDVUc075YYHKnCbIiROlUfd8dPpJkJzvBRXtGUB
 doQBck3eWUWWQ1vlGn83jnEMowi/qc62Xj6wAq2Po4W9ydPkUZ9gZ1solWEYYmhPCoBpyQ
 46MOY7JXPnb5J5K4ElcSHgBzGPCyEMM=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-384-Z-e2-uC9MTuKWPuwggILdw-1; Thu, 23 Jun 2022 17:20:12 -0400
X-MC-Unique: Z-e2-uC9MTuKWPuwggILdw-1
Received: by mail-qk1-f198.google.com with SMTP id
 ay8-20020a05620a178800b006a76e584761so464311qkb.13
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 23 Jun 2022 14:20:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=LPcKma9FiUb2lNhsbIUryGaTFK0aNkawo9tMXPLImok=;
 b=22IwQJxYP/c7CU6L55emzu5eHHtGvRONY85ip42T74i6q9WUKumrgjcYvVFFHyaTZW
 hxc692O+TTY4H9QJ4IZa6bzTSz+OpWpqla2mveRqmHBR4Y+EPja3c8cVxWdkvqSv2QFH
 1cNg7zvEvJg9SH7GcxuLHc/Cv0O+dYU8WgnWxjeyZ02l/kxXUFpV1TX8d2Bq8ntaLY20
 5UnTfkudJlFko/SiEPqPdJaQ6l7E6qvNYVPbZjDhgPgAUeGumvXkICtRjFoEW0bOOCjc
 9obHq1Mom0Lkt+M1GnIUYKFvfe8HRcE4bGAsi86XvQpnVL30r2+Ttq7rJ0ZFUEMKesMH
 p8Gw==
X-Gm-Message-State: AJIora+ejfbSRSDsUyTnQmaZCX1Wsxz63KO8s6mcceSBRWoIjhlj9CRF
 C0aRpdcyP8WKfHTu52ooGcET9B7a6y19T1uIhruiQ7KY5OEiCwYeIDix9D/4t0QunVMl0Rh2zIE
 eLhaSVdZkeKYL52IA+Su49GRIOU4gUvEUNzGXfe4LGMPTqrsg70efTZdR28QPmkpGK58hbiS1bi
 FJSIKAsLqIbA==
X-Received: by 2002:a37:66cf:0:b0:6ae:d805:349b with SMTP id
 a198-20020a3766cf000000b006aed805349bmr8389520qkc.347.1656019211584; 
 Thu, 23 Jun 2022 14:20:11 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1t3asAPsKOpKsShJ8JRgIN0iWIy7CVe2IIHHHCCDbv8+bsr6hKrD6UYiGUXv4lxjAMAhV4z3Q==
X-Received: by 2002:a37:66cf:0:b0:6ae:d805:349b with SMTP id
 a198-20020a3766cf000000b006aed805349bmr8389500qkc.347.1656019211219; 
 Thu, 23 Jun 2022 14:20:11 -0700 (PDT)
Received: from [10.0.0.96] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 bk10-20020a05620a1a0a00b006a6be577535sm405087qkb.85.2022.06.23.14.20.10
 for <tipc-discussion@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jun 2022 14:20:10 -0700 (PDT)
Message-ID: <50e1826f-f7e0-ba38-a040-3b134bb3977f@redhat.com>
Date: Thu, 23 Jun 2022 17:20:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
To: tipc-discussion@lists.sourceforge.net
References: <26087ae4e2a26e0995b8ae98dbe302960ed97bdd.1654529065.git.lucien.xin@gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <26087ae4e2a26e0995b8ae98dbe302960ed97bdd.1654529065.git.lucien.xin@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/6/22 11:24, Xin Long wrote: > Shuang Li reported a NULL
 pointer dereference crash: > > [] BUG: kernel NULL pointer dereference,
 address:
 0000000000000068 > [] RIP: 0010:tipc_link_is_up+0x5/0x10 [ [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o4UFQ-00BXv4-9y
Subject: Re: [tipc-discussion] [PATCH net] tipc: move bc link creation back
 to tipc_node_create
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



On 6/6/22 11:24, Xin Long wrote:
> Shuang Li reported a NULL pointer dereference crash:
>
>    [] BUG: kernel NULL pointer dereference, address: 0000000000000068
>    [] RIP: 0010:tipc_link_is_up+0x5/0x10 [tipc]
>    [] Call Trace:
>    []  <IRQ>
>    []  tipc_bcast_rcv+0xa2/0x190 [tipc]
>    []  tipc_node_bc_rcv+0x8b/0x200 [tipc]
>    []  tipc_rcv+0x3af/0x5b0 [tipc]
>    []  tipc_udp_recv+0xc7/0x1e0 [tipc]
>
> It was caused by the 'l' passed into tipc_bcast_rcv() is NULL. When it
> creates a node in tipc_node_check_dest(), after inserting the new node
> into hashtable in tipc_node_create(), it creates the bc link. However,
> there is a gap between this insert and bc link creation, a bc packet
> may come in and get the node from the hashtable then try to dereference
> its bc link, which is NULL.
>
> This patch is to fix it by moving the bc link creation before inserting
> into the hashtable.
>
> Note that for a preliminary node becoming "real", the bc link creation
> should also be called before it's rehashed, as we don't create it for
> preliminary nodes.
>
> Fixes: 4cbf8ac2fe5a ("tipc: enable creating a "preliminary" node")
> Reported-by: Shuang Li <shuali@redhat.com>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> ---
>   net/tipc/node.c | 41 ++++++++++++++++++++++-------------------
>   1 file changed, 22 insertions(+), 19 deletions(-)
>
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index 6ef95ce565bd..b48d97cbbe29 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -472,8 +472,8 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
>   				   bool preliminary)
>   {
>   	struct tipc_net *tn = net_generic(net, tipc_net_id);
> +	struct tipc_link *l, *snd_l = tipc_bc_sndlink(net);
>   	struct tipc_node *n, *temp_node;
> -	struct tipc_link *l;
>   	unsigned long intv;
>   	int bearer_id;
>   	int i;
> @@ -488,6 +488,16 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
>   			goto exit;
>   		/* A preliminary node becomes "real" now, refresh its data */
>   		tipc_node_write_lock(n);
> +		if (!tipc_link_bc_create(net, tipc_own_addr(net), addr, peer_id, U16_MAX,
> +					 tipc_link_min_win(snd_l), tipc_link_max_win(snd_l),
> +					 n->capabilities, &n->bc_entry.inputq1,
> +					 &n->bc_entry.namedq, snd_l, &n->bc_entry.link)) {
> +			pr_warn("Broadcast rcv link refresh failed, no memory\n");
> +			tipc_node_write_unlock_fast(n);
> +			tipc_node_put(n);
> +			n = NULL;
> +			goto exit;
> +		}
>   		n->preliminary = false;
>   		n->addr = addr;
>   		hlist_del_rcu(&n->hash);
> @@ -567,7 +577,16 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
>   	n->signature = INVALID_NODE_SIG;
>   	n->active_links[0] = INVALID_BEARER_ID;
>   	n->active_links[1] = INVALID_BEARER_ID;
> -	n->bc_entry.link = NULL;
> +	if (!preliminary &&
> +	    !tipc_link_bc_create(net, tipc_own_addr(net), addr, peer_id, U16_MAX,
> +				 tipc_link_min_win(snd_l), tipc_link_max_win(snd_l),
> +				 n->capabilities, &n->bc_entry.inputq1,
> +				 &n->bc_entry.namedq, snd_l, &n->bc_entry.link)) {
> +		pr_warn("Broadcast rcv link creation failed, no memory\n");
> +		kfree(n);
> +		n = NULL;
> +		goto exit;
> +	}
>   	tipc_node_get(n);
>   	timer_setup(&n->timer, tipc_node_timeout, 0);
>   	/* Start a slow timer anyway, crypto needs it */
> @@ -1155,7 +1174,7 @@ void tipc_node_check_dest(struct net *net, u32 addr,
>   			  bool *respond, bool *dupl_addr)
>   {
>   	struct tipc_node *n;
> -	struct tipc_link *l, *snd_l;
> +	struct tipc_link *l;
>   	struct tipc_link_entry *le;
>   	bool addr_match = false;
>   	bool sign_match = false;
> @@ -1175,22 +1194,6 @@ void tipc_node_check_dest(struct net *net, u32 addr,
>   		return;
>   
>   	tipc_node_write_lock(n);
> -	if (unlikely(!n->bc_entry.link)) {
> -		snd_l = tipc_bc_sndlink(net);
> -		if (!tipc_link_bc_create(net, tipc_own_addr(net),
> -					 addr, peer_id, U16_MAX,
> -					 tipc_link_min_win(snd_l),
> -					 tipc_link_max_win(snd_l),
> -					 n->capabilities,
> -					 &n->bc_entry.inputq1,
> -					 &n->bc_entry.namedq, snd_l,
> -					 &n->bc_entry.link)) {
> -			pr_warn("Broadcast rcv link creation failed, no mem\n");
> -			tipc_node_write_unlock_fast(n);
> -			tipc_node_put(n);
> -			return;
> -		}
> -	}
>   
>   	le = &n->links[b->identity];
>   
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
