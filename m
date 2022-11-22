Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 31209633193
	for <lists+tipc-discussion@lfdr.de>; Tue, 22 Nov 2022 01:48:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1oxHSl-0001EI-31;
	Tue, 22 Nov 2022 00:48:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1oxHSi-0001EC-TM
 for tipc-discussion@lists.sourceforge.net;
 Tue, 22 Nov 2022 00:48:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N1lAtUfxSqu18fCCviIv82tE3o1gDbqJA8/vG7g+Iw4=; b=itUY39wz1ZgoVCSir37j8c+AZw
 ZrWL1VbVLzM42ogk5EoQ3dAyisT31hRxKF3aN55sg8UdNF9QIi5gV9/nRlUg0rURsjlb0debsWos6
 2Wn23IidF7iE3RAXUP0CFctBjn9RHl5z2sLeXWvZ29fN0HuqNyexSPOEALfnoEmqzA6g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N1lAtUfxSqu18fCCviIv82tE3o1gDbqJA8/vG7g+Iw4=; b=K5Y/bOEO/nuFcHm+g1FnC0bJW1
 jxeyA/XfvFxQQngAjUKUKzp4+PcHLUKIjpbDSwRCziHxanf4V1gRAD44d9THZUpjqgzUdF69GpAXF
 6/Ah3+2RTxmtxqAzCf+cJ+Bs23ARPhYbQkuK6JFnr2PfczfZSCs+BJTEGzDDTgslKloI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxHSd-009pLZ-Mf for tipc-discussion@lists.sourceforge.net;
 Tue, 22 Nov 2022 00:48:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1669078101;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=N1lAtUfxSqu18fCCviIv82tE3o1gDbqJA8/vG7g+Iw4=;
 b=WP0ljl9/51M7509U4+EZOG4TW3MvWobcHGkY50a7RCVUXdWg2JqbxbgE2hZdHPeHYejsCS
 f2+yz2MDaTyDtRTGVpl/NPn8ODmcOdoikkoluwWAJ8WfNTdm6R6m5wP4e0gEhJGOUd6RGV
 /Psp+9KC7m09XuDRk1BVJezCGFAgjPM=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-397-6aknMIQnPZuPyGcxqUpP6w-1; Mon, 21 Nov 2022 19:48:20 -0500
X-MC-Unique: 6aknMIQnPZuPyGcxqUpP6w-1
Received: by mail-qk1-f199.google.com with SMTP id
 bi42-20020a05620a31aa00b006faaa1664b9so17230795qkb.8
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 21 Nov 2022 16:48:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=N1lAtUfxSqu18fCCviIv82tE3o1gDbqJA8/vG7g+Iw4=;
 b=Oafw5iUCh8b+3P8v6WzQi2k58kz3PeJ3K4FA3Jp9FomDxFBiLydY89U8phSg0lpW76
 PyyM0BLkRhhyqTcfNWy+lRnQ0Bxb2Vxhg0qT2B7sKRKTYZc86kgu6/DeP4fko/p02dH5
 ja1yr0wV8sLgzgnTp9f3OojfFCH51k2lCt2rlGtD/A3eBO5sBynQMksafo428WwZDbfK
 aM/tWM+j60PofEZiLRIl2rNRNKLtq3RzgkOTygut+gNQv5MBlu3a02+dfazQ7WZXBvOi
 6pTbIoIAAiuelUWaAND9cd5yWBXel8AfCYeRzSpWMAgmacFMsN6EALPFSxCxprE8vqcw
 XZmA==
X-Gm-Message-State: ANoB5pkVfmncGZTzMF1qppjGX5jEgfhnxNUUUeLbqACHixtqulNpsGVz
 O++axdrlQnuYvYPCq2kpryVrv9+3aqajlO+FMlq74X04RrvcvB9+SLE8gNyBE9zWTr7B1yTE52+
 MqnFjd3OB29rIr9BYPXC3TIehQHXLuhUH2b9l
X-Received: by 2002:a05:620a:8086:b0:6fa:7b74:1cc1 with SMTP id
 ef6-20020a05620a808600b006fa7b741cc1mr3318048qkb.144.1669078099765; 
 Mon, 21 Nov 2022 16:48:19 -0800 (PST)
X-Google-Smtp-Source: AA0mqf6qV3cnbP4oy61ujmZe64y9rbsAHEhhDhutJO9GEtcu+pUoCPG21F4vHc1eu9t0SH3F6onHJA==
X-Received: by 2002:a05:620a:8086:b0:6fa:7b74:1cc1 with SMTP id
 ef6-20020a05620a808600b006fa7b741cc1mr3318008qkb.144.1669078099482; 
 Mon, 21 Nov 2022 16:48:19 -0800 (PST)
Received: from [10.0.0.96] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 t18-20020a05620a451200b006fafc111b12sm9466619qkp.83.2022.11.21.16.48.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Nov 2022 16:48:19 -0800 (PST)
Message-ID: <9c813d3e-96f9-218b-94a7-a5e47615d617@redhat.com>
Date: Mon, 21 Nov 2022 19:48:18 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
To: YueHaibing <yuehaibing@huawei.com>, ying.xue@windriver.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com
References: <20221119072832.7896-1-yuehaibing@huawei.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <20221119072832.7896-1-yuehaibing@huawei.com>
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
 Content preview:  On 11/19/22 02:28, YueHaibing wrote: > If skb_linearize()
 fails in tipc_disc_rcv(), we need to free the skb instead of > handle it.
 > > Fixes: 25b0b9c4e835 ("tipc: handle collisions of 32-bit node add [...]
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oxHSd-009pLZ-Mf
Subject: Re: [tipc-discussion] [PATCH net] tipc: check skb_linearize()
 return value in tipc_disc_rcv()
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
Cc: netdev@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 11/19/22 02:28, YueHaibing wrote:
> If skb_linearize() fails in tipc_disc_rcv(), we need to free the skb instead of
> handle it.
>
> Fixes: 25b0b9c4e835 ("tipc: handle collisions of 32-bit node address hash values")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>   net/tipc/discover.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/net/tipc/discover.c b/net/tipc/discover.c
> index e8630707901e..e8dcdf267c0c 100644
> --- a/net/tipc/discover.c
> +++ b/net/tipc/discover.c
> @@ -211,7 +211,10 @@ void tipc_disc_rcv(struct net *net, struct sk_buff *skb,
>   	u32 self;
>   	int err;
>   
> -	skb_linearize(skb);
> +	if (skb_linearize(skb)) {
> +		kfree_skb(skb);
> +		return;
> +	}
>   	hdr = buf_msg(skb);
>   
>   	if (caps & TIPC_NODE_ID128)
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
