Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF5E565832
	for <lists+tipc-discussion@lfdr.de>; Mon,  4 Jul 2022 16:03:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1o8Mfr-0006Hr-Ij; Mon, 04 Jul 2022 14:03:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jmaloy@redhat.com>) id 1o8Mfp-0006Hl-K0
 for tipc-discussion@lists.sourceforge.net; Mon, 04 Jul 2022 14:03:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZtaBQODHPPVn6REl9k6DTx3SbqX1zxC4sBAevPzx3v0=; b=PtLqNT9e8P+BtlA+zzDmzaYvrT
 8utpq8EuSX3fMp5S158sWRUTKGWvGgjI/4Q5qYkzKPqNXrfUe7K+TjGyssQKI01DnvObWzQ9t6dPZ
 sK/6XRKzANLEZyU9adJQ1DnrFtMbwwDym0Nfk1FFR1ch2f27S12jpe8TAjmwLD7vE8kk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZtaBQODHPPVn6REl9k6DTx3SbqX1zxC4sBAevPzx3v0=; b=cEmsmacHeCm5gsZnR3HgO5tRyg
 ePCXCwYa+1ofiD+E0jgOehlIoIhmObIFKzafjB/YFNqQxKefrYlIE1qk4YE8l/huV6ZX36cuHV6EP
 RO0xJ86yUspNRb2oL/RQoSZAsZiPkNVu7FrwwGzeRrZy5/z4g05OH4N9a2AAhcQTK5e8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o8Mfl-0007dx-7j
 for tipc-discussion@lists.sourceforge.net; Mon, 04 Jul 2022 14:03:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1656943406;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZtaBQODHPPVn6REl9k6DTx3SbqX1zxC4sBAevPzx3v0=;
 b=fFH1+IwgEZ3TPGNU+L4cXUwFoDlfl4R9sE6dsd3bOvm6pHWEHRzQtSMiHNm01S42aC0CQd
 y5WaifpGxtPJrfFZjJsGCXt+xBJ+sgfvWymeJ2AndearHc4em+e5E7enR0RLvVAXXcRbtP
 fho+tHuQ7wYBsLRqhCfA3Aytj7NnKfU=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-541-chd_NdJiM8qseB-WcBiOew-1; Mon, 04 Jul 2022 10:03:23 -0400
X-MC-Unique: chd_NdJiM8qseB-WcBiOew-1
Received: by mail-qt1-f197.google.com with SMTP id
 bc7-20020a05622a1cc700b0031e7e46e660so887616qtb.10
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 04 Jul 2022 07:03:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=ZtaBQODHPPVn6REl9k6DTx3SbqX1zxC4sBAevPzx3v0=;
 b=sjlVygoGQrHRQQlg6MjyPKzX+lt0ETWa9zR+yrkdat0072V3ZzjrlaEgn273z3gLMR
 jCe1k8SV7Lv1Lcm1jYUwOKdg/ExUyxRTLsEWczmD8nsmz994YvdUtZBIQ6p+2s5VtAQ4
 FQghiwMGgoU39qovqVuhzBqzJDS/mNBTN5rgAunzSqO9+oChbMs1kJUQvmyk71BCHG3m
 iOrP2yWooq59piKV9eyyvsxfjtdL7pRCpOsLQ1yyZBeFvO99U/ZsnQ3kBSeQv/uBHMfr
 Kbq2f2nCwDxNIaDrBZDQefwDCKMf3SBCf1qCH5sPQLgE40godCwejMv+Y/HeZMxkhC50
 dWpw==
X-Gm-Message-State: AJIora+3oNC11/z6CW1zU6abyWK5sM1Wx79cM793eW1bbpGZ2f3yVJWW
 gkFUfYt/LrvOgEFW7usXFFJSDezxuqyG7VnRNTAVGY1YF0bZGzX+MKMyQRdOwfMPDlLCwRrkGL1
 jTlO38bA6VBvn0vmJq4Mcw7XISVBrzyh1yFe6
X-Received: by 2002:a05:620a:854:b0:6af:306c:faff with SMTP id
 u20-20020a05620a085400b006af306cfaffmr19558443qku.641.1656943402527; 
 Mon, 04 Jul 2022 07:03:22 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1uQcQaf/QdU2bbuYDjTc7wwIrgdx0iCMl526MN+QPFNIQaG9+Pq+FP7Bs45+Tr8HApzVnCbrg==
X-Received: by 2002:a05:620a:854:b0:6af:306c:faff with SMTP id
 u20-20020a05620a085400b006af306cfaffmr19558409qku.641.1656943402211; 
 Mon, 04 Jul 2022 07:03:22 -0700 (PDT)
Received: from [10.0.0.96] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 bm14-20020a05620a198e00b006b2849cdd37sm4188998qkb.113.2022.07.04.07.03.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Jul 2022 07:03:21 -0700 (PDT)
Message-ID: <fc255ca5-0171-1bae-18a1-4feb6cbf4b3c@redhat.com>
Date: Mon, 4 Jul 2022 10:03:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
To: Hangyu Hua <hbh25y@gmail.com>, ying.xue@windriver.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com
References: <20220628025921.14767-1-hbh25y@gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <20220628025921.14767-1-hbh25y@gmail.com>
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
 Content preview:  On 6/27/22 22:59, Hangyu Hua wrote: > dom_bef is use to cache
 current domain record only if current domain > exists. But when current domain
 does not exist, dom_bef will still be used > in mon_identif [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
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
X-Headers-End: 1o8Mfl-0007dx-7j
Subject: Re: [tipc-discussion] [PATCH] net: tipc: fix possible infoleak in
 tipc_mon_rcv()
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



On 6/27/22 22:59, Hangyu Hua wrote:
> dom_bef is use to cache current domain record only if current domain
> exists. But when current domain does not exist, dom_bef will still be used
> in mon_identify_lost_members. This may lead to an information leak.
>
> Fix this by adding a memset before using dom_bef.
>
> Fixes: 35c55c9877f8 ("tipc: add neighbor monitoring framework")
> Signed-off-by: Hangyu Hua <hbh25y@gmail.com>
> ---
>   net/tipc/monitor.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/net/tipc/monitor.c b/net/tipc/monitor.c
> index 2f4d23238a7e..67084e5aa15c 100644
> --- a/net/tipc/monitor.c
> +++ b/net/tipc/monitor.c
> @@ -534,6 +534,7 @@ void tipc_mon_rcv(struct net *net, void *data, u16 dlen, u32 addr,
>   	state->peer_gen = new_gen;
>   
>   	/* Cache current domain record for later use */
> +	memset(&dom_bef, 0, sizeof(dom_bef));
>   	dom_bef.member_cnt = 0;
>   	dom = peer->domain;
>   	if (dom)
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
