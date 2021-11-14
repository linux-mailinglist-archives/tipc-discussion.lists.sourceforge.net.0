Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3650144FA09
	for <lists+tipc-discussion@lfdr.de>; Sun, 14 Nov 2021 20:01:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mmKkF-00012v-6m; Sun, 14 Nov 2021 19:00:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jmaloy@redhat.com>) id 1mmKkD-00012k-Eu
 for tipc-discussion@lists.sourceforge.net; Sun, 14 Nov 2021 19:00:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N+MNquvfK2H8Vkfp6KnyJqrDvaIyLOJNMM4v5s4uHjE=; b=B6JX1wwyK5wEESi/nJy0VyMOG0
 CuVzFTJkPv2Ea2DfOypo2kRX9PB56R3FB6N2IxxI6NIJv1QaN811rhFF1hxfO5YE0cBfS6Zz+eIgC
 FP0q3dJCh4n7Lzjj8WHZPJqYcjwRT2dkpeZgAESDczI3SOCgCMYy0CPCo9JAk8qrDpOE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N+MNquvfK2H8Vkfp6KnyJqrDvaIyLOJNMM4v5s4uHjE=; b=aznX+LgRX3YWXvtbjIs/WdS1kh
 oPqbNUUS0pOeXDv3xX3r2pixiV3rILW6lon2epUv6USEsD4MfvZWWCbeLzjYmdnC+mTxIKv0uUE+u
 mubXzsg/Ya9L4fp8IbNeVi2xCN3VXrwOyDYUNYOvMEyIpYDJMx7VLmhaXHwXekSJ68gA=;
Received: from [216.205.24.124] (helo=us-smtp-delivery-124.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mmKk0-00CwqC-ID
 for tipc-discussion@lists.sourceforge.net; Sun, 14 Nov 2021 19:00:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636916406;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=N+MNquvfK2H8Vkfp6KnyJqrDvaIyLOJNMM4v5s4uHjE=;
 b=LZkkREIvvbHbkvGlwEXN27ZtWbx9VLV7FPwtNRPXoxlc2sGfLU/AprXSBpVM/qVuMwSpie
 N+oF2bgGQhcOhakbWXEXQsQKMjepPkoGuAhjjFPTR/WVgO2C0VXZDwjzuB4HC0yJiNS+oH
 vuE+JeN+Ip0Hd6WgoqCAVgSdtzioRB0=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-487-EvVKZGuKOOig9ygL3BGnvw-1; Sun, 14 Nov 2021 14:00:04 -0500
X-MC-Unique: EvVKZGuKOOig9ygL3BGnvw-1
Received: by mail-qk1-f200.google.com with SMTP id
 bq9-20020a05620a468900b004681cdb3483so4397018qkb.23
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 14 Nov 2021 11:00:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=N+MNquvfK2H8Vkfp6KnyJqrDvaIyLOJNMM4v5s4uHjE=;
 b=zG6oPncJCr58dbYcjzjt6zF+fR9qyFsb9rfuhD3VD+bfRPdJHUuodWX2lLlmzJgxyh
 hfTR6AUvM0OI671fKNG0MOSN7jDSOfdDEveGURWrPPwmTjP4duE+PwfuOos6XUJDkv2X
 xc4IDrN2LQr/2G5kNGoFJp2Y2zkfIC2/zqgEyWZ7a0d6HEfOS9zDgLJKoHhDP7XTKc3C
 v/g7O3KQUxDQrPjGOh2AmO2SZTffgUDWOjynyBJzG3uS2aJB+S5umLPG+HpqP27BYvzS
 lfP8z+zQ39nK8NRjbGGyhrAdB1dgi3FzC80oghaHETaAORkp/u26wzVDmqy/rsRiSEbL
 QE9g==
X-Gm-Message-State: AOAM5303yY1XMwtXUjuoxUN7fzk1sVOSJ/Xp9SeifhGA55rcz8UN4igu
 aZ6ls4AFDe7fqmsWXdPDXIJZt6i2fzZhxld25AoLbi4baYWp/68W3flcllQWd15xAf2vKQLXlGT
 W3hdK6T0+6oV6YncE5pXI2F7DbYkIivo9/VBn
X-Received: by 2002:ad4:5ce8:: with SMTP id iv8mr30996561qvb.21.1636916404199; 
 Sun, 14 Nov 2021 11:00:04 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxhIhrQNggY5MOdDoYmCPYpWVKBxH6UJ+M+PQpwOpNJfRNqQE4ypZRIjS1qu9iguOGryyYaQw==
X-Received: by 2002:ad4:5ce8:: with SMTP id iv8mr30996551qvb.21.1636916404048; 
 Sun, 14 Nov 2021 11:00:04 -0800 (PST)
Received: from [10.0.0.96] ([24.225.241.171])
 by smtp.gmail.com with ESMTPSA id e13sm700616qte.56.2021.11.14.11.00.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 14 Nov 2021 11:00:03 -0800 (PST)
Message-ID: <b86454a2-d0e7-e39f-9b40-6acd79a5f096@redhat.com>
Date: Sun, 14 Nov 2021 14:02:20 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
To: "Xue, Ying" <Ying.Xue@windriver.com>, Xin Long <lucien.xin@gmail.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <d34934d6dab6d6490c324c60eb9a06119302bde4.1636744961.git.lucien.xin@gmail.com>
 <BL3PR11MB5682A731BCC8C06CE37B512C84979@BL3PR11MB5682.namprd11.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <BL3PR11MB5682A731BCC8C06CE37B512C84979@BL3PR11MB5682.namprd11.prod.outlook.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: You should mention that is a supplementary fix to
 CVE-2021-43267, 
 improving the original fix in commit fa40d9734a57bcbfa79a280189799f76c88f7bb0
 ("tipc: fix size validations for the MSG_CRYPTO type") ///jon 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mmKk0-00CwqC-ID
Subject: Re: [tipc-discussion] [PATCH net] tipc: only accept encrypted
 MSG_CRYPTO msgs
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

You should mention that is a supplementary fix to CVE-2021-43267, 
improving the original fix in commit 
fa40d9734a57bcbfa79a280189799f76c88f7bb0 ("tipc: fix size validations 
for the MSG_CRYPTO type")

///jon




On 11/14/21 08:09, Xue, Ying wrote:
> Thanks Xin! The patch looks good to me.
>
> Acked-by: Ying Xue <ying.xue@windriver.com>
>
> -----Original Message-----
> From: Xin Long <lucien.xin@gmail.com>
> Sent: Saturday, November 13, 2021 3:23 AM
> To: tipc-discussion@lists.sourceforge.net
> Subject: [tipc-discussion] [PATCH net] tipc: only accept encrypted MSG_CRYPTO msgs
>
> The MSG_CRYPTO msgs are always encrypted and sent to other nodes for keys' deployment. But when receiving in peers, if those nodes do not validate it and make sure it's encrypted, one could craft a malicious MSG_CRYPTO msg to deploy its key with no need to know other nodes' keys.
>
> This patch is to do that by checking TIPC_SKB_CB(skb)->decrypted and discard it if this packet never got decrypted.
>
> Fixes: 1ef6f7c9390f ("tipc: add automatic session key exchange")
> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> ---
>   net/tipc/link.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/net/tipc/link.c b/net/tipc/link.c index 1b7a487c8841..09ae8448f394 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -1298,8 +1298,11 @@ static bool tipc_data_input(struct tipc_link *l, struct sk_buff *skb,
>   		return false;
>   #ifdef CONFIG_TIPC_CRYPTO
>   	case MSG_CRYPTO:
> -		tipc_crypto_msg_rcv(l->net, skb);
> -		return true;
> +		if (TIPC_SKB_CB(skb)->decrypted) {
> +			tipc_crypto_msg_rcv(l->net, skb);
> +			return true;
> +		}
> +		fallthrough;
>   #endif
>   	default:
>   		pr_warn("Dropping received illegal msg type\n");
> --
> 2.27.0
>
>
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
>
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
