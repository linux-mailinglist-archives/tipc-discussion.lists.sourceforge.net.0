Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6D7478332
	for <lists+tipc-discussion@lfdr.de>; Fri, 17 Dec 2021 03:33:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1my33Y-0004yT-GV; Fri, 17 Dec 2021 02:33:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jmaloy@redhat.com>) id 1my33W-0004yN-ML
 for tipc-discussion@lists.sourceforge.net; Fri, 17 Dec 2021 02:33:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U1AFAsuYtZ3LbNah9+J7Qkzora+sQOtUC21/eBeWPug=; b=NA/1CsU1lfq99TWUxcJAQ0luk2
 jdmGcy9yezzTy8x2FqV9p0V0I46Go4wvI5dy76XOTOMlAwxnzoe2fOhUJwcsBvHBODNHeXks9YvOh
 FsRpaa7MWyYBRD3Pf+NC5V8RbS4pstpe6zbesXlE7yDihoJnP9M+kGc8OY9T5TgG1M2U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U1AFAsuYtZ3LbNah9+J7Qkzora+sQOtUC21/eBeWPug=; b=M6QEhEv+RISUa2AIrg390bcd+6
 XNeoUzQ89OE2SmLluODgs5z7FtqwORX6Wp/GxldulqMyVSck7DKOu3wAKfk/S4KcoNa+TxzN/lvlh
 0e9BcTQDPQrRstqfgXH4q+MAJgz78STXpXKsplU+l1s7iP2pUR4QcznVWyoyHiaOcq+Y=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1my33T-0006uG-1t
 for tipc-discussion@lists.sourceforge.net; Fri, 17 Dec 2021 02:33:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639708381;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=U1AFAsuYtZ3LbNah9+J7Qkzora+sQOtUC21/eBeWPug=;
 b=NvCt+/6jM1LcjUAMvISH+gTaGUm7u8sDomye5m/ONhIoTFz0V3I+0oRkYasbTIRgy15Jb/
 ndVJ6yHFEWjDDGgURa5K228Q+GZl8EffIyGs1Gy3wCxajZ6UeWC1WJ300c6HWBsuMs3vy0
 HX/9MYRQHW54HIGGLRxGNquwHG2fqwE=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-479-0mz5MXS-Ox6PNY5PJjEOVA-1; Thu, 16 Dec 2021 21:32:59 -0500
X-MC-Unique: 0mz5MXS-Ox6PNY5PJjEOVA-1
Received: by mail-qv1-f69.google.com with SMTP id
 a7-20020a056214062700b00410c76282c3so1265265qvx.4
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 16 Dec 2021 18:32:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=U1AFAsuYtZ3LbNah9+J7Qkzora+sQOtUC21/eBeWPug=;
 b=Way/9VRrBEDPiXsXMoVKHgWfocF6400f6p3ONCfmf1atcTFcjc2V16Si51Tv5jIard
 hJAd9YunzglVjo3W0oDkZG1zLHAGDAXFNTkuoI8+sdIU0f0S3OS9oKOgiwx0AK/iXCNd
 +VZQJ5kypf84bR5NrnSafWgLJw9TuiEVYlqFrhIQhwZAnPHxWMIhgqHDsLmaOKv+Y0TH
 DDcDE2Mm1KZAZ4kzZa+mQMNz5/ft6K1loObCk5APBs9O6DATg1vc4NGyaAhgWZ0gH8JL
 i8jH8t3AeQdJyjnhVTICEzEWhXpReOM3mfOwNpo68KcRYrVPTZi0tTZ6jBfgsy97kXaT
 HlLQ==
X-Gm-Message-State: AOAM531ZtOLFQ2KRJ+2LkdfQhNtcBfgY9E9yOqWyaKVFMG3T/tQEYfO2
 /r8IyP3A3Q2josEm7U3+0Yf+qFtt2wptK5qD5X+M9pX/pJd2feioy3/e6R45h9sxs16ZhlIuYeu
 zh5BbPm5DlZxpr2+NwgHd3sZMH0DefRr4M2Gt
X-Received: by 2002:a37:b4b:: with SMTP id 72mr594483qkl.79.1639708379135;
 Thu, 16 Dec 2021 18:32:59 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw0Svxaib/eFE1qGApwPm4s0gNSYmdILcpg7EJqzSg1ugFXQ1moO7esHISPd2mN4BBkNxN97Q==
X-Received: by 2002:a37:b4b:: with SMTP id 72mr594478qkl.79.1639708378869;
 Thu, 16 Dec 2021 18:32:58 -0800 (PST)
Received: from [10.0.0.96] ([24.225.241.171])
 by smtp.gmail.com with ESMTPSA id u9sm6025993qta.17.2021.12.16.18.32.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Dec 2021 18:32:58 -0800 (PST)
Message-ID: <a6ef7eef-3837-3bc0-64fa-2917f662d1ca@redhat.com>
Date: Thu, 16 Dec 2021 21:36:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: Hoang Le <hoang.h.le@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net, maloy@donjonn.com,
 ying.xue@windriver.com, tung.q.nguyen@dektech.com.au
References: <20211210065946.7720-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <20211210065946.7720-1-hoang.h.le@dektech.com.au>
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
 Content preview:  On 12/10/21 01:59,
 Hoang Le wrote: > This reverts commit
 86c3a3e964d910a62eeb277d60b2a60ebefa9feb.
 > > The tipc_aead_init() function can be calling from an interrupt routine.
 > This allocation might s [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1my33T-0006uG-1t
Subject: Re: [tipc-discussion] [net-next] Revert "tipc: use consistent GFP
 flags"
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



On 12/10/21 01:59, Hoang Le wrote:
> This reverts commit 86c3a3e964d910a62eeb277d60b2a60ebefa9feb.
>
> The tipc_aead_init() function can be calling from an interrupt routine.
> This allocation might sleep with GFP_KERNEL flag, hence the following BUG
> is reported.
>
> [   17.657509] BUG: sleeping function called from invalid context at include/linux/sched/mm.h:230
> [   17.660916] in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 0, name: swapper/3
> [   17.664093] preempt_count: 302, expected: 0
> [   17.665619] RCU nest depth: 2, expected: 0
> [   17.667163] Preemption disabled at:
> [   17.667165] [<0000000000000000>] 0x0
> [   17.669753] CPU: 3 PID: 0 Comm: swapper/3 Kdump: loaded Tainted: G        W         5.16.0-rc4+ #1
> [   17.673006] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04/01/2014
> [   17.675540] Call Trace:
> [   17.676285]  <IRQ>
> [   17.676913]  dump_stack_lvl+0x34/0x44
> [   17.678033]  __might_resched.cold+0xd6/0x10f
> [   17.679311]  kmem_cache_alloc_trace+0x14d/0x220
> [   17.680663]  tipc_crypto_start+0x4a/0x2b0 [tipc]
> [   17.682146]  ? kmem_cache_alloc_trace+0xd3/0x220
> [   17.683545]  tipc_node_create+0x2f0/0x790 [tipc]
> [   17.684956]  tipc_node_check_dest+0x72/0x680 [tipc]
> [   17.686706]  ? ___cache_free+0x31/0x350
> [   17.688008]  ? skb_release_data+0x128/0x140
> [   17.689431]  tipc_disc_rcv+0x479/0x510 [tipc]
> [   17.690904]  tipc_rcv+0x71c/0x730 [tipc]
> [   17.692219]  ? __netif_receive_skb_core+0xb7/0xf60
> [   17.693856]  tipc_l2_rcv_msg+0x5e/0x90 [tipc]
> [   17.695333]  __netif_receive_skb_list_core+0x20b/0x260
> [   17.697072]  netif_receive_skb_list_internal+0x1bf/0x2e0
> [   17.698870]  ? dev_gro_receive+0x4c2/0x680
> [   17.700255]  napi_complete_done+0x6f/0x180
> [   17.701657]  virtnet_poll+0x29c/0x42e [virtio_net]
> [   17.703262]  __napi_poll+0x2c/0x170
> [   17.704429]  net_rx_action+0x22f/0x280
> [   17.705706]  __do_softirq+0xfd/0x30a
> [   17.706921]  common_interrupt+0xa4/0xc0
> [   17.708206]  </IRQ>
> [   17.708922]  <TASK>
> [   17.709651]  asm_common_interrupt+0x1e/0x40
> [   17.711078] RIP: 0010:default_idle+0x18/0x20
>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/crypto.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
> index 81116312b753..9325479295b8 100644
> --- a/net/tipc/crypto.c
> +++ b/net/tipc/crypto.c
> @@ -524,7 +524,7 @@ static int tipc_aead_init(struct tipc_aead **aead, struct tipc_aead_key *ukey,
>   		return -EEXIST;
>   
>   	/* Allocate a new AEAD */
> -	tmp = kzalloc(sizeof(*tmp), GFP_KERNEL);
> +	tmp = kzalloc(sizeof(*tmp), GFP_ATOMIC);
>   	if (unlikely(!tmp))
>   		return -ENOMEM;
>   
> @@ -1463,7 +1463,7 @@ int tipc_crypto_start(struct tipc_crypto **crypto, struct net *net,
>   		return -EEXIST;
>   
>   	/* Allocate crypto */
> -	c = kzalloc(sizeof(*c), GFP_KERNEL);
> +	c = kzalloc(sizeof(*c), GFP_ATOMIC);
>   	if (!c)
>   		return -ENOMEM;
>   
> @@ -1477,7 +1477,7 @@ int tipc_crypto_start(struct tipc_crypto **crypto, struct net *net,
>   	}
>   
>   	/* Allocate statistic structure */
> -	c->stats = alloc_percpu(struct tipc_crypto_stats);
> +	c->stats = alloc_percpu_gfp(struct tipc_crypto_stats, GFP_ATOMIC);
>   	if (!c->stats) {
>   		if (c->wq)
>   			destroy_workqueue(c->wq);
> @@ -2450,7 +2450,7 @@ static void tipc_crypto_work_tx(struct work_struct *work)
>   	}
>   
>   	/* Lets duplicate it first */
> -	skey = kmemdup(aead->key, tipc_aead_key_size(aead->key), GFP_KERNEL);
> +	skey = kmemdup(aead->key, tipc_aead_key_size(aead->key), GFP_ATOMIC);
>   	rcu_read_unlock();
>   
>   	/* Now, generate new key, initiate & distribute it */
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
